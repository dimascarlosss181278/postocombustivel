unit dm;

interface

uses
  SysUtils, Classes, DB, ADODB, DBTables;

type
  TDMdados = class(TDataModule)
    AdoFunc: TADOConnection;
    FuncMot: TADOQuery;
    ABASTECE: TADOTable;
    ABASTECECO_PLANTA: TStringField;
    ABASTECENR_REQUIS: TStringField;
    ABASTECECO_EMPRESA: TStringField;
    ABASTECEDT_DATA: TDateTimeField;
    ABASTECEDT_DTMOVIMENTO: TDateTimeField;
    ABASTECEFRENTISTA: TStringField;
    ABASTECECO_TIPOABA: TStringField;
    ABASTECECO_BOMBA: TStringField;
    ABASTECECO_VEICULO: TStringField;
    ABASTECECO_MOTORISTA: TStringField;
    ABASTECECO_CJ_OPER: TStringField;
    ABASTECECO_OPERAGR: TStringField;
    ABASTECEQT_LITROS: TBCDField;
    ABASTECENR_MEDIDOR: TBCDField;
    ABASTECESN_QUEBRA_MED: TIntegerField;
    ABASTECEVL_VALOR: TBCDField;
    ABASTECECO_LOCAL1: TStringField;
    ABASTECECO_LOCAL2: TStringField;
    ABASTECECO_TURNO: TStringField;
    ABASTECECO_CCUSTO: TStringField;
    ABASTECECO_PRODUTO: TStringField;
    ABASTECECO_FORNECEDOR: TStringField;
    ABASTECEDS_OBS: TStringField;
    ABASTECENR_CTR: TIntegerField;
    FuncMotCODIGO: TStringField;
    FuncMotNOME: TStringField;
    FuncMotFUNCAO: TIntegerField;
    AdoQFunc: TADOQuery;
    DsFunc: TDataSource;
    AdoVeic: TADOConnection;
    AdoQVeic: TADOQuery;
    DsVeic: TDataSource;
    ADOAbast_temp: TADOConnection;
    ADOQAbast_temp: TADOQuery;
    DSAbast_temp: TDataSource;
    AdoMapaPrev: TADOConnection;
    AdoQMapa: TADOQuery;
    DsMapa: TDataSource;
    AdoSaidaaba: TADOConnection;
    AdoQSaidaaba: TADOQuery;
    DSSaidaaba: TDataSource;
    ADOAbastecimentos: TADOConnection;
    ADOQAbastecimentos: TADOQuery;
    DSAbastecimentos: TDataSource;
    ADOQAbast_tempHORA: TStringField;
    ADOQAbast_tempBOMBA: TStringField;
    ADOQAbast_tempVALOR_T: TBCDField;
    ADOQAbast_tempPRODUTO: TStringField;
    ADOQAbast_tempQTDE: TBCDField;
    ADOQAbast_tempVALOR_UNIT: TBCDField;
    ADOQAbast_tempTEMPO_ABA: TStringField;
    ADOQAbast_tempID: TBCDField;
    ADOQAbast_tempDATA: TDateTimeField;
    ADOQAbast_tempD_E_L_E_T_A_D_O: TStringField;
    ADOSRA010: TADOConnection;
    ADOQSRA010: TADOQuery;
    DSSRA010: TDataSource;
    ADOQSRA010RA_MAT: TStringField;
    ADOQSRA010RA_NOME: TStringField;
    ADOQSRA010RA_DEMISSA: TStringField;
    AdoQVeicCODIGO: TStringField;
    AdoQVeicNOME: TStringField;
    AdoQVeicATIV: TStringField;
    AdoQVeicPLACA: TStringField;
    AdoQVeicMEDIQUEB: TIntegerField;
    AdoQVeicODOMETRO_ULT_FECH: TBCDField;
    AdoQFuncCODIGO: TStringField;
    AdoQFuncNOME: TStringField;
    AdoQFuncFUNCAO: TIntegerField;
    AdoSetor: TADOConnection;
    ADOQSetor: TADOQuery;
    DSSetor: TDataSource;
    ADOQSetorCODIGO: TStringField;
    ADOQSetorNOME: TStringField;
    ADOQSetorPLANTA: TStringField;
    ADOQSetorCOR_GIS: TBCDField;
    ADOQSetorRESPONSAVEL: TStringField;
    ADOQSetorREGIAO_AGR: TStringField;
    ADOFazendas: TADOConnection;
    ADOQFazendas: TADOQuery;
    DSFazendas: TDataSource;
    ADOQFazendasSETOR: TStringField;
    ADOQFazendasCODIGO: TStringField;
    ADOQFazendasTAXAS: TStringField;
    ADOQFazendasFORNECEDOR: TStringField;
    ADOQFazendasFRENTE: TStringField;
    ADOQFazendasCMUN: TStringField;
    ADOQFazendasNOME: TStringField;
    ADOQFazendasTIPO: TBCDField;
    ADOCcusto: TADOConnection;
    ADOQCcusto: TADOQuery;
    DSCcusto: TDataSource;
    ADOQCcustoCODIGO: TStringField;
    ADOQCcustoNOME: TStringField;
    ADOQCcustoATIVO: TIntegerField;
    ADOAtividade: TADOConnection;
    ADOQAtividade: TADOQuery;
    DSAtividade: TDataSource;
    Session1: TSession;
    ADOCJAtividade: TADOConnection;
    ADQCJAtividade: TADOQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BCDField2: TBCDField;
    StringField9: TStringField;
    StringField10: TStringField;
    DSCJAtividade: TDataSource;
    ADOQAtividadeCODIGO: TStringField;
    ADOQAtividadeTIPO: TIntegerField;
    ADOQAtividadeUNIDADE: TStringField;
    ADOQAtividadeNOME: TStringField;
    ADOQAbastecimentosID: TBCDField;
    ADOQAbastecimentosEMPRESA: TStringField;
    ADOQAbastecimentosVEICULO: TStringField;
    ADOQAbastecimentosBOMBA: TStringField;
    ADOQAbastecimentosMOTORISTA: TStringField;
    ADOQAbastecimentosDATA: TDateTimeField;
    ADOQAbastecimentosHORA: TStringField;
    ADOQAbastecimentosODOMETRO: TBCDField;
    ADOQAbastecimentosHORIMETRO: TBCDField;
    ADOQAbastecimentosPRODUTO: TStringField;
    ADOQAbastecimentosQTDE: TBCDField;
    ADOQAbastecimentosTURNO: TStringField;
    ADOQAbastecimentosCCUSTO: TStringField;
    ADOQAbastecimentosD_E_L_E_T_A_D_O: TStringField;
    ADOQAbastecimentosVALOR: TBCDField;
    ADOQAbastecimentosTIPOABA: TStringField;
    ADOQAbastecimentosSETOR: TStringField;
    ADOQAbastecimentosFAZENDA: TStringField;
    ADOQAbastecimentosOPERACAO: TStringField;
    ADOQAbastecimentosCJOPERACAO: TStringField;
    ADOQAbastecimentosQUEBRAMED: TIntegerField;
    ADOQAbastecimentosVIRADAODOMETRO: TIntegerField;
    ADOQAbastecimentosCODPROD: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ADOQAbastecimentosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMdados: TDMdados;

