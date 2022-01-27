unit UnitMAbast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,
  jpeg, Mask;

type
  TFrmMAbast = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    MaskEdit1: TMaskEdit;
    BitBtn5: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    prod: string;
    { Public declarations }
  end;

var
  FrmMAbast: TFrmMAbast;

implementation

uses dm, Math;

{$R *.dfm}

procedure TFrmMAbast.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key=chr(27) then close;
end;

procedure TFrmMAbast.Button1Click(Sender: TObject);
begin
  DateTimePicker1.SetFocus;
end;

procedure TFrmMAbast.Button2Click(Sender: TObject);
begin
  DateTimePicker2.SetFocus
end;

procedure TFrmMAbast.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key=chr(13) then begin
    DMdados.ADOQAbastecimentos.Close;
    DMdados.ADOQAbastecimentos.SQL.Clear;
    DMdados.ADOQAbastecimentos.SQL.Add('SELECT * FROM ABASTECIMENTOS');
    DMdados.ADOQAbastecimentos.SQL.Add(' WHERE VEICULO = ' + QuotedStr('%'+MaskEdit1.Text+'%'));
    DMdados.ADOQAbastecimentos.SQL.Add(' AND DATA = ' + QuotedStr('%'+DateToStr(DateTimePicker1.DateTime)+'%'));
    DMdados.ADOQAbastecimentos.ExecSQL;
    DMdados.ADOQAbastecimentos.Active := True;
 end;
end;

procedure TFrmMAbast.RadioGroup1Click(Sender: TObject);
begin
    If RadioGroup1.ItemIndex = 0 then begin
       MaskEdit1.Clear;
       MaskEdit1.SetFocus
    end
    else If RadioGroup1.ItemIndex = 1 then begin
      MaskEdit1.Clear;
      MaskEdit1.Text := '999999';
      RadioGroup2.SetFocus;
    end;
end;

procedure TFrmMAbast.RadioGroup2Click(Sender: TObject);
begin
    DateTimePicker1.SetFocus;
    If RadioGroup2.ItemIndex = 0 then
       prod := '620044'
    else If RadioGroup2.ItemIndex = 1 then
       prod := '540001'
    else If RadioGroup2.ItemIndex = 2 then
       prod := '530001'
    else If RadioGroup2.ItemIndex = 3 then
       prod := '540002'
    else If RadioGroup2.ItemIndex = 1 then
       prod := '999999';
end;

procedure TFrmMAbast.BitBtn4Click(Sender: TObject);
begin
  If (MaskEdit1.Text = '999999') and (prod = '999999') then begin
    DMdados.ADOQAbastecimentos.Close;
    DMdados.ADOQAbastecimentos.SQL.Clear;
    DMdados.ADOQAbastecimentos.SQL.Add('SELECT * FROM ABASTECIMENTOS');
    DMdados.ADOQAbastecimentos.SQL.Add(' WHERE VEICULO < ' + QuotedStr('%'+MaskEdit1.Text+'%'));
//    DMdados.ADOQAbastecimentos.SQL.Add(' AND CODPRO < ' + QuotedStr('%'+prod+'%'));
//    DMdados.ADOQAbastecimentos.SQL.Add(' AND DATA = ' + QuotedStr('%'+DateToStr(DateTimePicker1.DateTime)+'%'));
    DMdados.ADOQAbastecimentos.ExecSQL;
    DMdados.ADOQAbastecimentos.Active := True;
  end
  else If (MaskEdit1.Text <> '999999') and (prod = '999999') then begin
    DMdados.ADOQAbastecimentos.Close;
    DMdados.ADOQAbastecimentos.SQL.Clear;
    DMdados.ADOQAbastecimentos.SQL.Add('SELECT * FROM ABASTECIMENTOS');
    DMdados.ADOQAbastecimentos.SQL.Add(' WHERE VEICULO = ' + QuotedStr('%'+MaskEdit1.Text+'%'));
//    DMdados.ADOQAbastecimentos.SQL.Add(' AND CODPRO < ' + QuotedStr('%'+prod+'%'));
//    DMdados.ADOQAbastecimentos.SQL.Add(' AND DATA = ' + QuotedStr('%'+DateToStr(DateTimePicker1.DateTime)+'%'));
    DMdados.ADOQAbastecimentos.ExecSQL;
    DMdados.ADOQAbastecimentos.Active := True;
  end


end;

procedure TFrmMAbast.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmMAbast.BitBtn5Click(Sender: TObject);
begin
   DMdados.ADOQAbastecimentos.Close;
   DMdados.ADOQAbastecimentos.SQL.Clear;
   DMdados.ADOQAbastecimentos.SQL.Add('SELECT * FROM ABASTECIMENTOS AB ORDER BY AB.ID');
   DMdados.ADOQAbastecimentos.ExecSQL;
   DMdados.ADOQAbastecimentos.Active := True;
   prod := '';
end;

procedure TFrmMAbast.BitBtn3Click(Sender: TObject);
begin
  If (RadioGroup1.ItemIndex = 1) and (RadioGroup1.ItemIndex = 4) then
    ShowMessage('TODOS OS VEICULOS E TODOS OS PRODUTOS')
  ELSE If (MaskEdit1.Text <> '999999') and (prod = '999999') then
    ShowMessage('VEICULOS ESPECIFICO E TODOS OS PRODUTOS')
  ELSE If (MaskEdit1.Text <> '999999') and (prod <> '999999') then
    ShowMessage('VEICULOS ESPECIFICO E PRODUTOS ESPECIFICO')




end;

end.
