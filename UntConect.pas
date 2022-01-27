unit UntConect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dllcompanytec, StdCtrls, Buttons, ComCtrls, ExtCtrls, Spin;

type
  TFrmConeccao = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button3: TButton;
    Panel1: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button4: TButton;
    Panel9: TPanel;
    RadioButton9: TRadioButton;
    Button23: TButton;
    TabSheet14: TTabSheet;
    Label38: TLabel;
    Edit23: TEdit;
    Button30: TButton;
    Button31: TButton;
    Panel8: TPanel;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button32: TButton;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    BitBtn1: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConeccao: TFrmConeccao;

implementation

uses UntPrincipal;

{$R *.dfm}

procedure TFrmConeccao.Button2Click(Sender: TObject);
begin
  if FechaSerial<>0 then Radiobutton3.Checked:=true else Radiobutton3.Checked:=false;
  RadioButton4.Checked:=not RadioButton3.Checked;
  Button1.Enabled:=not RadioButton3.Checked;
  Button3.Enabled:=not Button1.Enabled;
  Shape4.Brush.Color:= clRed;
end;

procedure TFrmConeccao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmConeccao.Button30Click(Sender: TObject);
begin
   If InicializaSocket(Edit23.text) then
//   inicializasocket('172.16.10.94');
//     FechaSocket;
  begin
    radiobutton6.Checked:=true;
    RadioButton7.Checked:=False;
    Shape3.Brush.Color:=clGreen;
    FrmPrincipal.Shape1.Brush.Color := clGreen;
    FrmPrincipal.Panel3.Caption:='Automação Online';
//    button30.Enabled:=false;
//    button31.Enabled:=true;
//    close;
  end
end;

procedure TFrmConeccao.Button31Click(Sender: TObject);
begin
  if FechaSocket then
  begin
    RadioButton6.Checked:=false;
    radiobutton7.Checked:=true;
    Shape3.Brush.Color:=clRed;
    FrmPrincipal.Shape1.Brush.Color := clred;
    FrmPrincipal.Panel3.Caption:='Automação Off-line';
//    button31.Enabled:=false;
//    button30.Enabled:=true;
//    close
  end;
end;

procedure TFrmConeccao.Button32Click(Sender: TObject);
begin
  RadioButton6.Checked:=SocketOpen;
  RadioButton7.Checked:=not RadioButton6.Checked;
  Button30.Enabled:=not RadioButton6.Checked;
  Button31.Enabled:=not Button30.Enabled;
end;

procedure TFrmConeccao.Button1Click(Sender: TObject);
begin
  Radiobutton3.Checked:=InicializaSerial(spinedit1.Value);
  RadioButton4.Checked:=not RadioButton3.Checked;
  Button1.Enabled:=not RadioButton3.Checked;
  Button3.Enabled:=not Button1.Enabled;
  Shape4.Brush.Color:= clLime;
end;

procedure TFrmConeccao.Button4Click(Sender: TObject);
begin
  RadioButton3.Checked:=PortOpen;
  RadioButton4.Checked:=not RadioButton3.Checked;
  Button1.Enabled:=not RadioButton3.Checked;
  Button3.Enabled:=not Button1.Enabled;
end;

procedure TFrmConeccao.Button23Click(Sender: TObject);
begin
  RadioButton9.Checked:=Comunica;
end;

procedure TFrmConeccao.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmConeccao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key=chr(27) then close;

end;

end.
