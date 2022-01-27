unit UnitCAtiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg;

type
  TFrmCAtiv = class(TForm)
    img1: TImage;
    edt1: TEdit;
    rg1: TRadioGroup;
    dbgrd1: TDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure img1DblClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt1Change(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCAtiv: TFrmCAtiv;

implementation

uses dm, UnitAbastece, UntPrincipal;

{$R *.dfm}

procedure TFrmCAtiv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=chr(27) then close;
end;

procedure TFrmCAtiv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCAtiv.img1DblClick(Sender: TObject);
begin
   rg1.ItemIndex := 1;
   edt1.Clear;
end;

procedure TFrmCAtiv.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 // fecha o formulario se ESC for pressionado
  If key = chr(27) then close;
 // executa pesquisa se ENTER for pressionado
  If key=chr(13) then begin
//    If FrmPrincipal.tela = 0 then begin
//       FrmAbastece.Edit5.Text := DMdados.ADOQAtividade.AsString;
       FrmAbastece.LabelAtiv.Caption := DMdados.ADOQAtividadeNOME.AsString;
       FrmAbastece.EditConj.SetFocus;
//    end
  end;
end;

procedure TFrmCAtiv.edt1Change(Sender: TObject);
begin
Case rg1.ItemIndex Of
  0:Begin
   DMdados.ADOQAtividade.Close;
   DMdados.ADOQAtividade.SQL.Clear;
   DMdados.ADOQAtividade.SQL.Add('SELECT CODIGO, NOME, TIPO FROM OPERAGR ORDER BY NOME');
   DMdados.ADOQAtividade.ExecSQL;
   DMdados.ADOQAtividade.Active := True;
   End;
 1:Begin
   DMdados.ADOQAtividade.Close;
   DMdados.ADOQAtividade.SQL.Clear;
   DMdados.ADOQAtividade.SQL.Add('SELECT CODIGO, NOME, TIPO FROM OPERAGR ORDER BY NOME');
   DMdados.ADOQAtividade.ExecSQL;
   DMdados.ADOQAtividade.Active := True;
   End;
end
end;

procedure TFrmCAtiv.dbgrd1DblClick(Sender: TObject);
begin
//    if FrmPrincipal.tela = 0 then begin
       FrmAbastece.EditAtiv.Text := DMdados.ADOQAtividadeCODIGO.Value;
       FrmAbastece.LabelAtiv.Caption := DMdados.ADOQAtividadeNOME.AsString;
       Close;
       FrmAbastece.EditConj.SetFocus;
//    end
end;

procedure TFrmCAtiv.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCAtiv.rg1Click(Sender: TObject);
begin
  edt1.SetFocus;
end;

end.
