unit UnitAbastece;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,dllcompanytec, Buttons, ComCtrls, jpeg,
  DBCtrls, Grids, DBGrids, Menus, DB;

type
  TFrmAbastece = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    editTempo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    editCanal: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Check: TCheckBox;
    Integridade: TCheckBox;
    Value: TCheckBox;
    editTotaisDin: TEdit;
    editString: TEdit;
    editTotaisLt: TEdit;
    Editdata: TEdit;
    Edithora: TEdit;
    editEnc: TEdit;
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditFrent: TEdit;
    Edit5: TEdit;
    ComboBox4: TComboBox;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EditVeic: TEdit;
    EditOper: TEdit;
    EditConj: TEdit;
    EditSetor: TEdit;
    EditFaz: TEdit;
    Label21: TLabel;
    EditProdut: TEdit;
    Label22: TLabel;
    Edit9: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    EditKm: TEdit;
    LabelFrenstista: TLabel;
    LabelMotorista: TLabel;
    EditTurno: TEdit;
    Timer1: TTimer;
    EditPPL: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    editRegistro: TEdit;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    Reimpressodeabastecimento1: TMenuItem;
    Label10: TLabel;
    LabelHorAnt: TLabel;
    Label20: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    EditCentroc: TEdit;
    Label27: TLabel;
    EditForn: TEdit;
    BitBtn5: TBitBtn;
    EditTipoS: TEdit;
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditFrentExit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure EditFrentKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Reimpressodeabastecimento1Click(Sender: TObject);
    procedure EditTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure EditVeicKeyPress(Sender: TObject; var Key: Char);
    procedure EditFrentEnter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure EditVeicExit(Sender: TObject);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure EditOperKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure EditFrentChange(Sender: TObject);
    procedure EditTipoSKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbastece: TFrmAbastece;

implementation

uses dm, Comprov, Math;

{$R *.dfm}

procedure TFrmAbastece.CheckBox2Click(Sender: TObject);
begin
  CheckBox1.Checked:= False;
end;

procedure TFrmAbastece.CheckBox1Click(Sender: TObject);
begin
  CheckBox2.Checked:= False;
end;

procedure TFrmAbastece.CheckBox3Click(Sender: TObject);
begin
  CheckBox4.Checked:= False;
end;

procedure TFrmAbastece.CheckBox4Click(Sender: TObject);
begin
  CheckBox3.Checked:=False;
end;

procedure TFrmAbastece.SpeedButton1Click(Sender: TObject);
begin
  DMdados.AdoQSaidaaba.Edit;



//  DMdados.AdoQSaidaaba.State <>
//  SpeedButton1.Enabled:= False;
//  Button1.Enabled:=True;
end;

procedure TFrmAbastece.Timer1Timer(Sender: TObject);
begin
  FlashWindow(Handle, true);
  FlashWindow(Application.Handle, true);
end;

procedure TFrmAbastece.Button1Click(Sender: TObject);
var ab:Abast;
begin
  ab:=LeAbastecimento;
  editTotaisDin.Text:=floattostr(ab.total_dinheiro);
  editString.Text:=ab.st_full;
  editTotaisLt.Text:=floattostr(ab.total_litros);
  editPPL.Text:=floattostr(ab.PU);
  editTempo.Text:=ab.tempo;
  editCanal.Text:=ab.canal;
  editData.Text:=ab.data;
  editHora.text:=ab.hora;
  editRegistro.Text:=floattostr(ab.registro);
  editEnc.Text:=floattostr(ab.encerrante);
  check.Checked:=ab.checksum;
  integridade.Checked:=ab.integridade;
  value.Checked:=ab.value;
//  SpeedButton1.Enabled:= True;
end;

procedure TFrmAbastece.EditFrentExit(Sender: TObject);
begin
//  if EditFrent.Text = '' then EditFrent.SetFocus;
   If EditFrent.Text = '' then begin
      ShowMessage('Informe a matricula do Frentista');
      EditFrent.SetFocus;
   end;
end;