implementation

uses UnitCCcusto;

{$R *.dfm}

procedure TDMdados.DataModuleCreate(Sender: TObject);
begin
  if AdoQFunc.Active=false then AdoQFunc.Active:=True;
  if AdoQSaidaaba.Active=false then AdoQSaidaaba.Active:=True;
  if AdoQVeic.Active=false then AdoQVeic.Active:=True;
  if ADOQAbastecimentos.Active=false then AdoqAbastecimentos.Active:=True;
  if ADOQAbast_temp.Active=false then ADOQAbast_temp.Active := True;
  if ADOQSRA010.Active=false then ADOQSRA010.Active := true;
  if ADOQSetor.Active=false then ADOQSetor.Active := true;
  if ADOQCcusto.Active=false then ADOQCcusto.Active := true;
  if ADOQFazendas.Active=false then ADOQFazendas.Active := true;
  if ADOQAtividade.Active=false then ADOQAtividade.Active := true;

end;

procedure TDMdados.DataModuleDestroy(Sender: TObject);
begin
  AdoQFunc.Active           := False;
  AdoQSaidaaba.Active       := False;
  AdoQVeic.Active           := False;
  AdoqAbastecimentos.Active := False;
  ADOQAbast_temp.Active     := False;
  ADOQSRA010.Active         := False;
  ADOQSetor.Active          := False;
end;

procedure TDMdados.ADOQAbastecimentosAfterPost(DataSet: TDataSet);
begin
  DMdados.ADOQAbastecimentos.Close;
  DMdados.ADOQAbastecimentos.Open;

  DMdados.ADOQAbast_temp.Close;
  DMdados.ADOQAbast_temp.Open;
end;

end.
