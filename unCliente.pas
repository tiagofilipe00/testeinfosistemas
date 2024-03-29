unit unCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, DBClient,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdMessageClient, IdSMTP, IdMessage;

type
  TfrmCliente = class(TForm)
    cdsCliente: TClientDataSet;
    cdsClienteNome: TStringField;
    cdsClienteIdentidade: TStringField;
    cdsClienteCPF: TStringField;
    cdsClienteTelefone: TStringField;
    cdsClienteemail: TStringField;
    cdsClientecep: TStringField;
    cdsClientelogradouro: TStringField;
    cdsClienteNumero: TIntegerField;
    cdsClienteComplemento: TStringField;
    cdsClientebairro: TStringField;
    cdsClientecidade: TStringField;
    cdsClienteestado: TStringField;
    cdsClientepais: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsCliente: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBNavigator: TDBNavigator;
    IdHTTP1: TIdHTTP;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit6Exit(Sender: TObject);
    procedure dsClienteUpdateData(Sender: TObject);
  private
    { Private declarations }
    procedure enviaEmail;
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCliente.DBEdit6Exit(Sender: TObject);
var lstEndereco: TStringList;
begin
    if  DBEdit6.text <> '' then
    begin

       lstEndereco := TStringList.Create;

       lstEndereco.text := stringreplace(idhttp1.URL.URLDecode(idhttp1.Get('https://viacep.com.br/WS/'+DBEdit6.text+'/json/')),'&',#13#10,[rfreplaceAll]);

       DBEdit7.text := lstEndereco.Values['LOGRADOURO'];
       DBEdit8.text := ''; //numero
       DBEdit9.text := lstEndereco.Values['COMPLEMENTO'];
       DBEdit10.text := lstEndereco.Values['BAIRRO'];
       DBEdit11.text := lstEndereco.Values['LOCALIDADE'];
       DBEdit12.text := lstEndereco.Values['UF'];
       DBEdit13.text := '';//pais
    end;
end;

procedure TfrmCliente.dsClienteUpdateData(Sender: TObject);
begin
   cdsCliente.SaveToFile('c:\temp\Cds_Temp.xml');
   enviaEmail;

end;

procedure TfrmCliente.enviaEmail;
var
  Message : TIdMessage;
  xAnexo : Integer;
  NomeArq : string;
  CaminhoAssinatura : string;
  Anexo : TIdAttachment;
  arq: TextFile; { declarando a vari�vel "arq" do tipo arquivo texto }
begin
try

   IdSMTP.Connect (60000);

   Screen.Cursor:=crHourGlass;

   IdMessage.From.Address := 'teste@teste.com.br';
   IdMessage.From.Name := 'Teste';

   IdMessage.Recipients.EMailAddresses := 'teste@teste.com.br' ;

   IdMessage.Subject := 'cadastro cliente';

   TIdAttachment.Create(IdMessage.MessageParts, TFileName('c:\temp\Cds_Temp.xml'));

   IdSMTP.Send (IdMessage);

   Application.MessageBox('E-mail enviado com Sucesso', 'Aviso', MB_OK);

except
    on e:exception do
    begin
    ShowMessage(e.message);
    end;
end;

IdSMTP.Disconnect();

end;

end.