procedure TFrmAbastece.Edit5Exit(Sender: TObject);
//var
//  argumento:string;
begin
{   argumento:=EDIT5.Text;
   if Edit5.Text='' then
   begin
          beep;
          MessageDlg('Digite um Valor Váido.', mtError, [mbOK], 0);
          EDIT5.SetFocus;
      end//if principal
   else
      begin
          DMdados.FuncMot.Close;
          DMdados.FuncMot.SQL.Clear;
          DMdados.FuncMot.SQL.Add('select f.CODIGO,F.NOME,F.FUNCAO from FUNC F');
          DMdados.FuncMot.SQL.Add('where (F.DATA_DEMISSAO >= GETDATE() OR  F.DATA_DEMISSAO IS NULL)');
          DMdados.FuncMot.SQL.Add('AND F.ATIVO=1 AND F.FUNCAO=0 AND F.CODIGO=' + argumento + ';');
            Try
              DMdados.FuncMot.Active:=True;
              if DMdados.FuncMot.IsEmpty then
                begin
                    beep;
                    MessageDlg('Código Não Cadastrado ou não é motorista!.', mtError, [mbOK], 0);
                    Edit5.SetFocus;
                end;//not if
            finally
              DMdados.FuncMot.Active:=False;
            end; //try+finally
      end;//else if principal}




end;


procedure TFrmAbastece.EditFrentKeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
  dmDados.AdoqFunc.Close;
  DMdados.AdoqFunc.Parameters.ParamByName('Codigo').Value:= EditFrent.Text;
  dmDados.AdoqFunc.Open;
  LabelFrenstista.Caption:=dmDados.AdoQFuncNOME.Value;
  EditTipoS.SetFocus;
 end;

  {  //definir turno inicio
      If (DateTimePicker2.Time >= StrToTime('00:07:00')) and (DateTimePicker2.Time <= StrToTime('14:59:59')) then begin
         EditTurno.Text := '1';
      end
      else If (DateTimePicker2.Time >= StrToTime('15:00:00')) and (DateTimePicker2.Time <= StrToTime('22:59:59')) then begin
         EditTurno.Text := '2';
      end
      else If (DateTimePicker2.Time >= StrToTime('23:00:00')) and (DateTimePicker2.Time <= StrToTime('06:59:59')) then begin
         EditTurno.Text := '3';
      end;
     //definir turno fim }
end;

procedure TFrmAbastece.FormActivate(Sender: TObject);
begin
//  DMdados.AdoQFunc.Active := False;
//  DMdados.AdoQFunc.Active := True;
end;

procedure TFrmAbastece.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if not DMdados.AdoQFunc.Locate('CODIGO', EditFrent.Text+'    ', [loCaseInSensitive,loPartialKey]) then
      ShowMessage('porra nenhuma')
    else
      LabelFrenstista.Caption := DMdados.AdoQFuncNOME.AsString;
  end;

end;

procedure TFrmAbastece.BitBtn1Click(Sender: TObject);
begin
  close
end;

procedure TFrmAbastece.Reimpressodeabastecimento1Click(Sender: TObject);
begin
   ComprovAb.ShowModal;
end;

procedure TFrmAbastece.EditTurnoKeyPress(Sender: TObject; var Key: Char);
begin
 if key=chr(13) then begin
    If EditTurno.Text = '' then
       EditTurno.SetFocus
    else
       Edit5.SetFocus;   
 end;
end;

procedure TFrmAbastece.EditVeicKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(13) then begin
    If DMdados.AdoQVeic.Locate('codigo',EditVeic.Text, [])=True then begin
       Label10.Caption := DMdados.AdoQVeicNOME.Value;
       //Odometro anterior
       LabelHorAnt.Caption := DMdados.AdoQVeicODOMETRO_ULT_FECH.AsString;
       EditKm.SetFocus;
    end
    else begin
       ShowMessage('Veículo não encontrado');
       EditVeic.SetFocus;
    end;
  end;
end;

procedure TFrmAbastece.EditFrentEnter(Sender: TObject);
begin
//  HintBalloon1.AddToolInfo(Handle,EditFrent.Handle);
end;

procedure TFrmAbastece.Edit5Enter(Sender: TObject);
begin
//  HintBalloon1.AddToolInfo(Handle,edit5.Handle);
end;

procedure TFrmAbastece.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
  dmDados.AdoqFunc.Close;
  DMdados.AdoqFunc.Parameters.ParamByName('Codigo').Value:= Edit5.Text;
  dmDados.AdoqFunc.Open;
  LabelMotorista.Caption:=dmDados.AdoQFuncNOME.Value;
  If LabelMotorista.Caption = '' then
    begin
      beep;
      showmessage('Motorista não encontrato!'+#13+'Favor contatar o Sr.Josinaldo ou Jeferson'+'Oficina de Veículos');
      Edit5.SetFocus;
    end
  else
    begin
      EditVeic.SetFocus;
    end;
 end;

end;

procedure TFrmAbastece.EditVeicExit(Sender: TObject);
begin
    if EditVeic.Text = '' then EditVeic.SetFocus;
end;

procedure TFrmAbastece.EditKmKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(13) then begin
    if EditKm.Text = '' then begin
      showmessage('Informe os dados horimetro/odometro');
      CheckBox1.Checked := True;
      CheckBox2.Checked := False;
      EditKm.setfocus;
    end
    else
    if EditKm.Text = LabelHorAnt.Caption then begin
     CheckBox1.Checked := True;
     CheckBox2.Checked := False;
     EditOper.SetFocus;
    end;
  end;  
end;

procedure TFrmAbastece.EditOperKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(13) then ComboBox1.SetFocus;
end;

procedure TFrmAbastece.ComboBox1Click(Sender: TObject);
begin
  If ComboBox1.ItemIndex = 0 then begin
     //01 - INTERNO
     //(Tipo de Abastecimento Bloqueado para novos abastecimentos)
     ShowMessage('Interno está bloqueado, favor selecione outro tipo de abastecimento');
  end
  else If ComboBox1.ItemIndex = 1 then begin
     //02 - SOCORRO INTERNO
     //TODOS OS CAMPOS PREENCHIDOS(normal)
      EditTipoS.Text := '02';
      EditTipoS.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 2 then begin
     //03 - SOCORRO EXTERNO
     //(NAO INFORMA CAMPOS SETOR E FAZENDA)
      EditTipoS.Text := '03';
      EditSetor.Enabled := False;
      EditFaz.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 3 then begin
     //04 - EXTERNO
     //(NAO INFORMA CAMPOS SETOR E FAZENDA)
      EditTipoS.Text := '04';
      EditSetor.Enabled := False;
      EditFaz.Enabled := False;
      EditTipoS.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 4 then begin
     //05 - PARTIDA FRIA
      EditTipoS.Text := '05';
      EditOper.Enabled := False;
      EditConj.Enabled := False;
      EditFaz.Enabled := False;
      Edit5.Enabled := False;
      EditSetor.Enabled := False;
      EditKm.Enabled := False; // Horimetro KM
      EditTipoS.Enabled := False; // Centro custo
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 5 then begin
     //06 - SERVICOS DIVERSOS
      EditTipoS.Text := '06';
      EditOper.Enabled := False;
      EditConj.Enabled := False;
      EditFaz.Enabled := False;
      Edit5.Enabled := False;
      EditVeic.Enabled := False;
      EditSetor.Enabled := False;
      EditForn.Enabled := False;
      EditKm.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 6 then begin
     //07 - AFERICAO ( APENAS CAMPOS TURNO, FRENTISTA, TIPO SAIDA, BOMBA E QUANTIDADE)
      EditTipoS.Text := '07';
      EditOper.Enabled := False;
      EditConj.Enabled := False;
      EditFaz.Enabled := False;
      Edit5.Enabled := False;
      EditVeic.Enabled := False;
      EditSetor.Enabled := False;
      EditForn.Enabled := False;
      EditKm.Enabled := False;
      EditTipoS.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 7 then begin
     //08 - DOACAO ( COM EXCECAO DOS CAMPOS CENTRO CUSTO, CONTA CONTABIL OS DEMAIS CAMPOS SAO PREENCHIDOS)
      EditTipoS.Text := '08';
      EditTipoS.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 8 then begin
     //09 - ABASTECIMENTO DE VEICULOS TERCEIROS (TODOS OS CAMPOS PREENCHIDOS)
      EditTipoS.Text := '09';
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 9 then begin
     //10 - COMBOIO - B2 (Tipo de Abastecimento Bloqueado para novos abastecimentos)
     ShowMessage('Interno está bloqueado, favor selecione outro tipo de abastecimento');
  end

end;

procedure TFrmAbastece.ComboBox4Click(Sender: TObject);
begin
   if ComboBox4.ItemIndex = 0 then
    EditTurno.Text:= IntToStr(01);
  if ComboBox4.ItemIndex = 1 then
    EditTurno.Text:= IntToStr(02) ;
  if ComboBox4.ItemIndex = 2 then
    EditTurno.Text:= IntToStr(03);
  Edit5.SetFocus;   
end;

procedure TFrmAbastece.BitBtn5Click(Sender: TObject);
var ab:Abast;
begin
  ab:=LeAbastecimento;
  editTotaisDin.Text:=floattostr(ab.total_dinheiro);
  editString.Text:=ab.st_full;
  editTotaisLt.Text:=floattostr(ab.total_litros);
  editPPL.Text:=floattostr(ab.PU);
  editTempo.Text:=ab.tempo;
  editCanal.Text:=ab.canal;
  editData.Text:=ab.data;
  editHora.text:=ab.hora;
  editRegistro.Text:=floattostr(ab.registro);
  editEnc.Text:=floattostr(ab.encerrante);
  check.Checked:=ab.checksum;
  integridade.Checked:=ab.integridade;
  value.Checked:=ab.value;
//  SpeedButton1.Enabled:= True;
end;

procedure TFrmAbastece.BitBtn3Click(Sender: TObject);
begin
// rotina recomeça abastecimento
  If EditFrent.text <> '' then EditFrent.Clear;
  If EditTurno.text <> '' then EditTurno.Clear;
  ComboBox1.ItemIndex := -1;
  ComboBox4.ItemIndex := 0;
  If Edit5.Enabled = False then Edit5.Enabled := True;
     If Edit5.Text <> '' then Edit5.Clear;
  If EditTipoS.Enabled = False then EditTipoS.Enabled := True;
     If EditTipoS.Text <> '' then EditTipoS.Clear;
  If EditVeic.Enabled = False then EditVeic.Enabled := True;
     If EditVeic.Text <> '' then EditVeic.Clear;
  If EditKm.Enabled = False then EditKm.Enabled := True;
     If EditKm.Text <> '' then EditKm.Clear;
  If EditOper.Enabled = False then EditOper.Enabled := True;
     If EditOper.Text <> '' then EditOper.Clear;
  If EditConj.Enabled = False then EditConj.Enabled := True;
     If EditConj.Text <> '' then EditConj.Clear;
  If EditSetor.Enabled = False then EditSetor.Enabled := True;
     If EditSetor.Text <> '' then EditSetor.Clear;
  If Edit9.Enabled = False then Edit9.Enabled := True;
     If Edit9.Text <> '' then Edit9.Clear;
  If EditFaz.Enabled = False then EditFaz.Enabled := True;
     If EditFaz.Text <> '' then EditFaz.Clear;
  If EditForn.Enabled = False then EditForn.Enabled := True;
     If EditForn.Text <> '' then EditForn.Clear;
//
  If Editdata.Enabled = False then Editdata.Enabled := True;
     If Editdata.Text <> '' then Editdata.Clear;
  If Edithora.Enabled = False then Edithora.Enabled := True;
     If Edithora.Text <> '' then Edithora.Clear;
  If editTempo.Enabled = False then editTempo.Enabled := True;
     If editTempo.Text <> '' then editTempo.Clear;
  If editTotaisLt.Enabled = False then editTotaisLt.Enabled := True;
     If editTotaisLt.Text <> '' then editTotaisLt.Clear;
  If EditPPL.Enabled = False then EditPPL.Enabled := True;
     If EditPPL.Text <> '' then EditPPL.Clear;
  If editEnc.Enabled = False then editEnc.Enabled := True;
     If editEnc.Text <> '' then editEnc.Clear;
  If editCanal.Enabled = False then editCanal.Enabled := True;
     If editCanal.Text <> '' then editCanal.Clear;
  If editString.Enabled = False then editString.Enabled := True;
     If editString.Text <> '' then editString.Clear;
  If editTotaisDin.Enabled = False then editTotaisDin.Enabled := True;
     If editTotaisDin.Text <> '' then editTotaisDin.Clear;
  LabelFrenstista.Caption := '';
  LabelMotorista.Caption  := '';
  LabelHorAnt.Caption     := '';
  CheckBox1.Checked       := false;
  CheckBox2.Checked       := true;
  CheckBox3.Checked       := False;
  CheckBox4.Checked       := True;
//  If DMdados.AdoqAbastecimentos.State <> [dsinsert, dsedit] then
     DMdados.AdoqAbastecimentos.Cancel;
  BitBtn1.SetFocus;

end;

procedure TFrmAbastece.Image1DblClick(Sender: TObject);
begin
// rotina recomeça abastecimento
  If EditFrent.text <> '' then EditFrent.Clear;
  If EditTurno.text <> '' then EditTurno.Clear;
  ComboBox1.ItemIndex := -1;
  ComboBox4.ItemIndex := 0;
  If Edit5.Enabled = False then Edit5.Enabled := True;
     If Edit5.Text <> '' then Edit5.Clear;
  If EditTipoS.Enabled = False then EditTipoS.Enabled := True;
     If EditTipoS.Text <> '' then EditTipoS.Clear;
  If EditVeic.Enabled = False then EditVeic.Enabled := True;
     If EditVeic.Text <> '' then EditVeic.Clear;
  If EditKm.Enabled = False then EditKm.Enabled := True;
     If EditKm.Text <> '' then EditKm.Clear;
  If EditOper.Enabled = False then EditOper.Enabled := True;
     If EditOper.Text <> '' then EditOper.Clear;
  If EditConj.Enabled = False then EditConj.Enabled := True;
     If EditConj.Text <> '' then EditConj.Clear;
  If EditSetor.Enabled = False then EditSetor.Enabled := True;
     If EditSetor.Text <> '' then EditSetor.Clear;
  If Edit9.Enabled = False then Edit9.Enabled := True;
     If Edit9.Text <> '' then Edit9.Clear;
  If EditFaz.Enabled = False then EditFaz.Enabled := True;
     If EditFaz.Text <> '' then EditFaz.Clear;
  If EditForn.Enabled = False then EditForn.Enabled := True;
     If EditForn.Text <> '' then EditForn.Clear;
//
  If Editdata.Enabled = False then Editdata.Enabled := True;
     If Editdata.Text <> '' then Editdata.Clear;
  If Edithora.Enabled = False then Edithora.Enabled := True;
     If Edithora.Text <> '' then Edithora.Clear;
  If editTempo.Enabled = False then editTempo.Enabled := True;
     If editTempo.Text <> '' then editTempo.Clear;
  If editTotaisLt.Enabled = False then editTotaisLt.Enabled := True;
     If editTotaisLt.Text <> '' then editTotaisLt.Clear;
  If EditPPL.Enabled = False then EditPPL.Enabled := True;
     If EditPPL.Text <> '' then EditPPL.Clear;
  If editEnc.Enabled = False then editEnc.Enabled := True;
     If editEnc.Text <> '' then editEnc.Clear;
  If editCanal.Enabled = False then editCanal.Enabled := True;
     If editCanal.Text <> '' then editCanal.Clear;
  If editString.Enabled = False then editString.Enabled := True;
     If editString.Text <> '' then editString.Clear;
  If editTotaisDin.Enabled = False then editTotaisDin.Enabled := True;
     If editTotaisDin.Text <> '' then editTotaisDin.Clear;
  LabelFrenstista.Caption := '';
  LabelMotorista.Caption  := '';
  LabelHorAnt.Caption     := '';
  CheckBox1.Checked       := false;
  CheckBox2.Checked       := true;
  CheckBox3.Checked       := False;
  CheckBox4.Checked       := True;
//  If DMdados.AdoqAbastecimentos.State <> [dsinsert, dsedit] then
     DMdados.AdoqAbastecimentos.Cancel;
  BitBtn1.SetFocus;

end;

procedure TFrmAbastece.BitBtn2Click(Sender: TObject);
begin
// If DMdados.AdoqAbastecimentos.State in [dsedit, dsinsert] then begin
    DMdados.AdoqAbastecimentos.Edit;
    DMdados.AdoqAbastecimentos.Insert;
    DMdados.AdoqAbastecimentosEMPRESA.Value      := '00010001';
    DMdados.AdoqAbastecimentosTIPOSAIDA.Value    := StrToInt(EditTipoS.Text);
    DMdados.AdoqAbastecimentosTURNO.Value        := EditTurno.Text;
// Centro de custo
   If EditCentroc.Enabled = False then DMdados.AdoqAbastecimentosCCUSTO.Value := ''
   else DMdados.AdoqAbastecimentosCCUSTO.Value := EditCentroc.Text;
// veiculo
   If EditVeic.Enabled = False then DMdados.AdoqAbastecimentosVEICULO.Value := ''
   else DMdados.AdoqAbastecimentosVEICULO.Value := EditVeic.Text;
// Km
   If EditKm.Enabled = False then DMdados.AdoqAbastecimentosODOMETRO.Value := 0
   else DMdados.AdoqAbastecimentosODOMETRO.Value := StrToCurr(EditKm.Text);
// Operacao/Atividade
   If EditOper.Enabled = False then DMdados.AdoqAbastecimentosOPERACAO.Value := ''
   else DMdados.AdoqAbastecimentosOPERACAO.Value := EditOper.Text;
// Conjunto Operacao
   If EditConj.Enabled = False then DMdados.AdoqAbastecimentosCJ_OPER.Value := ''
   else DMdados.AdoqAbastecimentosCJ_OPER.Value := EditConj.Text;
// Produto
   DMdados.AdoqAbastecimentosPRODUTO.Value := EditProdut.Text;
// Setor
   If EditSetor.Enabled = False then DMdados.AdoqAbastecimentosSETOR.Value := ''
   else DMdados.AdoqAbastecimentosSETOR.Value := EditSetor.Text;
// Fazenda
   If EditFaz.Enabled = False then DMdados.AdoqAbastecimentosFAZ.Value := ''
   else DMdados.AdoqAbastecimentosFAZ.Value := EditFaz.Text;
//Dados da automacao
  DMdados.AdoqAbastecimentosDATA.Value   := StrToDateTime((Editdata.Text)+' 00:00:00.000');
  DMdados.AdoqAbastecimentosDATA.AsDateTime := StrToDateTime(copy(Editdata.Text,7,4)+copy(Editdata.Text, 7,4));

//  Dmdados.ADOQEstoquesaida.SQL.Add('and DATA = ' + '''' + COPY(DateToStr(MonthCalendar1.DATE),7,4) + '-' +
//  COPY(DateToStr(MonthCalendar1.DATE),4,2) + '-' + COPY(DateToStr(MonthCalendar1.DATE),1,2) + '''');



  DMdados.AdoqAbastecimentosHORA.Value   := Edithora.Text;
  DMdados.AdoqAbastecimentosQTDE.AsFloat := StrToFloat(editTotaisLt.Text);
  DMdados.AdoqAbastecimentosVALOR.AsFloat:= StrToFloat(editTotaisDin.Text);
  DMdados.AdoqAbastecimentosPRODUTO.Value:= EditProdut.Text;
  DMdados.AdoqAbastecimentosBOMBA.Value  := editCanal.Text;
  DMdados.AdoqAbastecimentosPLANTA.Value := '00010001';
  DMdados.AdoqAbastecimentos.Post;
//end;

end;

procedure TFrmAbastece.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
   If DMdados.AdoQFunc.Locate('CODIGO', EditFrent.Text, [])=True then
      ShowMessage('OK Localizado')
   else
      ShowMessage('Nao encontrado');
 end     
end;

procedure TFrmAbastece.EditFrentChange(Sender: TObject);
begin
{  If lenght(StrToInt(EditFrent.Text))=6 then begin
   If DMdados.AdoQFunc.Locate('CODIGO',EditFrent.Text,[]) = True then begin
      LabelFrenstista.Caption:=DMdados.AdoQFuncNOME.AsString;
      EditTipoS.SetFocus;
   end
 end; }
end;

procedure TFrmAbastece.EditTipoSKeyPress(Sender: TObject; var Key: Char);
begin
   if key=chr(13) then begin
      if EditTipoS.Text ='' then begin
        ShowMessage('Informe o tipo de saida');
        EditTipoS.SetFocus;
      end
      else begin
        EditTurno.SetFocus;
      end;
   end;
end;

end.

