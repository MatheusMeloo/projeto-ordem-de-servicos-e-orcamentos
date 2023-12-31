unit unit_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  Tform_login = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    btn_fechar: TSpeedButton;
    pnl_bemvindo: TPanel;
    Panel3: TPanel;
    pnl_campos: TPanel;
    lbl_bemvindo: TLabel;
    lbl_texto: TLabel;
    lbl_versao: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lbl_autor: TLabel;
    pnl_login: TPanel;
    edt_login: TEdit;
    Label3: TLabel;
    pnl_senha: TPanel;
    edt_senha: TEdit;
    Label4: TLabel;
    btn_entrar: TPanel;
    procedure btn_fecharClick(Sender: TObject);

    procedure btn_entrarMouseEnter(Sender: TObject);
    procedure btn_entrarMouseLeave(Sender: TObject);
    procedure btn_entrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

procedure Tform_login.btn_fecharClick(Sender: TObject);
begin
  //Fecha o form login e encerra a aplica��o
  form_login.Close;

  Application.Terminate;
end;

procedure Tform_login.btn_entrarClick(Sender: TObject);
begin
  //fecha form login e a aplica��o abrira o principal
  form_login.Close;
end;

procedure Tform_login.btn_entrarMouseEnter(Sender: TObject);
begin
  btn_entrar.Color  := clNavy;
  btn_entrar.font.Style := [fsBold];
  btn_entrar.font.Size := 11;
end;

procedure Tform_login.btn_entrarMouseLeave(Sender: TObject);
begin
  btn_entrar.Color  := $00FF8000;
  btn_entrar.font.Style := [];
  btn_entrar.font.Size := 10;
end;

end.
