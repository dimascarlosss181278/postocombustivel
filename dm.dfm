object DMdados: TDMdados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 289
  Top = 173
  Height = 589
  Width = 751
  object AdoFunc: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc;Data Source=172.16.10.5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 8
  end
  object FuncMot: TADOQuery
    Connection = AdoFunc
    Parameters = <
      item
        Name = 'codigo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select F.CODIGO, F.NOME,F.FUNCAO'
      'FROM FUNC F'
      'WHERE '
      '(F.DATA_DEMISSAO >= GETDATE() OR  F.DATA_DEMISSAO IS NULL) '
      'AND F.ATIVO=1 AND F.FUNCAO=0'
      'and f.codigo=:codigo')
    Left = 320
    Top = 9
    object FuncMotCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object FuncMotNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object FuncMotFUNCAO: TIntegerField
      FieldName = 'FUNCAO'
    end
  end
  object ABASTECE: TADOTable
    Connection = AdoFunc
    TableName = 'MV_IMP_ABAST'
    Left = 319
    Top = 59
    object ABASTECECO_PLANTA: TStringField
      FieldName = 'CO_PLANTA'
      Size = 10
    end
    object ABASTECENR_REQUIS: TStringField
      FieldName = 'NR_REQUIS'
      Size = 11
    end
    object ABASTECECO_EMPRESA: TStringField
      FieldName = 'CO_EMPRESA'
      Size = 10
    end
    object ABASTECEDT_DATA: TDateTimeField
      FieldName = 'DT_DATA'
    end
    object ABASTECEDT_DTMOVIMENTO: TDateTimeField
      FieldName = 'DT_DTMOVIMENTO'
    end
    object ABASTECEFRENTISTA: TStringField
      FieldName = 'FRENTISTA'
      Size = 10
    end
    object ABASTECECO_TIPOABA: TStringField
      FieldName = 'CO_TIPOABA'
      Size = 10
    end
    object ABASTECECO_BOMBA: TStringField
      FieldName = 'CO_BOMBA'
      Size = 10
    end
    object ABASTECECO_VEICULO: TStringField
      FieldName = 'CO_VEICULO'
      Size = 10
    end
    object ABASTECECO_MOTORISTA: TStringField
      FieldName = 'CO_MOTORISTA'
      Size = 10
    end
    object ABASTECECO_CJ_OPER: TStringField
      FieldName = 'CO_CJ_OPER'
      Size = 10
    end
    object ABASTECECO_OPERAGR: TStringField
      FieldName = 'CO_OPERAGR'
      Size = 10
    end
    object ABASTECEQT_LITROS: TBCDField
      FieldName = 'QT_LITROS'
      Precision = 10
      Size = 3
    end
    object ABASTECENR_MEDIDOR: TBCDField
      FieldName = 'NR_MEDIDOR'
      Precision = 15
      Size = 2
    end
    object ABASTECESN_QUEBRA_MED: TIntegerField
      FieldName = 'SN_QUEBRA_MED'
    end
    object ABASTECEVL_VALOR: TBCDField
      FieldName = 'VL_VALOR'
      Precision = 15
    end
    object ABASTECECO_LOCAL1: TStringField
      FieldName = 'CO_LOCAL1'
      Size = 10
    end
    object ABASTECECO_LOCAL2: TStringField
      FieldName = 'CO_LOCAL2'
      Size = 10
    end
    object ABASTECECO_TURNO: TStringField
      FieldName = 'CO_TURNO'
      Size = 3
    end
    object ABASTECECO_CCUSTO: TStringField
      FieldName = 'CO_CCUSTO'
      Size = 10
    end
    object ABASTECECO_PRODUTO: TStringField
      FieldName = 'CO_PRODUTO'
      Size = 22
    end
    object ABASTECECO_FORNECEDOR: TStringField
      FieldName = 'CO_FORNECEDOR'
      Size = 15
    end
    object ABASTECEDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 250
    end
    object ABASTECENR_CTR: TIntegerField
      FieldName = 'NR_CTR'
    end
  end
  object AdoQFunc: TADOQuery
    Connection = AdoFunc
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'FROM FUNC F'
      'WHERE '
      '(F.DATA_DEMISSAO >= GETDATE() OR  F.DATA_DEMISSAO IS NULL) '
      'AND F.ATIVO=1 ')
    Left = 232
    Top = 14
    object AdoQFuncCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object AdoQFuncNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object AdoQFuncFUNCAO: TIntegerField
      FieldName = 'FUNCAO'
    end
  end
  object DsFunc: TDataSource
    DataSet = AdoQFunc
    Left = 128
    Top = 8
  end
  object AdoVeic: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc2;Data Source=172.16.10.5;' +
      'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096' +
      ';Workstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 56
  end
  object AdoQVeic: TADOQuery
    Connection = AdoVeic
    Parameters = <>
    SQL.Strings = (
      'select * from VEICULOS')
    Left = 232
    Top = 66
    object AdoQVeicCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object AdoQVeicNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object AdoQVeicATIV: TStringField
      FieldName = 'ATIV'
      Size = 10
    end
    object AdoQVeicPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object AdoQVeicMEDIQUEB: TIntegerField
      FieldName = 'MEDIQUEB'
    end
    object AdoQVeicODOMETRO_ULT_FECH: TBCDField
      FieldName = 'ODOMETRO_ULT_FECH'
      Precision = 15
      Size = 2
    end
  end
  object DsVeic: TDataSource
    DataSet = AdoQVeic
    Left = 128
    Top = 56
  end
  object ADOAbast_temp: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc;Data Source=172.16.10.5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 272
  end
  object ADOQAbast_temp: TADOQuery
    Connection = ADOAbast_temp
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from ABAST_TEMP where D_E_L_E_T_A_D_O is null order by ' +
        'id')
    Left = 232
    Top = 274
    object ADOQAbast_tempID: TBCDField
      FieldName = 'ID'
      Precision = 10
      Size = 0
    end
    object ADOQAbast_tempDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ADOQAbast_tempTEMPO_ABA: TStringField
      FieldName = 'TEMPO_ABA'
      Size = 8
    end
    object ADOQAbast_tempBOMBA: TStringField
      DisplayWidth = 8
      FieldName = 'BOMBA'
      Size = 10
    end
    object ADOQAbast_tempHORA: TStringField
      DisplayWidth = 8
      FieldName = 'HORA'
      Size = 5
    end
    object ADOQAbast_tempQTDE: TBCDField
      DisplayWidth = 11
      FieldName = 'QTDE'
      Precision = 10
      Size = 3
    end
    object ADOQAbast_tempVALOR_UNIT: TBCDField
      DisplayWidth = 8
      FieldName = 'VALOR_UNIT'
      Precision = 10
    end
    object ADOQAbast_tempVALOR_T: TBCDField
      DisplayWidth = 10
      FieldName = 'VALOR_T'
      Precision = 15
    end
    object ADOQAbast_tempPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 22
    end
    object ADOQAbast_tempD_E_L_E_T_A_D_O: TStringField
      FieldName = 'D_E_L_E_T_A_D_O'
      Size = 1
    end
  end
  object DSAbast_temp: TDataSource
    DataSet = ADOQAbast_temp
    Left = 128
    Top = 272
  end
  object AdoMapaPrev: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc;Data Source=172.16.10.5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 112
  end
  object AdoQMapa: TADOQuery
    Connection = AdoMapaPrev
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codvei'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select MV.ID_MAPA,MV.CO_VEICULO, VE.NOME, MV.DT_EXECUCAO, MV.CO_' +
        'PROCESSO,MV.DT_GERACAO, MV.CO_ATIVIDADE'
      'from  MV_MAPA_FROTA MV'
      '  INNER JOIN VEICULOS VE'
      '  ON MV.CO_VEICULO = VE.CODIGO     '
      'where '
      '  (DT_EXECUCAO > GETDATE())'
      '  OR (DT_EXECUCAO IS NULL)')
    Left = 232
    Top = 118
  end
  object DsMapa: TDataSource
    DataSet = AdoQMapa
    Left = 128
    Top = 112
  end
  object AdoSaidaaba: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc;Data Source=172.16.10.5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 160
  end
  object AdoQSaidaaba: TADOQuery
    Connection = AdoSaidaaba
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from SAIDAABA')
    Left = 232
    Top = 170
  end
  object DSSaidaaba: TDataSource
    DataSet = AdoQSaidaaba
    Left = 128
    Top = 160
  end
  object ADOAbastecimentos: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=P@ssw0rdsql;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=Biosalc;Data Source=172.16.10.5'
    DefaultDatabase = 'Biosalc'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 38
    Top = 217
  end
  object ADOQAbastecimentos: TADOQuery
    Connection = ADOAbastecimentos
    CursorType = ctStatic
    AfterPost = ADOQAbastecimentosAfterPost
    Parameters = <>
    SQL.Strings = (
      'select '
      'AB.ID, '
      'AB.EMPRESA, '
      'AB.VEICULO, '
      'AB.BOMBA,'
      'AB.MOTORISTA, '
      'AB.DATA, '
      'AB.HORA, '
      'AB.ODOMETRO,'
      'AB.HORIMETRO,'
      'AB.PRODUTO,'
      'AB.QTDE,'
      'AB.TURNO,'
      'AB.CCUSTO,'
      'AB.D_E_L_E_T_A_D_O,'
      'AB.VALOR,'
      'AB.TIPOABA,'
      'AB.SETOR,'
      'AB.FAZENDA,'
      'AB.OPERACAO,'
      'AB.CJOPERACAO,'
      'AB.QUEBRAMED,'
      'AB.VIRADAODOMETRO,'
      'AB.CODPROD'
      'from ABASTECIMENTOS AB'
      'ORDER BY AB.ID   ')
    Left = 240
    Top = 222
    object ADOQAbastecimentosID: TBCDField
      FieldName = 'ID'
      Precision = 10
      Size = 0
    end
    object ADOQAbastecimentosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 10
    end
    object ADOQAbastecimentosVEICULO: TStringField
      FieldName = 'VEICULO'
      Size = 10
    end
    object ADOQAbastecimentosBOMBA: TStringField
      FieldName = 'BOMBA'
      Size = 10
    end
    object ADOQAbastecimentosMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Size = 10
    end
    object ADOQAbastecimentosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ADOQAbastecimentosHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object ADOQAbastecimentosODOMETRO: TBCDField
      FieldName = 'ODOMETRO'
      Precision = 15
      Size = 2
    end
    object ADOQAbastecimentosHORIMETRO: TBCDField
      FieldName = 'HORIMETRO'
      Precision = 15
      Size = 2
    end
    object ADOQAbastecimentosCODPROD: TStringField
      FieldName = 'CODPROD'
      Size = 6
    end
    object ADOQAbastecimentosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 22
    end
    object ADOQAbastecimentosQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 10
      Size = 3
    end
    object ADOQAbastecimentosTURNO: TStringField
      FieldName = 'TURNO'
      Size = 3
    end
    object ADOQAbastecimentosCCUSTO: TStringField
      FieldName = 'CCUSTO'
      Size = 10
    end
    object ADOQAbastecimentosD_E_L_E_T_A_D_O: TStringField
      FieldName = 'D_E_L_E_T_A_D_O'
      Size = 1
    end
    object ADOQAbastecimentosVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 15
    end
    object ADOQAbastecimentosTIPOABA: TStringField
      FieldName = 'TIPOABA'
      Size = 10
    end
    object ADOQAbastecimentosSETOR: TStringField
      FieldName = 'SETOR'
      Size = 4
    end
    object ADOQAbastecimentosFAZENDA: TStringField
      FieldName = 'FAZENDA'
      Size = 4
    end
    object ADOQAbastecimentosOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 4
    end
    object ADOQAbastecimentosCJOPERACAO: TStringField
      FieldName = 'CJOPERACAO'
      Size = 4
    end
    object ADOQAbastecimentosQUEBRAMED: TIntegerField
      FieldName = 'QUEBRAMED'
    end
    object ADOQAbastecimentosVIRADAODOMETRO: TIntegerField
      FieldName = 'VIRADAODOMETRO'
    end
  end
  object DSAbastecimentos: TDataSource
    DataSet = ADOQAbastecimentos
    Left = 136
    Top = 220
  end
  object ADOSRA010: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Protheus12_T;Data Source=172.16.10.5'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 328
  end
  object ADOQSRA010: TADOQuery
    Connection = ADOSRA010
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select RA_MAT,RA_NOME,RA_DEMISSA from SRA010 '
      'where '
      '(RA_DEMISSA is null) or'
      '(RA_DEMISSA = '#39#39')'
      'order by RA_NOME')
    Left = 232
    Top = 326
    object ADOQSRA010RA_MAT: TStringField
      FieldName = 'RA_MAT'
      Size = 6
    end
    object ADOQSRA010RA_NOME: TStringField
      FieldName = 'RA_NOME'
      Size = 50
    end
    object ADOQSRA010RA_DEMISSA: TStringField
      FieldName = 'RA_DEMISSA'
      Size = 8
    end
  end
  object DSSRA010: TDataSource
    DataSet = ADOQSRA010
    Left = 128
    Top = 328
  end
  object AdoSetor: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Biosalc;Data Source=172.16.10.5;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 378
  end
  object ADOQSetor: TADOQuery
    Connection = AdoSetor
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from SETOR order by nome')
    Left = 232
    Top = 378
    object ADOQSetorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ADOQSetorNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object ADOQSetorPLANTA: TStringField
      FieldName = 'PLANTA'
      Size = 10
    end
    object ADOQSetorCOR_GIS: TBCDField
      FieldName = 'COR_GIS'
      Precision = 10
      Size = 0
    end
    object ADOQSetorRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 15
    end
    object ADOQSetorREGIAO_AGR: TStringField
      FieldName = 'REGIAO_AGR'
      Size = 10
    end
  end
  object DSSetor: TDataSource
    DataSet = ADOQSetor
    Left = 128
    Top = 378
  end
  object ADOFazendas: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Biosalc;Data Source=172.16.10.5;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 426
  end
  object ADOQFazendas: TADOQuery
    Connection = ADOFazendas
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FAZENDAS order by nome')
    Left = 232
    Top = 431
    object ADOQFazendasSETOR: TStringField
      FieldName = 'SETOR'
      Size = 10
    end
    object ADOQFazendasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ADOQFazendasFRENTE: TStringField
      FieldName = 'FRENTE'
      Size = 10
    end
    object ADOQFazendasNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object ADOQFazendasCMUN: TStringField
      FieldName = 'CMUN'
      Size = 10
    end
    object ADOQFazendasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 10
    end
    object ADOQFazendasTAXAS: TStringField
      FieldName = 'TAXAS'
      Size = 10
    end
    object ADOQFazendasTIPO: TBCDField
      FieldName = 'TIPO'
      Precision = 3
      Size = 2
    end
  end
  object DSFazendas: TDataSource
    DataSet = ADOQFazendas
    Left = 128
    Top = 426
  end
  object ADOCcusto: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Biosalc;Data Source=172.16.10.5;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 31
    Top = 483
  end
  object ADOQCcusto: TADOQuery
    Connection = ADOCcusto
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CODIGO,NOME, ATIVO from CCUSTO WHERE ATIVO = '#39'1'#39' ORDER BY' +
        ' NOME')
    Left = 231
    Top = 488
    object ADOQCcustoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ADOQCcustoNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object ADOQCcustoATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
  end
  object DSCcusto: TDataSource
    DataSet = ADOQCcusto
    Left = 127
    Top = 483
  end
  object ADOAtividade: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Biosalc;Data Source=172.16.10.5;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 403
    Top = 10
  end
  object ADOQAtividade: TADOQuery
    Connection = ADOAtividade
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT CODIGO, NOME, TIPO,UNIDADE FROM OPERAGR ORDER BY NOME')
    Left = 603
    Top = 10
    object ADOQAtividadeCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ADOQAtividadeTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ADOQAtividadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object ADOQAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object DSAtividade: TDataSource
    DataSet = ADOQAtividade
    Left = 499
    Top = 10
  end
  object Session1: TSession
    KeepConnections = False
    Left = 320
    Top = 120
  end
  object ADOCJAtividade: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=relat;Persist Security Info=True;Us' +
      'er ID=relat;Initial Catalog=Biosalc;Data Source=172.16.10.5;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=UCL-TI-04;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 403
    Top = 74
  end
  object ADQCJAtividade: TADOQuery
    Connection = ADOCJAtividade
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from OPERAGR order by nome')
    Left = 603
    Top = 74
    object StringField6: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object StringField8: TStringField
      FieldName = 'PLANTA'
      Size = 10
    end
    object BCDField2: TBCDField
      FieldName = 'COR_GIS'
      Precision = 10
      Size = 0
    end
    object StringField9: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'REGIAO_AGR'
      Size = 10
    end
  end
  object DSCJAtividade: TDataSource
    DataSet = ADQCJAtividade
    Left = 499
    Top = 74
  end
end
