unit UntPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dllcompanytec, Buttons, ExtCtrls, Menus, jpeg, StdCtrls, Spin;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    AlterarPreo1: TMenuItem;
    AjustarHora1: TMenuItem;
    Sair1: TMenuItem;
    Configurao1: TMenuItem;
    Coneco1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image4: TImage;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Image5: TImage;
    SpeedButton5: TSpeedButton;
    ParametrosBanco1: TMenuItem;
    SpeedButton8: TSpeedButton;
    Shape1: TShape;
    Panel3: TPanel;
    N1: TMenuItem;
    Funcionrios1: TMenuItem;
    PopupMenu3: TPopupMenu;
    ExibirInformaesdobico1: TMenuItem;
    ExibirInformaesbombaEtanol2: TMenuItem;
    ExibirInformaesbombaGasolina2: TMenuItem;
    ExibirInformaesbombaDieselS101: TMenuItem;
    Manutencao1: TMenuItem;
    Abastecimentos1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure DisplayHint(Sender: TObject);    
    procedure Sair1Click(Sender: TObject);
    procedure Coneco1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ParametrosBanco1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Exibirbico1Click(Sender: TObject);
    procedure ExibirInformaesdobico1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExibirInformaesbombaEtanol2Click(Sender: TObject);
    procedure ExibirInformaesbombaGasolina2Click(Sender: TObject);
    procedure AlterarPreo1Click(Sender: TObject);
    procedure Abastecimentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
     { Public declarations }
     tela: Integer;
     Libera: string;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Lib : string;

implementation

uses UnitAbastece, UntConect, UntRestr, UnitParam, UnitParaG, UnitMAbast;

{$R *.dfm}

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  FrmAbastece.Show;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.Coneco1Click(Sender: TObject);
begin
  FrmConeccao.Show;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Application.OnHint:= DisplayHint;
  Panel1.Caption:=FormatDateTime('"Nossa Senhora das Dores-SE, " dddd d "de" mmmm "de" yyyy "   " hh:mm:ss AM/PM', now);
//  InicializaSocket('172.16.10.94');
  {If inicializasocket('172.16.10.94') then begin
    FrmConeccao.radiobutton6.Checked:=true;
    FrmConeccao.RadioButton7.Checked:=False;
    FrmConeccao.Shape3.Brush.Color:=clGreen;
    end;}
//    FrmPrincipal.Shape1.Brush.Color := clGreen;
//    FrmPrincipal.Panel3.Caption:='Automação Online';

// Parametro para liberacao de abastecimento de veiculos com odometro/horimetro
// quebrado, onde:
// S - Liberado abastecimento de veiculo com odometro/horimetro quebrado
// N - Não liberado abastecimento de veiculo com odometro/horimetro quebrado
   Libera:= 'N';
end;

procedure TFrmPrincipal.DisplayHint(Sender: TObject);
begin
   Panel2.Caption := Application.Hint;
end;

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=chr(vk_escape) then begin
    CLOSE
  end;
end;

procedure TFrmPrincipal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   If not( key in['0'..'9',#08] ) then key:=#0;
end;

procedure TFrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
  FrmRestr.ShowModal
end;

procedure TFrmPrincipal.ParametrosBanco1Click(Sender: TObject);
begin
   FrmParaG.ShowModal
end;

procedure TFrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
  FrmConeccao.Show;
end;

procedure TFrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
  close
end;

procedure TFrmPrincipal.Exibirbico1Click(Sender: TObject);
begin
  showmessage('a bomba S50 possui o bico N.05');
end;

procedure TFrmPrincipal.ExibirInformaesdobico1Click(Sender: TObject);
begin
  showmessage('a bomba S50 possui o bico N.04');
end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    FechaSocket;
    Shape1.Brush.Color := clred;
    Panel3.Caption:='Automação Off-line';
  except
    FechaSocket;
    Shape1.Brush.Color := clred;
    Panel3.Caption:='Automação Off-line';
    close;
  end;  
end;

procedure TFrmPrincipal.ExibirInformaesbombaEtanol2Click(Sender: TObject);
begin
  showmessage('a bomba S50 possui o bico N.08');
end;

procedure TFrmPrincipal.ExibirInformaesbombaGasolina2Click(
  Sender: TObject);
begin
  showmessage('a bomba S50 possui o bico N.09');
end;

procedure TFrmPrincipal.AlterarPreo1Click(Sender: TObject);
begin
    FrmAbastece.Show;
end;

procedure TFrmPrincipal.Abastecimentos1Click(Sender: TObject);
begin
  FrmMAbast.ShowModal;
end;

end.
