unit UnitAbastece;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,dllcompanytec, Buttons, ComCtrls, jpeg,
  DBCtrls, Grids, DBGrids, Menus, DB;

type
  TFrmAbastece = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditFrent: TEdit;
    Edit5: TEdit;
    ComboBox4: TComboBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    LabelFrenstista: TLabel;
    LabelMotorista: TLabel;
    EditTurno: TEdit;
    Timer1: TTimer;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    Reimpressodeabastecimento1: TMenuItem;
    Label20: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    EditCentroc: TEdit;
    BitBtn5: TBitBtn;
    EditTipoS: TEdit;
    GroupBox1: TGroupBox;
    Check: TCheckBox;
    Integridade: TCheckBox;
    Value: TCheckBox;
    Label14: TLabel;
    EditVeic: TEdit;
    Label10: TLabel;
    Label15: TLabel;
    EditKm: TEdit;
    LabelHorAnt: TLabel;
    Timer2: TTimer;
    DBGrid2: TDBGrid;
    PopupMenu2: TPopupMenu;
    Panel3: TPanel;
    Incorporarabastecimentopendente1: TMenuItem;
    Image2: TImage;
    Button2: TButton;
    Button3: TButton;
    DBNavigator2: TDBNavigator;
    EditSetor: TEdit;
    Label1: TLabel;
    EditFaz: TEdit;
    Label2: TLabel;
    EditAtiv: TEdit;
    Label3: TLabel;
    EditConj: TEdit;
    Label4: TLabel;
    BtnCVeic: TBitBtn;
    BtnCMot: TBitBtn;
    BitBtn4: TBitBtn;
    LabelSetor: TLabel;
    BitBtn6: TBitBtn;
    LabelFaz: TLabel;
    BitBtn7: TBitBtn;
    LabelAtiv: TLabel;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    LabelCentroc: TLabel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    LabelConj: TLabel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Incorporarabastecimentopendente1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditCentrocKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnCVeicClick(Sender: TObject);
    procedure BtnCMotClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure EditSetorKeyPress(Sender: TObject; var Key: Char);
    procedure EditFazKeyPress(Sender: TObject; var Key: Char);
    procedure EditAtivKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure EditConjKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  ident: CURRENCY;
  setores: string;
  frentes: string;

  end;

var
  FrmAbastece: TFrmAbastece;

implementation

uses dm, Comprov, Math, UntConect, UnitFunc, UntPrincipal, UnitCVeic,
  UnitCMotor, UnitCSetor, UnitCFaz, UnitCCcusto, UnitParaG, UnitParam,
  UnitCAtiv;

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
var ab:Abast;
    id: currency;
    bico: string;
    punit: currency;
    qtde: currency;
begin
  ab:=LeAbastecimento;
  id:= ab.registro;
  Panel3.Caption := 'Abastecimentos Pendentes : ' + IntToStr(DMdados.ADOQAbast_temp.RecordCount);
 If id = 0 Then begin
    bico := '';
 end
 else begin
   If DMdados.ADOQAbast_temp.RecordCount <= 9999 then begin
     DMdados.ADOQAbast_temp.Insert;
     DMdados.ADOQAbast_tempID.Value := ab.registro;
//     DMdados.ADOQAbast_tempVALOR_T.Value := ab.total_dinheiro;
     DMdados.ADOQAbast_tempQTDE.Value := StrToCurr(floattostr(ab.total_litros));//(ab.total_litros);
     DMdados.ADOQAbast_tempVALOR_UNIT.Value := ab.PU;
//calculo valor total abastecimento
     punit := ab.PU;
     qtde  := ab.total_litros;
     DMdados.ADOQAbast_tempVALOR_T.Value := qtde * punit;
     DMdados.ADOQAbast_tempDATA.Value := StrToDate(ab.data);
     DMdados.ADOQAbast_tempTEMPO_ABA.AsString := ab.tempo;
     DMdados.ADOQAbast_tempBOMBA.AsString := ab.canal;
     DMdados.ADOQAbast_tempHORA.AsString := ab.hora;
// Atribui a descricao do produto ao labelProd
     If ab.canal = '04' then DMdados.ADOQAbast_tempPRODUTO.Value := 'Diesel S500'
     else If ab.canal = '05' then DMdados.ADOQAbast_tempPRODUTO.Value := 'Diesel S10'
     else If ab.canal = '08' then DMdados.ADOQAbast_tempPRODUTO.Value := 'Etanol'
     else If ab.canal = '09' then DMdados.ADOQAbast_tempPRODUTO.Value := 'Gasolina';
//     editCanal.Text:=ab.canal;
//     DMdados.ADOQAbast_tempDATA.Value := StrToDate((copy((ab.data),7,4)+ '-' + copy((ab.data),4,2)+ '-' + copy((ab.data),1,2))+' 00:00:00.000') ;
//     DMdados.ADOQAbast_tempDATA.Value := StrToDate(ab.data);
//     editRegistro.Text:=floattostr(ab.registro);
//     editEnc.Text:=floattostr(ab.encerrante);
     check.Checked:=ab.checksum;
     integridade.Checked:=ab.integridade;
     value.Checked:=ab.value;
    DMdados.ADOQAbast_temp.Post;
    Panel3.Caption := 'Abastecimentos Pendentes : ' + IntToStr(DMdados.ADOQAbast_temp.RecordCount);
//    Label6.Caption := string(FrmPrincipal.Libera);
//    Label6.Caption := FrmPrincipal.Libera;
end
end

end;

procedure TFrmAbastece.Button1Click(Sender: TObject);
var //ab:Abast;
   id: CURRENCY;
