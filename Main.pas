unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TfrmMain = class(TForm)
    mnMenu: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes: TMenuItem;
    Label1: TLabel;
    procedure ClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses unCliente;

{$R *.dfm}

procedure TfrmMain.ClientesClick(Sender: TObject);
begin
     Application.CreateForm(TFrmCliente, frmCliente);
     frmCliente.Show;
end;

end.
