unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    mniArquivo: TMenuItem;
    mniNovo: TMenuItem;
    N1: TMenuItem;
    mniSair: TMenuItem;
    mniFuncionario: TMenuItem;
    mniPonto: TMenuItem;
    mniFeriado: TMenuItem;
    mniFerramentas: TMenuItem;
    mniConfig: TMenuItem;
    mniJanela: TMenuItem;
    mniCascata: TMenuItem;
    mniHorizontal: TMenuItem;
    mniVertical: TMenuItem;
    mniAjuda: TMenuItem;
    mniSobre: TMenuItem;
    imgLista: TImageList;
    status: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.

