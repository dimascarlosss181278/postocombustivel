unit UnitCFaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, dxGDIPlusClasses, jpeg;

type
  TFrmCFaz = class(TForm)
    img1: TImage;
    edt1: TEdit;
    rg1: TRadioGroup;
    dbgrd1: TDBGrid;
    procedure edt1Change(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCFaz: TFrmCFaz;

implementation

uses dm, UnitAbastece, UntPrincipal;

{$R *.dfm}

procedure TFrmCFaz.edt1Change(Sender: TObject);
begin
If FrmAbastece.EditFaz.Text = '' then begin
  ShowMessage('Favor informe o campo FAZENDA');
  FrmAbastece.EditFaz.SetFocus;
end
else begin
  Case rg1.ItemIndex Of
     0:Begin
       DMdados.ADOQFazendas.Close;
       DMdados.ADOQFazendas.SQL.Clear;
       DMdados.ADOQFazendas.SQL.Add('Select * FROM FAZENDAS ');
       DMdados.ADOQFazendas.SQL.Add('WHERE SETOR = ' + QuotedStr(FrmAbastece.EditSetor.Text));
       DMdados.ADOQFazendas.SQL.Add(' and CODIGO  = '+ QuotedStr(edt1.Text));
       DMdados.ADOQFazendas.ExecSQL;
       DMdados.ADOQFazendas.Active := True;
     End;
     1:Begin
      DMdados.ADOQFazendas.Close;
      DMdados.ADOQFazendas.SQL.Clear;
      DMdados.ADOQFazendas.SQL.Add('Select * FROM FAZENDAS ');
      DMdados.ADOQFazendas.SQL.Add('WHERE SETOR = ' + QuotedStr(FrmAbastece.EditSetor.Text));
      DMdados.ADOQFazendas.SQL.Add(' and NOME LIKE ' + QuotedStr('%'+edt1.Text+'%'));
      DMdados.ADOQFazendas.ExecSQL;
      DMdados.ADOQFazendas.Active := True;
     End;
  End;
end;

end;

procedure TFrmCFaz.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCFaz.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 // fecha o formulario se ESC for pressionado
  If key = chr(27) then close;
 // executa pesquisa se ENTER for pressionado
  If key=chr(13) then begin
    If FrmPrincipal.tela = 0 then begin
       FrmAbastece.EditFaz.Text := DMdados.ADOQFazendasCODIGO.AsString;
       FrmAbastece.LabelFaz.Caption := DMdados.ADOQFazendasNOME.AsString;
       Close;
       FrmAbastece.EditAtiv.SetFocus;
    end
  end;
end;

procedure TFrmCFaz.FormShow(Sender: TObject);
begin
  DMdados.ADOQFazendas.Close;
  DMdados.ADOQFazendas.SQL.Clear;
  DMdados.ADOQFazendas.SQL.Add('select * from fazendas order by nome');
  DMdados.ADOQFazendas.ExecSQL;
  DMdados.ADOQFazendas.Active := True;
  FrmCFaz.edt1.Clear;
end;

procedure TFrmCFaz.img1DblClick(Sender: TObject);
begin
   rg1.ItemIndex := --1;
   edt1.Clear;
end;

procedure TFrmCFaz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=chr(27) then close;
end;

procedure TFrmCFaz.FormActivate(Sender: TObject);
begin
       DMdados.ADOQFazendas.Close;
       DMdados.ADOQFazendas.SQL.Clear;
       DMdados.ADOQFazendas.SQL.Add('Select * FROM FAZENDAS ');
       DMdados.ADOQFazendas.SQL.Add('WHERE SETOR = ' + QuotedStr(FrmAbastece.EditSetor.Text));
//       DMdados.ADOQFazendas.SQL.Add(' and NOME  = '+ QuotedStr(edt1.Text));
       DMdados.ADOQFazendas.ExecSQL;
       DMdados.ADOQFazendas.Active := True;
end;

procedure TFrmCFaz.dbgrd1DblClick(Sender: TObject);
begin
//    if FrmPrincipal.tela = 0 then begin
       FrmAbastece.EditFaz.Text     := DMdados.ADOQFazendasCODIGO.Value;
       FrmAbastece.LabelFaz.Caption := DMdados.ADOQFazendasNOME.Value;
       Close;
       FrmAbastece.EditAtiv.SetFocus;
//    end
end;

procedure TFrmCFaz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCFaz.rg1Click(Sender: TObject);
begin
  edt1.SetFocus;
end;

end.
