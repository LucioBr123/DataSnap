program ProjectServidor;

uses
  Vcl.Forms,
  UServidor in 'UServidor.pas' {FrmServer},
  UClasseServidor in 'UClasseServidor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServer, FrmServer);
  Application.Run;
end.