begin
//  ab:=LeAbastecimento;
//  editTotaisDin.Text:=floattostr(ab.total_dinheiro);
//  editString.Text:=ab.st_full;
//  editTotaisLt.Text:=floattostr(ab.total_litros);
//  editPPL.Text:=floattostr(ab.PU);
//  editTempo.Text:=ab.tempo;
//  editCanal.Text:=ab.canal;
//  editData.Text:=ab.data;
//  editHora.text:=ab.hora;
//  editRegistro.Text:=floattostr(ab.registro);
//  editEnc.Text:=floattostr(ab.encerrante);
//  check.Checked:=ab.checksum;
//  integridade.Checked:=ab.integridade;
//  value.Checked:=ab.value;
//  SpeedButton1.Enabled:= True;

  {id:=DMdados.ADOQAbastecimentosID.Value;
  DMdados.ADOQAbastecimentos.Filtered := False;
  DMdados.ADOQAbastecimentos.Filter   := 'ID = ' + CurrToStr(id);
  DMdados.ADOQAbastecimentos.Filtered := True;}

  


end;

procedure TFrmAbastece.EditFrentExit(Sender: TObject);
begin
//  if EditFrent.Text = '' then EditFrent.SetFocus;
{   If EditFrent.Text = '' then begin
      ShowMessage('Informe a matricula do Frentista');
      EditFrent.SetFocus;
   end;}
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

 IF KEY=CHR(27) THEN CLOSE;
  if key=chr(13) then begin
    If DMdados.ADOQSRA010.Locate('RA_MAT',EditFrent.Text, [])=True then begin
       LabelFrenstista.Caption := DMdados.ADOQSRA010RA_NOME.Value;
       EditTipoS.SetFocus;
    end
    else begin
       ShowMessage('FRENTISTA NÃO ENCONTRADO!');
       EditFrent.SetFocus;
    end;
  end
end;


procedure TFrmAbastece.FormActivate(Sender: TObject);
//var
// i: integer;
begin

{for i := ComponentCount -1 downto 0 do
begin
  if (Components[i] is TEdit)     then (Components[i] as TEdit).Text     := '';
  If (Components[i] is TComboBox) then (Components[i] as TComboBox).Text := '';
end;}

//  DMdados.AdoQFunc.Active := False;
//  DMdados.AdoQFunc.Active := True;
{  If EditVeic.Text  <> '' then EditVeic.Text := '';
  If EditKm.Text    <> '' then EditKm.Text := '';
  If EditFrent.Text <> '' then EditFrent.Text := '';
  If EditTipoS.Text <> '' then EditTipoS.Text := '';
  If EditTurno.Text <> '' then EditTurno.Text := '';
  If Edit5.Text     <> '' then Edit5.Text := '';
  If EditSetor.Text <> '' then EditSetor.Text := '';
  If EditFaz.Text   <> '' then EditFaz.Text := '';
  If EditAtiv.Text  <> '' then EditAtiv.Text := '';
  If EditConj.Text  <> '' then EditConj.Text := ''; }

//  If Edit5.Text     <> '' then Edit5.Text     := '';
  If EditCentroc.Text <> '' then EditCentroc.Text := '';
  Label10.Caption := '';
  LabelHorAnt.Caption := '';
  ComboBox1.ItemIndex := -1;
  ComboBox4.ItemIndex := -1;
  Panel3.Caption := 'Abastecimentos Pendentes : ' + IntToStr(DMdados.ADOQAbast_temp.RecordCount);
end;

procedure TFrmAbastece.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if not DMdados.AdoQFunc.Locate('CODIGO', EditFrent.Text+'    ', [loCaseInSensitive,loPartialKey]) then
      ShowMessage('Frentista não cadastrado')
    else
      LabelFrenstista.Caption := DMdados.AdoQFuncNOME.AsString;
  end;
end;

procedure TFrmAbastece.BitBtn1Click(Sender: TObject);
begin
     //limpar os campos para os novos abastecimentos
      EditVeic.Clear;
      EditKm.Clear;
      EditFrent.Clear;
      EditTipoS.Clear;
      EditTurno.Clear;
      label10.Caption := '';
      LabelHorAnt.Caption := '';
      LabelFrenstista.Caption := '';
      LabelMotorista.Caption := '';
      If Edit5.Enabled = True then Edit5.Clear;
      If EditCentroc.Enabled = True then EditCentroc.Clear;
      close;
end;

procedure TFrmAbastece.Reimpressodeabastecimento1Click(Sender: TObject);
var
  id: Currency;
begin
  id:=DMdados.ADOQAbastecimentosID.Value;
  DMdados.ADOQAbastecimentos.Filtered := False;
  DMdados.ADOQAbastecimentos.Filter   := 'ID = ' + CurrToStr(id);
  DMdados.ADOQAbastecimentos.Filtered := True;
// Atribui Descricao do Veiculo ao Label do comprovante de abastecimento
    If DMdados.AdoQVeic.Locate('codigo',DMdados.ADOQAbastecimentosVEICULO.Value, [])=True then
       ComprovAb.QRLabelVeic.Caption := DMdados.AdoQVeicNOME.Value;
    if DMdados.ADOQSRA010.Locate('RA_MAT',DMdados.ADOQAbastecimentosMOTORISTA.Value,[]) = True then
       ComprovAb.QRLabelMotor.Caption := DMdados.ADOQSRA010RA_NOME.Value;
  ComprovAb.QuickRep1.Preview;
end;

