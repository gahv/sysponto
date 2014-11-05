program SysPonto;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SysPonto';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
