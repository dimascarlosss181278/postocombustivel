unit UnitCVeic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxGDIPlusClasses, ExtCtrls, Grids, DBGrids,
  jpeg;

type
  TFrmCVeic = class(TForm)
    edt1: TEdit;
    rg1: TRadioGroup;
    dbgrd1: TDBGrid;
    img1: TImage;
    procedure FormShow(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCVeic: TFrmCVeic;

implementation

uses dm, UntPrincipal, UnitAbastece;

{$R *.dfm}

procedure TFrmCVeic.FormShow(Sender: TObject);
begin
  if edt1.Text <> '' then edt1.Clear;
  rg1.ItemIndex := 0;
  DMdados.AdoQVeic.Close;
  DMdados.AdoQVeic.SQL.Clear;
  DMdados.AdoQVeic.SQL.Add('select * from veiculos where ativo = ' + '''' + '0' + '''');
//  DMdados.AdoQVeic.SQL.Add(' and codigo Like ' + QuotedStr('%'+edt1.Text+'%'));
  DMdados.AdoQVeic.ExecSQL;
  DMdados.AdoQVeic.Active := True;
end;

procedure TFrmCVeic.edt1Change(Sender: TObject);
begin
Case rg1.ItemIndex Of
  0:Begin
   DMdados.AdoQVeic.Close;
   DMdados.AdoQVeic.SQL.Clear;
   DMdados.AdoQVeic.SQL.Add('select * from veiculos where ativo = ' + '''' + '0' + '''');
   DMdados.AdoQVeic.SQL.Add(' and codigo Like ' + QuotedStr('%'+edt1.Text+'%'));
   DMdados.AdoQVeic.ExecSQL;
   DMdados.AdoQVeic.Active := True;
 End;
 1:Begin
   DMdados.AdoQVeic.Close;
   DMdados.AdoQVeic.SQL.Clear;
   DMdados.AdoQVeic.SQL.Add('select * from veiculos where ATIVO = ' + '''' + '0' + '''');
   DMdados.AdoQVeic.SQL.Add(' and nome ' + ' Like ' + QuotedStr(edt1.Text +'%'));
   DMdados.AdoQVeic.ExecSQL;
   DMdados.AdoQVeic.Active := True;
 End;
End;

end;

procedure TFrmCVeic.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCVeic.dbgrd1DblClick(Sender: TObject);
begin
       If DMdados.AdoQVeicMEDIQUEB.Value = 1 then begin
         ShowMessage('VEICULO NÃO HABILITADO PARA ABASTECIMENTO. ODOMETRO/HORIMETRO QUEBRADO');
       end
       else If DMdados.AdoQVeicMEDIQUEB.Value = 0 then begin
         If FrmPrincipal.tela = 0 then begin
            FrmAbastece.EditVeic.Text := DMdados.AdoQVeicCODIGO.AsString;
            FrmAbastece.Label10.Caption := DMdados.AdoQVeicNOME.Value;
            FrmAbastece.LabelHorAnt.Caption := DMdados.AdoQVeicODOMETRO_ULT_FECH.AsString;
            Close;
            FrmAbastece.EditKm.SetFocus;
         end;
       end;
end;

procedure TFrmCVeic.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=Chr(13) then begin
       If DMdados.AdoQVeicMEDIQUEB.Value = 1 then begin
         ShowMessage('VEICULO NÃO HABILITADO PARA ABASTECIMENTO. ODOMETRO/HORIMETRO QUEBRADO');
       end
       else If DMdados.AdoQVeicMEDIQUEB.Value = 0 then begin
         If FrmPrincipal.tela = 0 then begin
            FrmAbastece.EditVeic.Text := DMdados.AdoQVeicCODIGO.AsString;
            FrmAbastece.Label10.Caption := DMdados.AdoQVeicNOME.Value;
            FrmAbastece.LabelHorAnt.Caption := DMdados.AdoQVeicODOMETRO_ULT_FECH.AsString;
            Close;
            FrmAbastece.EditKm.SetFocus;
         end;
       end;
  end;
end;

procedure TFrmCVeic.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY=CHR(27) THEN CLOSE;
end;

procedure TFrmCVeic.btn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmCVeic.rg1Click(Sender: TObject);
begin
   edt1.SetFocus
end;

end.
