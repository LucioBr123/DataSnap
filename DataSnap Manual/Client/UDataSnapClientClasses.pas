//
// Created by the DataSnap proxy generator.
// 14/05/2023 21:27:16
//

unit UDataSnapClientClasses;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TUClasseServidorClient = class(TDSAdminClient)
  private
    FMostrarTextoCommand: TDBXCommand;
    FMostrarTextoContrarioCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function MostrarTexto(Texto: string): string;
    function MostrarTextoContrario(Texto: string): string;
  end;

implementation

function TUClasseServidorClient.MostrarTexto(Texto: string): string;
begin
  if FMostrarTextoCommand = nil then
  begin
    FMostrarTextoCommand := FDBXConnection.CreateCommand;
    FMostrarTextoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMostrarTextoCommand.Text := 'TUClasseServidor.MostrarTexto';
    FMostrarTextoCommand.Prepare;
  end;
  FMostrarTextoCommand.Parameters[0].Value.SetWideString(Texto);
  FMostrarTextoCommand.ExecuteUpdate;
  Result := FMostrarTextoCommand.Parameters[1].Value.GetWideString;
end;

function TUClasseServidorClient.MostrarTextoContrario(Texto: string): string;
begin
  if FMostrarTextoContrarioCommand = nil then
  begin
    FMostrarTextoContrarioCommand := FDBXConnection.CreateCommand;
    FMostrarTextoContrarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMostrarTextoContrarioCommand.Text := 'TUClasseServidor.MostrarTextoContrario';
    FMostrarTextoContrarioCommand.Prepare;
  end;
  FMostrarTextoContrarioCommand.Parameters[0].Value.SetWideString(Texto);
  FMostrarTextoContrarioCommand.ExecuteUpdate;
  Result := FMostrarTextoContrarioCommand.Parameters[1].Value.GetWideString;
end;

constructor TUClasseServidorClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TUClasseServidorClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TUClasseServidorClient.Destroy;
begin
  FMostrarTextoCommand.DisposeOf;
  FMostrarTextoContrarioCommand.DisposeOf;
  inherited;
end;

end.

