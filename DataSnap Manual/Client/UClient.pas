unit UClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Vcl.StdCtrls;

type
  TfrmClient = class(TForm)
    lblServidor: TLabel;
    SQLConnection1: TSQLConnection;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    Label3: TLabel;
    lblResultadoInvertido: TLabel;
    btnExecutar: TButton;
    btnExecutaInvertido: TButton;

  private
    { Private declarations }
    procedure btnExecutarClick(Sender: TObject);
    procedure btnExecutarInvertidoClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.dfm}




uses UDataSnapClientClasses;





procedure TfrmClient.btnExecutarClick(Sender: TObject);
var ConectaServidor: TUClasseServidorClient;
begin
  ConectaServidor := TUClasseServidorClient.Create(SQLConnection1.DBXConnection);
  try
    lblResultado.Caption:= ConectaServidor.MostrarTexto(Edit1.Text);
  finally
    ConectaServidor.Free;
  end;
end;




procedure TfrmClient.btnExecutarInvertidoClick(Sender: TObject);
var ConectaServidor: TUClasseServidorClient;
begin
  ConectaServidor := TUClasseServidorClient.Create(SQLConnection1.DBXConnection);
  try
    lblResultado.Caption:= ConectaServidor.MostrarTextoContrario(Edit1.Text);
  finally
    ConectaServidor.Free;
  end;
end;

end.