procedure TFrmAbastece.EditTurnoKeyPress(Sender: TObject; var Key: Char);
begin
 if key=chr(13) then begin
    If EditTurno.Text = '' then begin
       EditTurno.SetFocus;
    end   
    else begin
       if EditTurno.Text = '01' then ComboBox4.ItemIndex := 0
       else if EditTurno.Text = '02' then ComboBox4.ItemIndex := 1
       else if EditTurno.Text = '03' then ComboBox4.ItemIndex := 2
       else showmessage('Informe um turno válido');
      if Edit5.Enabled = False then EditCentroc.SetFocus else
      Edit5.SetFocus;
   end
 end;
end;

procedure TFrmAbastece.EditVeicKeyPress(Sender: TObject; var Key: Char);
begin
 IF KEY=CHR(27) THEN CLOSE;
  if key=chr(13) then begin
    If DMdados.AdoQVeic.Locate('codigo',EditVeic.Text, [])=True then begin
//       If DMdados.AdoQVeicMEDIQUEB.Value = 1 then begin
       {If (DMdados.AdoQVeicMEDIQUEB.Value = 1) and (FrmParaG.RadioGroup1.ItemIndex = 1) then begin
         ShowMessage('VEICULO NÃO HABILITADO PARA ABASTECIMENTO. ODOMETRO/HORIMETRO QUEBRADO'+#13+
         'FAVOR ENTRE EM CONTATO COM GESTOR RESPONSÁVEL');
       end
       else IF(DMdados.AdoQVeicMEDIQUEB.Value = 0) AND (FrmParaG.RadioGroup1.ItemIndex = 0) then begin
         Label10.Caption := DMdados.AdoQVeicNOME.Value;
         LabelHorAnt.Caption := DMdados.AdoQVeicODOMETRO_ULT_FECH.AsString;
         EditKm.SetFocus;
       end
       else IF(DMdados.AdoQVeicMEDIQUEB.Value = 1) AND (FrmParaG.RadioGroup1.ItemIndex = 0) then begin
         Label10.Caption := DMdados.AdoQVeicNOME.Value;
         LabelHorAnt.Caption := DMdados.AdoQVeicODOMETRO_ULT_FECH.AsString;
         EditKm.SetFocus;
       end;}
         Label10.Caption := DMdados.AdoQVeicNOME.Value;
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
//  ao retornar o foco pro campo frenstista
  {EditTipoS.Clear;
  EditTurno.Clear;
  if Edit5.Enabled = False       then Edit5.Enabled := True;         // limpa edit motorista
  if EditCentroc.Enabled = False then EditCentroc.Enabled := True;   // limpa edit centro custo
  if EditSetor.Enabled = False   then EditSetor.Enabled := True;     // limpa edit setor
  if EditFaz.Enabled = False     then EditFaz.Enabled := True;     // limpa edit fazenda
  if EditAtiv.Enabled = False    then EditAtiv.Enabled := True;     // limpa edit atividade
  if EditConj.Enabled = False    then EditConj.Enabled := True;     // limpa edit Conj atividade
  LabelFrenstista.Caption := '';
  LabelSetor.Caption      := '';
  LabelFaz.Caption        := '';
  LabelMotorista.Caption  := '';
  LabelAtiv.Caption       := '';
  ComboBox1.ItemIndex     := -1;
  ComboBox4.ItemIndex     := -1;
  Edit5.Clear;
   }
end;

procedure TFrmAbastece.Edit5Enter(Sender: TObject);
begin
//  HintBalloon1.AddToolInfo(Handle,edit5.Handle);
end;

