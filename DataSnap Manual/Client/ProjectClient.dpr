program ProjectClient;

uses
  Vcl.Forms,
  UClient in 'UClient.pas' {frmClient},
  UDataSnapClientClasses in 'UDataSnapClientClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClient, frmClient);
  Application.Run;
end.
