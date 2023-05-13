unit UServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IPPeerServer,
  Datasnap.DSCommonServer, Datasnap.DSTCPServerTransport, Datasnap.DSServer;

type
  TFrmServer = class(TForm)
    lblServidor: TLabel;
    DSServer1: TDSServer;
    DSServerClass1: TDSServerClass;
    DSTCPServerTransport1: TDSTCPServerTransport;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmServer: TFrmServer;

implementation

{$R *.dfm}

uses UClasseServidor;

procedure TFrmServer.DSServerClass1GetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
 // informa que odsctp transport tem acesso ao dss que tem acesso ao dssserver
  PersistentClass := TUClasseServidor;
end;

end.