procedure TFrmAbastece.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
    If DMdados.ADOQSRA010.Locate('RA_MAT',Edit5.Text, [])=True then begin
       if (EditTipoS.Text = '01') or (EditTipoS.Text = '02') then begin
          LabelMotorista.Caption := DMdados.ADOQSRA010RA_NOME.AsString;
          EditSetor.SetFocus;
       end
       else begin
    //       FrmAbastece.Edit5.Text := DMdados.AdoFunc.parameters.parambyname('Codigo').value;
       EditCentroc.SetFocus;
       end;
    end
    else begin
         If LabelMotorista.Caption = '' then
         begin
           beep;
           showmessage('Motorista não encontrato!'+#13+'Favor entren em contao com a Oficina de Veículos');
           Edit5.SetFocus;
         end
         else begin
           showmessage('Motorista não encontrato!'+#13+'Favor entren em contao com a Oficina de Veículos');
           Edit5.SetFocus;
         end;
    end;
 end;



end;

procedure TFrmAbastece.EditVeicExit(Sender: TObject);
begin
//    if EditVeic.Text = '' then EditVeic.SetFocus;
{   If EditVeic.Text = '' then begin
      ShowMessage('Informe o código do veículo');
      EditVeic.SetFocus;
   end;}
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
//    else if StrTofloat(EditKm.Text) <= StrTofloat(LabelHorAnt.Caption) then begin
//      showmessage('Horimetro/odometro não pode ser igual ou menor que o atual');
//      EditKm.SetFocus
//    end
//    else if StrTofloat(EditKm.Text) > StrTofloat(LabelHorAnt.Caption) then begin
//     CheckBox1.Checked := True;
//     CheckBox2.Checked := False;
    else begin
     EditFrent.SetFocus
   end;
  end;
end;

procedure TFrmAbastece.EditOperKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(13) then ComboBox1.SetFocus;
end;

procedure TFrmAbastece.ComboBox1Click(Sender: TObject);
begin
  if Edit5.Enabled = false then edit5.Enabled := True;
  if EditCentroc.Enabled = false then EditCentroc.Enabled := True;
  //  if EditVeic.Enabled = false then EditVeic.Enabled := True;
//  if EditKm.Enabled = false then EditKm.Enabled := True;
  If ComboBox1.ItemIndex = 0 then begin
     //01 - FROTA (CAMPO LINDO)
     If EditCentroc.Enabled = True then EditCentroc.Enabled := False;
     EditTipoS.Text := '01';
     ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 1 then begin
     //02 - TERCEIROS
     EditTipoS.Text := '02';
     If EditCentroc.Enabled = True then EditCentroc.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 2 then begin
     //03 - INTERNO (DIVERSOS)
      EditTipoS.Text := '03';
//      IF EditVeic.Enabled = True then EditVeic.Enabled := False;
//      IF EditKm.Enabled = True then EditKm.Enabled := False;
//      if Edit5.Enabled = True then Edit5.Enabled := False;
      ComboBox4.SetFocus;
  end
  else If ComboBox1.ItemIndex = 2 then begin
     //04 - COMBOIO
      EditTipoS.Text := '04';
//      IF EditVeic.Enabled = True then EditVeic.Enabled := False;
//      IF EditKm.Enabled = True then EditKm.Enabled := False;
//      if Edit5.Enabled = True then Edit5.Enabled := False;
      ComboBox4.SetFocus;
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
 if Edit5.Enabled = False then EditCentroc.SetFocus
 else Edit5.SetFocus;
end;

procedure TFrmAbastece.BitBtn5Click(Sender: TObject);
var ab:Abast;
//I: integer;
begin
  //I:=StrToInt(EditCentroc.Text);
  ab:=LeAbastecimento;
//  editTotaisDin.Text:=floattostr(ab.total_dinheiro);
//  editString.Text:=ab.st_full;
//  editTotaisLt.Text:=floattostr(ab.total_litros);
//  editPPL.Text:=floattostr(ab.PU);
//  editTempo.Text:=ab.tempo;
//  editCanal.Text:=ab.canal;
// Atribui produto ao labelProd
//  If editCanal.Text = '05' then
//     LabelProd.Caption := 'GASOLINA'
//  If editCanal.Text = '04' then
//     LabelProd.Caption := 'ETANOL'
//  If editCanal.Text = '08' then
//     LabelProd.Caption := 'DIESEL S500'

//  editData.Text:=ab.data;
//  editHora.text:=ab.hora;
//  editRegistro.Text:=floattostr(ab.registro);
//  editEnc.Text:=floattostr(ab.encerrante);
//  check.Checked:=ab.checksum;
//  integridade.Checked:=ab.integridade;
//  value.Checked:=ab.value;
//  SpeedButton1.Enabled:= True;
end;

procedure TFrmAbastece.BitBtn3Click(Sender: TObject);
begin
// rotina recomeça abastecimento

  ComboBox1.ItemIndex := -1;
  ComboBox4.ItemIndex := -1;
  ComboBox1.Text := '';
  ComboBox4.Text := '';
  If Edit5.Enabled = False then Edit5.Enabled := True;
  If EditTipoS.Enabled = False then EditTipoS.Enabled := True;
  If EditVeic.Enabled = False then EditVeic.Enabled := True;
  If EditKm.Enabled = False then EditKm.Enabled := True;
  If EditConj.Enabled = False then EditConj.Enabled := True;
  If EditSetor.Enabled = False then EditSetor.Enabled := True;
  If EditFaz.Enabled = False then EditFaz.Enabled := True;


  If EditVeic.Text  <> '' then EditVeic.Clear;
  If EditFrent.text <> '' then EditFrent.Clear;
  If EditTurno.text <> '' then EditTurno.Clear;
  If Edit5.Text     <> '' then Edit5.Clear;
  If EditTipoS.Text <> '' then EditTipoS.Clear;
  If EditKm.Text    <> '' then EditKm.Clear;
  If EditConj.Text  <> '' then EditConj.Clear;
  If EditSetor.Text <> '' then EditSetor.Clear;
  If EditFaz.Text   <> '' then EditFaz.Clear;
  If EditAtiv.Text  <> '' then EditAtiv.Clear;

  Label10.Caption :='';
  LabelHorAnt.Caption     := '';
  LabelFrenstista.Caption := '';
  LabelMotorista.Caption  := '';
  LabelSetor.Caption      := '';
  LabelFaz.Caption        := '';
  LabelAtiv.Caption       := '';
  LabelCentroc.Caption    := '';

//  If DMdados.AdoqAbastecimentos.State <> [dsinsert, dsedit] then
     DMdados.AdoqAbastecimentos.Cancel;
  EditVeic.SetFocus;
end;

procedure TFrmAbastece.Image1DblClick(Sender: TObject);
begin
// rotina recomeça abastecimento
  If EditFrent.text <> '' then EditFrent.Clear;
  If EditTurno.text <> '' then EditTurno.Clear;
  ComboBox1.ItemIndex := -1;
  ComboBox4.ItemIndex := -1;
  ComboBox1.Text := '';
  ComboBox4.Text := '';
  LabelFrenstista.Caption := '';
  LabelMotorista.Caption  := '';
  
  If Edit5.Enabled = False then Edit5.Enabled := True;
     If Edit5.Text <> '' then Edit5.Clear;
  If EditTipoS.Enabled = False then EditTipoS.Enabled := True;
     If EditTipoS.Text <> '' then EditTipoS.Clear;
  If EditVeic.Enabled = False then EditVeic.Enabled := True;
     If EditVeic.Text <> '' then EditVeic.Clear;
  If EditKm.Enabled = False then EditKm.Enabled := True;
     If EditKm.Text <> '' then EditKm.Clear;
//  If EditOper.Enabled = False then EditOper.Enabled := True;
//     If EditOper.Text <> '' then EditOper.Clear;
//  If EditConj.Enabled = False then EditConj.Enabled := True;
//     If EditConj.Text <> '' then EditConj.Clear;
//  If EditSetor.Enabled = False then EditSetor.Enabled := True;
//     If EditSetor.Text <> '' then EditSetor.Clear;
//  If Edit9.Enabled = False then Edit9.Enabled := True;
//     If Edit9.Text <> '' then Edit9.Clear;
//  If EditFaz.Enabled = False then EditFaz.Enabled := True;
//     If EditFaz.Text <> '' then EditFaz.Clear;
//  If EditForn.Enabled = False then EditForn.Enabled := True;
//     If EditForn.Text <> '' then EditForn.Clear;
//
//  If Editdata.Enabled = False then Editdata.Enabled := True;
//     If Editdata.Text <> '' then Editdata.Clear;
//  If Edithora.Enabled = False then Edithora.Enabled := True;
//     If Edithora.Text <> '' then Edithora.Clear;
//  If editTempo.Enabled = False then editTempo.Enabled := True;
//     If editTempo.Text <> '' then editTempo.Clear;
//  If editTotaisLt.Enabled = False then editTotaisLt.Enabled := True;
//     If editTotaisLt.Text <> '' then editTotaisLt.Clear;
//  If EditPPL.Enabled = False then EditPPL.Enabled := True;
//     If EditPPL.Text <> '' then EditPPL.Clear;
//  If editEnc.Enabled = False then editEnc.Enabled := True;
//     If editEnc.Text <> '' then editEnc.Clear;
//  If editCanal.Enabled = False then editCanal.Enabled := True;
//     If editCanal.Text <> '' then editCanal.Clear;
//  If editString.Enabled = False then editString.Enabled := True;
//     If editString.Text <> '' then editString.Clear;
//  If editTotaisDin.Enabled = False then editTotaisDin.Enabled := True;
//     If editTotaisDin.Text <> '' then editTotaisDin.Clear;
//  LabelFrenstista.Caption := '';
//  LabelMotorista.Caption  := '';
//  LabelHorAnt.Caption     := '';
//  CheckBox1.Checked       := false;
//  CheckBox2.Checked       := true;
//  CheckBox3.Checked       := False;
//  CheckBox4.Checked       := True;
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
//    DMdados.AdoqAbastecimentosTIPOSAIDA.Value    := StrToInt(EditTipoS.Text);
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
//   If EditOper.Enabled = False then DMdados.AdoqAbastecimentosOPERACAO.Value := ''
//   else DMdados.AdoqAbastecimentosOPERACAO.Value := EditOper.Text;
// Conjunto Operacao
//   If EditConj.Enabled = False then DMdados.AdoqAbastecimentosCJ_OPER.Value := ''
//   else DMdados.AdoqAbastecimentosCJ_OPER.Value := EditConj.Text;
// Produto
//   DMdados.AdoqAbastecimentosPRODUTO.Value := EditProdut.Text;
// Setor
//   If EditSetor.Enabled = False then DMdados.AdoqAbastecimentosSETOR.Value := ''
//   else DMdados.AdoqAbastecimentosSETOR.Value := EditSetor.Text;
// Fazenda
//   If EditFaz.Enabled = False then DMdados.AdoqAbastecimentosFAZ.Value := ''
//   else DMdados.AdoqAbastecimentosFAZ.Value := EditFaz.Text;
//Dados da automacao
//  DMdados.AdoqAbastecimentosDATA.Value   := StrToDateTime((Editdata.Text)+' 00:00:00.000');
//  DMdados.AdoqAbastecimentosDATA.AsDateTime := StrToDateTime(copy(Editdata.Text,7,4)+copy(Editdata.Text, 7,4));
//  Dmdados.ADOQEstoquesaida.SQL.Add('and DATA = ' + '''' + COPY(DateToStr(MonthCalendar1.DATE),7,4) + '-' +
//  COPY(DateToStr(MonthCalendar1.DATE),4,2) + '-' + COPY(DateToStr(MonthCalendar1.DATE),1,2) + '''');
//  DMdados.AdoqAbastecimentosHORA.Value   := Edithora.Text;
//  DMdados.AdoqAbastecimentosQTDE.AsFloat := StrToFloat(editTotaisLt.Text);
//  DMdados.AdoqAbastecimentosVALOR.AsFloat:= StrToFloat(editTotaisDin.Text);
//  DMdados.AdoqAbastecimentosPRODUTO.Value:= EditProdut.Text;
//  DMdados.AdoqAbastecimentosBOMBA.Value  := editCanal.Text;
//  DMdados.AdoqAbastecimentosPLANTA.Value := '00010001';
  DMdados.AdoqAbastecimentos.Post;

  if EditCentroc.Enabled = false then EditCentroc.Enabled := true;
  if Edit5.Enabled = false then Edit5.Enabled := True;
  if EditVeic.Enabled = false then EditVeic.Enabled := True;

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
//  If Length(EditFrent.Text)=6 then begin
//   If DMdados.AdoQFunc.Locate('CODIGO',EditFrent.Text,[]) = True then begin
//      LabelFrenstista.Caption:=DMdados.AdoQFuncNOME.AsString;
//      EditTipoS.SetFocus;
//    end
end;


procedure TFrmAbastece.EditTipoSKeyPress(Sender: TObject; var Key: Char);
begin
  if EditCentroc.Enabled = false then EditCentroc.Enabled := True;
  if Edit5.Enabled = false then edit5.Enabled := True;
   if key=chr(13) then begin
      if EditTipoS.Text ='' then begin
        ShowMessage('Informe o tipo de saida');
        EditTipoS.SetFocus;
      end
      else begin
        if EditTipoS.Text = '01' then begin
           //01 - FROTA (CAMPO LINDO)
           ComboBox1.ItemIndex := 0;
           If EditCentroc.Enabled = True then EditCentroc.Enabled := False;
           EditTipoS.Text := '01';
           EditTurno.SetFocus;
        end
        else if EditTipoS.Text = '02' then begin
          //02 - TERCEIROS
          ComboBox1.ItemIndex := 1;
          EditTipoS.Text := '02';
          If Edit5.Enabled = True then Edit5.Enabled := False;
          If EditCentroc.Enabled = True then EditCentroc.Enabled := False;
          EditTurno.SetFocus;
        end
        else if EditTipoS.Text = '03' then begin
          //03 - INTERNO (DIVERSOS)
          ComboBox1.ItemIndex := 2;
          EditTipoS.Text := '03';
          If Edit5.Enabled = True then Edit5.Enabled := False;
          If EditVeic.Enabled = True then EditVeic.Enabled := False;
          If EditKm.Enabled = True then EditKm.Enabled := False;
          If Edit5.Enabled = True then Edit5.Enabled := False;
          EditTurno.SetFocus;
        end
        else begin
          Showmessage('Informe um tipo de abastecimento válido');
          EditTipoS.SetFocus;
        end;
      end;
   end;
end;

procedure TFrmAbastece.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(27) then close;
end;

procedure TFrmAbastece.SpeedButton7Click(Sender: TObject);
begin
  FrmConeccao.Show;
end;

procedure TFrmAbastece.Incorporarabastecimentopendente1Click(
  Sender: TObject);
var ab:Abast;
    id: Currency;
begin
    id:=0;
      DMdados.ADOQAbastecimentos.Close;
      DMdados.ADOQAbastecimentos.Open;
      DMdados.ADOQAbast_temp.Close;
      DMdados.ADOQAbast_temp.Open;
//  filtra abastecimentos da tabela temporaria
      id:= DMdados.ADOQAbast_tempID.Value;
      DMdados.ADOQAbast_temp.Filtered := False;
      DMdados.ADOQAbast_temp.Filter   := 'ID = ' + CurrToStr(id);
      DMdados.ADOQAbast_temp.Filtered := True;
// insert da tabela Abastecimentos
      DMdados.ADOQAbastecimentos.Insert;
      DMdados.ADOQAbastecimentos.Edit;
      DMdados.ADOQAbastecimentosEMPRESA.Value    := '00010001'; // EMPRESA planta
      DMdados.ADOQAbastecimentosVEICULO.AsString := EditVeic.Text;  //veiculo
      DMdados.ADOQAbastecimentosTURNO.Value      := EditTurno.Text; // turno
// Centro de Custo apenas para abastecimento interno
      If EditTurno.Enabled = True then
         DMdados.ADOQAbastecimentosCCUSTO.Value     := EditCentroc.Text // centro custo
      else
         DMdados.ADOQAbastecimentosCCUSTO.Value     := '';
         DMdados.ADOQAbastecimentosODOMETRO.Value   := StrToFloat(EditKm.Text); //odometro
         DMdados.ADOQAbastecimentosHORIMETRO.Value  := StrToFloat(EditKm.Text); //horimetro
         DMdados.ADOQAbastecimentosMOTORISTA.Value  := edit5.Text; //motorista
         DMdados.ADOQAbastecimentosDATA.Value       := DMdados.ADOQAbast_tempDATA.Value; // data
         DMdados.ADOQAbastecimentosHORA.Value       := DMdados.ADOQAbast_tempHORA.Value; // hora
         DMdados.ADOQAbastecimentosID.Value         := id;   // ID
         DMdados.ADOQAbastecimentosBOMBA.Value      := DMdados.ADOQAbast_tempBOMBA.Value; // bomba
         DMdados.ADOQAbastecimentosCCUSTO.Value     := EditCentroc.Text;                  //C.Custo
         DMdados.ADOQAbastecimentosVALOR.Value      := DMdados.ADOQAbast_tempVALOR_T.Value; //Valor
         DMdados.ADOQAbastecimentosPRODUTO.Value    := DMdados.ADOQAbast_tempPRODUTO.Value; // Produto
         DMdados.ADOQAbastecimentosQTDE.Value       := DMdados.ADOQAbast_tempQTDE.Value;    // Qtde
         DMdados.ADOQAbastecimentos.Post;
         DMdados.ADOQAbast_temp.Edit;
         DMdados.ADOQAbast_tempD_E_L_E_T_A_D_O.Value       := '*';
         DMdados.ADOQAbast_temp.Post;
//  exclui abastecimentos da tabela temporaria
         DMdados.ADOQAbast_temp.Filtered := False;
         DMdados.ADOQAbast_temp.Filter   := 'ID = ' + CurrToStr(id);
         DMdados.ADOQAbast_temp.Filtered := True;
         DMdados.ADOQAbast_temp.Delete;
// imprime abastecimentos
         DMdados.ADOQAbastecimentos.Filtered := False;
         DMdados.ADOQAbastecimentos.Filter   := 'ID = ' + CurrToStr(id);
         DMdados.ADOQAbastecimentos.Filtered := True;
//
         Panel3.Caption := 'Abastecimentos Pendentes : ' + IntToStr(DMdados.ADOQAbast_temp.RecordCount);
//limpar os campos para os novos abastecimentos
         EditVeic.Clear;
         EditKm.Clear;
         EditFrent.Clear;
         EditTipoS.Clear;
         EditTurno.Clear;
         EditSetor.Clear;
         EditFaz.Clear;
         EditAtiv.Clear;
         EditConj.Clear;
         label10.Caption := '';
         LabelHorAnt.Caption     := '';
         LabelFrenstista.Caption := '';
         LabelMotorista.Caption  := '';
         LabelSetor.Caption      := '';
         LabelFaz.Caption        := '';
         LabelAtiv.Caption       := '';
         LabelConj.Caption       := '';
// Atualiza checkbox Medidor Quebrado
         CheckBox1.Checked := False;
         CheckBox2.Checked := True;
// Atualiza checkbox Virada Odometro
         CheckBox3.Checked := False;
         CheckBox4.Checked := True;
//
         If Edit5.Enabled = True then Edit5.Clear;
         If EditCentroc.Enabled = True then EditCentroc.Clear;
// imprimir comprovante direto pra bematech
//      ComprovAb.QuickRep1.Print;
//visualizar impressao do comprovante de abastecimento
        ComprovAb.QuickRep1.Preview;
//
   DMdados.ADOQAbast_temp.Filtered := False;
//      Reimpressodeabastecimento1.Click;
end;

procedure TFrmAbastece.Button2Click(Sender: TObject);
begin
  DMdados.ADOQAbastecimentos.Filtered := True;
  DMdados.ADOQAbast_temp.Filtered := True;
end;

procedure TFrmAbastece.Button3Click(Sender: TObject);
begin
  DMdados.ADOQAbastecimentos.Filtered := False;
  DMdados.ADOQAbast_temp.Filtered := False;
end;

procedure TFrmAbastece.EditCentrocKeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
    If DMdados.ADOQCcusto.Locate('CODIGO',EditCentroc.Text, [])=True then begin
          LabelCentroc.Caption := DMdados.ADOQCcustoNOME.AsString;
          EditSetor.SetFocus;
    end
    else begin
    //       FrmAbastece.Edit5.Text := DMdados.AdoFunc.parameters.parambyname('Codigo').value;
       EditCentroc.SetFocus;
    end;
 end;
end;

procedure TFrmAbastece.FormShow(Sender: TObject);
begin
   FrmPrincipal.tela := 0;
end;

procedure TFrmAbastece.BtnCVeicClick(Sender: TObject);
begin
  FrmCVeic.ShowModal;
end;

procedure TFrmAbastece.BtnCMotClick(Sender: TObject);
begin
  FrmCMot.ShowModal;
end;

procedure TFrmAbastece.BitBtn4Click(Sender: TObject);
begin
   FrmCSetor.ShowModal
end;

procedure TFrmAbastece.BitBtn6Click(Sender: TObject);
begin
   FrmCFaz.ShowModal;
end;

procedure TFrmAbastece.EditSetorKeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
    If DMdados.ADOQSetor.Locate('CODIGO',EditSetor.Text, [])=True then begin
          LabelSetor.Caption := DMdados.ADOQSetorNOME.AsString;
          EditFaz.SetFocus;
          setores := DMdados.ADOQSetorNOME.AsString;
    end
    else begin
         If LabelMotorista.Caption = '' then
         begin
           beep;
           showmessage('Setor não encontrado!');
           Edit5.SetFocus;
         end
         else begin
           showmessage('Setor não encontrado!');
           Edit5.SetFocus;
         end;
    end;
 end;
end;

procedure TFrmAbastece.EditFazKeyPress(Sender: TObject; var Key: Char);
begin
 If key=chr(13) then begin
    If DMdados.ADOQFazendas.Locate('CODIGO',EditFaz.Text, [])=True then begin
          LabelFaz.Caption := DMdados.ADOQFazendasNOME.AsString;
          EditFaz.SetFocus;
    end
    else begin
    //       FrmAbastece.Edit5.Text := DMdados.AdoFunc.parameters.parambyname('Codigo').value;
       EditFaz.SetFocus;
    end;
 end;
end;

procedure TFrmAbastece.EditAtivKeyPress(Sender: TObject; var Key: Char);
begin
// inicia pesquisa ao pressionar ENTER no campo ATIVIDADE
 If key=chr(13) then begin
    If DMdados.ADOQAtividade.Locate('CODIGO',EditAtiv.Text, [])=True then begin
          LabelAtiv.Caption := DMdados.ADOQAtividadeNOME.AsString;
          EditConj.SetFocus;
    end
    else begin
       Showmessage('Informe o valor para o Campo Atividade');
       EditAtiv.SetFocus;
    end;
 end;
end;

procedure TFrmAbastece.BitBtn7Click(Sender: TObject);
begin
   FrmCAtiv.ShowModal;
end;

procedure TFrmAbastece.Button4Click(Sender: TObject);
var i: integer;
begin

for i := ComponentCount -1 downto 0 do
begin
  if (Components[i] is TEdit)     then (Components[i] as TEdit).Text     := '';
  If (Components[i] is TComboBox) then (Components[i] as TComboBox).Text := '';
end;
end;

procedure TFrmAbastece.EditConjKeyPress(Sender: TObject; var Key: Char);
begin
// inicia pesquisa ao pressionar ENTER no campo ATIVIDADE
 If key=chr(13) then begin
    If DMdados.ADOQAtividade.Locate('CODIGO',EditAtiv.Text, [])=True then begin
          LabelAtiv.Caption := DMdados.ADOQAtividadeNOME.AsString;
          EditConj.SetFocus;
    end
    else begin
       Showmessage('Informe o valor para o Campo Atividade');
       EditAtiv.SetFocus;
    end;
 end;
end;

procedure TFrmAbastece.BitBtn11Click(Sender: TObject);
begin

// insert da tabela Abastecimentos
      DMdados.ADOQAbastecimentos.Insert;
      DMdados.ADOQAbastecimentos.Edit;
      DMdados.ADOQAbastecimentosEMPRESA.Value    := '00010001'; // EMPRESA planta
      DMdados.ADOQAbastecimentosVEICULO.AsString := EditVeic.Text;  //veiculo
      DMdados.ADOQAbastecimentosTURNO.Value      := EditTurno.Text; // turno
// Centro de Custo apenas para abastecimento interno
      If EditTurno.Enabled = True then
         DMdados.ADOQAbastecimentosCCUSTO.Value     := EditCentroc.Text // centro custo
      else
         DMdados.ADOQAbastecimentosCCUSTO.Value     := '';
         DMdados.ADOQAbastecimentosODOMETRO.Value   := StrToFloat(EditKm.Text); //odometro
         DMdados.ADOQAbastecimentosHORIMETRO.Value  := StrToFloat(EditKm.Text); //horimetro
         DMdados.ADOQAbastecimentosMOTORISTA.Value  := edit5.Text; //motorista
         DMdados.ADOQAbastecimentosDATA.Value       := DMdados.ADOQAbast_tempDATA.Value; // data
         DMdados.ADOQAbastecimentosHORA.Value       := DMdados.ADOQAbast_tempHORA.Value; // hora
         DMdados.ADOQAbastecimentosID.Value         := ident;   // ID
         DMdados.ADOQAbastecimentosBOMBA.Value      := DMdados.ADOQAbast_tempBOMBA.Value; // bomba
         DMdados.ADOQAbastecimentosCCUSTO.Value     := EditCentroc.Text;                  //C.Custo
         DMdados.ADOQAbastecimentosVALOR.Value      := DMdados.ADOQAbast_tempVALOR_T.Value; //Valor
         DMdados.ADOQAbastecimentosPRODUTO.Value    := DMdados.ADOQAbast_tempPRODUTO.Value; // Produto
         DMdados.ADOQAbastecimentosQTDE.Value       := DMdados.ADOQAbast_tempQTDE.Value;    // Qtde
         DMdados.ADOQAbastecimentos.Post;
//         DMdados.ADOQAbast_temp.Edit;
//         DMdados.ADOQAbast_tempD_E_L_E_T_A_D_O.Value       := '*';
//         DMdados.ADOQAbast_temp.Post;
//  exclui abastecimentos da tabela temporaria
         DMdados.ADOQAbast_temp.Filtered := False;
//         DMdados.ADOQAbast_temp.Filter   := 'ID = ' + CurrToStr(id);
         DMdados.ADOQAbast_temp.Filtered := True;
         DMdados.ADOQAbast_temp.Delete;
// imprime abastecimentos
//         DMdados.ADOQAbastecimentos.Filtered := False;
//         DMdados.ADOQAbastecimentos.Filter   := 'ID = ' + CurrToStr(id);
//         DMdados.ADOQAbastecimentos.Filtered := True;
//
         Panel3.Caption := 'Abastecimentos Pendentes : ' + IntToStr(DMdados.ADOQAbast_temp.RecordCount);
//limpar os campos para os novos abastecimentos
         EditVeic.Clear;
         EditKm.Clear;
         EditFrent.Clear;
         EditTipoS.Clear;
         EditTurno.Clear;
         EditSetor.Clear;
         EditFaz.Clear;
         EditAtiv.Clear;
         EditConj.Clear;
         label10.Caption := '';
         LabelHorAnt.Caption     := '';
         LabelFrenstista.Caption := '';
         LabelMotorista.Caption  := '';
         LabelSetor.Caption      := '';
         LabelFaz.Caption        := '';
         LabelAtiv.Caption       := '';
         LabelConj.Caption       := '';
// Atualiza checkbox Medidor Quebrado
         CheckBox1.Checked := False;
         CheckBox2.Checked := True;
// Atualiza checkbox Virada Odometro
         CheckBox3.Checked := False;
         CheckBox4.Checked := True;
//
         If Edit5.Enabled = True then Edit5.Clear;
         If EditCentroc.Enabled = True then EditCentroc.Clear;
// imprimir comprovante direto pra bematech
//      ComprovAb.QuickRep1.Print;
//visualizar impressao do comprovante de abastecimento
//        ComprovAb.QuickRep1.Preview;
//
//   DMdados.ADOQAbast_temp.Filtered := False;
//      Reimpressodeabastecimento1.Click;
end;

procedure TFrmAbastece.BitBtn12Click(Sender: TObject);
begin
   EditSetor.Text := '006';
//   EditSetor.OnKeyPress;
   EditFaz.Text   := '001';
//   EditFaz.OnKeyPress;
   EditAtiv.Text  := '231';
//   EditAtiv.OnKeyPress;
   EditConj.Text  := '014';
//   EditConj.OnKeyPress;
   DBGrid2.SetFocus;
end;

procedure TFrmAbastece.DBGrid2DblClick(Sender: TObject);
begin
      ident:= DMdados.ADOQAbast_tempID.AsCurrency;
      DMdados.ADOQAbast_temp.Filtered := False;
      DMdados.ADOQAbast_temp.Filter   := 'ID = ' + CurrToStr(ident);
      DMdados.ADOQAbast_temp.Filtered := True;
end;

end.

