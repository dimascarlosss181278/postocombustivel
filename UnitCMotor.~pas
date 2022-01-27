unit UnitCMotor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, dxGDIPlusClasses,
  DB, ADODB, jpeg;

type
  TFrmCMot = class(TForm)
    img1: TImage;
    edt1: TEdit;
    rg1: TRadioGroup;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure img1DblClick(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCMot: TFrmCMot;

implementation

uses dm, UntPrincipal, UnitAbastece;

{$R *.dfm}

procedure TFrmCMot.btn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmCMot.edt1Change(Sender: TObject);
begin
Case rg1.ItemIndex Of
  0:Begin
   DMdados.ADOQSRA010.Close;
   DMdados.ADOQSRA010.SQL.Clear;
   DMdados.ADOQSRA010.SQL.Add('select RA_MAT,RA_NOME,RA_DEMISSA from SRA010 ');
   DMdados.ADOQSRA010.SQL.Add('where RA_DEMISSA is null or RA_DEMISSA = ' +''''+''+'''');
   DMdados.ADOQSRA010.SQL.Add(' and RA_MAT LIKE ' + QuotedStr('%'+edt1.Text+'%'));
   DMdados.ADOQSRA010.ExecSQL;
   DMdados.ADOQSRA010.Active := True;
   End;
 1:Begin
   DMdados.ADOQSRA010.Close;
   DMdados.ADOQSRA010.SQL.Clear;
   DMdados.ADOQSRA010.SQL.Add('select RA_MAT,RA_NOME,RA_DEMISSA from SRA010 (NOLOCK) ');
   DMdados.ADOQSRA010.SQL.Add('where RA_DEMISSA is null or RA_DEMISSA = ' +''''+''+'''');
   DMdados.ADOQSRA010.SQL.Add(' and RA_NOME LIKE ' + QuotedStr('%'+edt1.Text+'%'));
   DMdados.ADOQSRA010.ExecSQL;
   DMdados.ADOQSRA010.Active := True;
   End;
End;

end;

procedure TFrmCMot.FormShow(Sender: TObject);
begin
  DMdados.ADOQSRA010.Close;
  DMdados.ADOQSRA010.SQL.Clear;
//  DMdados.AdoQFunc.SQL.Add('Select * FROM FUNC ');
//  DMdados.AdoQFunc.SQL.Add('WHERE (DATA_DEMISSAO >= GETDATE() OR  DATA_DEMISSAO IS NULL) AND ATIVO= '+ '''' + '1' + '''');
  DMdados.ADOQSRA010.SQL.Add('select RA_MAT,RA_NOME,RA_DEMISSA from SRA010 ');
  DMdados.ADOQSRA010.SQL.Add('where RA_DEMISSA is null or RA_DEMISSA = ' +''''+''+'''');
  DMdados.ADOQSRA010.SQL.Add(' order by RA_NOME');
  DMdados.ADOQSRA010.ExecSQL;
  DMdados.ADOQSRA010.Active := True;
  FrmCMot.edt1.Clear;
end;

procedure TFrmCMot.dbgrd1DblClick(Sender: TObject);
begin
    if FrmPrincipal.tela = 0 then begin
       FrmAbastece.Edit5.Text := DMdados.ADOQSRA010RA_MAT.AsString;
       FrmAbastece.LabelMotorista.Caption := DMdados.ADOQSRA010RA_NOME.AsString;
       Close;
       FrmAbastece.Edit5.SetFocus;
    end
end;

procedure TFrmCMot.Button1Click(Sender: TObject);
begin
//  if edt1.Text <> '' then edt1.Clear;
  rg1.ItemIndex := 0;
  DMdados.AdoQFunc.Close;
  DMdados.AdoQFunc.SQL.Clear;
  DMdados.AdoQFunc.SQL.Add('Select CODIGO,NOME,FUNCAO FROM FUNC ');
  DMdados.AdoQFunc.SQL.Add('WHERE (DATA_DEMISSAO >= GETDATE() OR  DATA_DEMISSAO IS NULL) AND ATIVO=1 ');
  DMdados.AdoQFunc.ExecSQL;
  DMdados.AdoQFunc.Active := True;

end;

procedure TFrmCMot.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [SsCtrl]) and (key = 46) then
     key:=0;
end;

procedure TFrmCMot.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  If key = chr(27) then close;
  If key=chr(13) then begin
    If FrmPrincipal.tela = 0 then begin
       FrmAbastece.Edit5.Text := DMdados.ADOQSRA010RA_MAT.AsString;
       FrmAbastece.LabelMotorista.Caption := DMdados.ADOQSRA010RA_NOME.AsString;
       Close;                        
       FrmAbastece.Edit5.SetFocus;
    end
  end;
end;

procedure TFrmCMot.img1DblClick(Sender: TObject);
begin
   rg1.ItemIndex := -1;
   edt1.Clear;
end;

procedure TFrmCMot.rg1Click(Sender: TObject);
begin
  edt1.SetFocus;
end;

procedure TFrmCMot.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=chr(27) then close;
end;

end.
