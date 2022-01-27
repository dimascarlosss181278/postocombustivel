unit UnitParaG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmParaG = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParaG: TFrmParaG;

implementation

uses UntPrincipal;

{$R *.dfm}

procedure TFrmParaG.BitBtn1Click(Sender: TObject);
begin
  If RadioGroup1.ItemIndex = 0 then begin
    FrmPrincipal.libera := 'S';
    ShowMessage('Abastecimentos de veículos com medidores quebrados' + #13 +
    'LIBERADO com sucesso')
  end
  else If RadioGroup1.ItemIndex = 0 then begin
    FrmPrincipal.libera:= 'N';
    ShowMessage('Abastecimentos de veículos com medidores quebrados' + #13 +
    'BLOQUEADO com sucesso')
  end;
end;

procedure TFrmParaG.BitBtn2Click(Sender: TObject);
begin
   close
end;

end.
