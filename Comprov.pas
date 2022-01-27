unit Comprov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, jpeg, ComCtrls, StdCtrls, DBCtrls,
  Grids, DBGrids, Buttons, Menus;

type
  TComprovAb = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    DateTimePicker2: TDateTimePicker;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Selecionar1: TMenuItem;
    N1: TMenuItem;
    Recomear1: TMenuItem;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabelMotor: TQRLabel;
    QRLabelVeic: TQRLabel;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DateTimePicker1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Selecionar1Click(Sender: TObject);
    procedure Recomear1Click(Sender: TObject);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComprovAb: TComprovAb;

implementation

uses dm, Math, UnitAbastece;

{$R *.dfm}

procedure TComprovAb.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TComprovAb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   RadioGroup1.ItemIndex := 0;
   If Edit1.Text <> '' then Edit1.Clear;
   If Edit2.Text <> '' then Edit2.Clear;
   DateTimePicker1.Date := Date;
   DateTimePicker2.Date := Date;
   QRLabelVeic.Caption  := '';
   QRLabelMotor.Caption := '';
end;

procedure TComprovAb.RadioGroup1Click(Sender: TObject);
begin
   DateTimePicker1.Date := Now;
   Edit1.Text := '';
   Edit2.Text := '';
   If RadioGroup1.ItemIndex = 0 then
     DateTimePicker1.SetFocus
   else if RadioGroup1.ItemIndex = 1 then
     Edit1.SetFocus
   else if RadioGroup1.ItemIndex = 2 then
     DateTimePicker2.SetFocus;  

  {If RadioGroup1.ItemIndex = 0 then begin
     DMdados.AdoQSaidaaba.SQL.Clear;
     DMdados.AdoQSaidaaba.SQL.Add('select * from saidaaba where ');
     DMdados.AdoQSaidaaba.SQL.Add('''' + )
     StrCopy(DateToStr(DateTimePicker1.Date))

     Dmdados.ADOQEstoquesaida.SQL.Clear;
     Dmdados.ADOQEstoquesaida.Close;
     Dmdados.ADOQEstoquesaida.SQL.Add('SELECT * FROM ESTOQUESAIDA WHERE ');
     Dmdados.ADOQEstoquesaida.SQL.Add('LOCAL = ' + '''' + 'T1' + '''');
     Dmdados.ADOQEstoquesaida.SQL.Add('and DATA = ' + '''' + COPY(DateToStr(MonthCalendar1.DATE),7,4) + '-' +
     COPY(DateToStr(MonthCalendar1.DATE),4,2) + '-' + COPY(DateToStr(MonthCalendar1.DATE),1,2) + '''');
     Dmdados.ADOQEstoquesaida.SQL.Add('ORDER BY DATA');
     Dmdados.ADOQEstoquesaida.Open;
     Dmdados.ADOQEstoquesaida.ExecSQL;
     Dmdados.ADOQEstoquesaida.Last;}


end;

procedure TComprovAb.BitBtn2Click(Sender: TObject);
begin
  QuickRep1.Preview
end;

procedure TComprovAb.DateTimePicker1Click(Sender: TObject);
begin
  DBGrid1.SetFocus  
end;

procedure TComprovAb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(13) then begin
    if Edit1.Text = '' then
      ShowMessage('Informe o código de frota do veículo')
    else
      DBGrid1.SetFocus;
  end;     
end;

procedure TComprovAb.Selecionar1Click(Sender: TObject);
var
//  bomba: string;
//  veic : string;
//  motor: string;
//  hora : string;
//  data : TDateTime;
  id   : currency;
begin
  id:= DMdados.ADOQAbastecimentosID.value;
  DMdados.ADOQAbastecimentos.Filtered := False;
  DMdados.ADOQAbastecimentos.Filter   := 'ID = ' + CurrToStr(id);
  DMdados.ADOQAbastecimentos.Filtered := True;
end;

procedure TComprovAb.Recomear1Click(Sender: TObject);
begin
  DMdados.ADOQAbastecimentos.Filtered := False;
end;

procedure TComprovAb.QuickRep1AfterPreview(Sender: TObject);
begin
  QRLabelVeic.Caption  := '';
  QRLabelMotor.Caption := '';
  DMdados.ADOQAbastecimentos.Filtered := False;
  FrmAbastece.EditVeic.SetFocus;
end;

end.
