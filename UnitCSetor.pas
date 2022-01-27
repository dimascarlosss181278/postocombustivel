unit UnitCSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, dxGDIPlusClasses, jpeg;

type
  TFrmCSetor = class(TForm)
    img1: TImage;
    edt1: TEdit;
    rg1: TRadioGroup;
    dbgrd1: TDBGrid;
    procedure edt1Change(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCSetor: TFrmCSetor;

implementation

uses dm, UnitAbastece, UntPrincipal;

{$R *.dfm}

procedure TFrmCSetor.edt1Change(Sender: TObject);
begin
Case rg1.ItemIndex Of
  0:Begin
   DMdados.ADOQSetor.Close;
   DMdados.ADOQSetor.SQL.Clear;
   DMdados.ADOQSetor.SQL.Add('Select * FROM SETOR ');
   DMdados.ADOQSetor.SQL.Add('WHERE CODIGO LIKE ' + QuotedStr('%'+edt1.Text+'%'));
   DMdados.ADOQSetor.ExecSQL;
   DMdados.ADOQSetor.Active := True;
   End;
 1:Begin
   DMdados.ADOQSetor.Close;
   DMdados.ADOQSetor.SQL.Clear;
   DMdados.ADOQSetor.SQL.Add('Select * FROM SETOR ');
   DMdados.ADOQSetor.SQL.Add(' WHERE NOME LIKE ' + QuotedStr('%'+edt1.Text+'%'));
   DMdados.ADOQSetor.ExecSQL;
   DMdados.ADOQSetor.Active := True;
   End;
End;

end;

procedure TFrmCSetor.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCSetor.dbgrd1DblClick(Sender: TObject);
begin
    if FrmPrincipal.tela = 0 then begin
       FrmAbastece.EditSetor.Text     := DMdados.ADOQSetorCODIGO.Value;
       FrmAbastece.LabelSetor.Caption := DMdados.ADOQSetorNOME.AsString;
       FrmAbastece.setores := DMdados.ADOQSetorCODIGO.Value;
       Close;
       FrmAbastece.EditFaz.SetFocus;
    end
end;

procedure TFrmCSetor.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 // fecha o formulario se ESC for pressionado
  If key = chr(27) then close;
 // executa pesquisa se ENTER for pressionado
  If key=chr(13) then begin
    If FrmPrincipal.tela = 0 then begin
       FrmAbastece.EditSetor.Text := DMdados.ADOQSetorCODIGO.AsString;
       FrmAbastece.LabelSetor.Caption := DMdados.ADOQSetorNOME.AsString;
       Close;
       FrmAbastece.EditFaz.SetFocus;
    end
  end;
end;

procedure TFrmCSetor.FormShow(Sender: TObject);
begin
//  if edt1.Text <> '' then edt1.Clear;
//  rg1.ItemIndex := 0;
  DMdados.ADOQSetor.Close;
  DMdados.ADOQSetor.SQL.Clear;
  DMdados.ADOQSetor.SQL.Add('select * from setor order by nome');
  DMdados.ADOQSetor.ExecSQL;
  DMdados.ADOQSetor.Active := True;
  FrmCSetor.edt1.Clear;
end;

procedure TFrmCSetor.img1DblClick(Sender: TObject);
begin
   rg1.ItemIndex := 1;
   edt1.Clear;
end;

procedure TFrmCSetor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCSetor.rg1Click(Sender: TObject);
begin
  edt1.SetFocus;
end;

end.
