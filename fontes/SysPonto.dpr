program SysPonto;

uses
  Forms,
  Principal in 'Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SysPonto';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
