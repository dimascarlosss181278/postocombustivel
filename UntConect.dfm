object FrmConeccao: TFrmConeccao
  Left = 493
  Top = 104
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Conec'#231#227'o'
  ClientHeight = 371
  ClientWidth = 211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 26
    Top = 4
    Width = 154
    Height = 309
    ActivePage = TabSheet14
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Porta Serial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      object Label1: TLabel
        Left = 0
        Top = 12
        Width = 54
        Height = 16
        Caption = 'N'#250'mero :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Shape2: TShape
        Left = 104
        Top = 40
        Width = 17
        Height = 17
        Brush.Color = clRed
        Pen.Color = clMaroon
        Shape = stCircle
      end
      object Shape4: TShape
        Left = 72
        Top = 8
        Width = 17
        Height = 17
        Brush.Color = clRed
        Shape = stCircle
      end
      object SpinEdit1: TSpinEdit
        Left = 93
        Top = 8
        Width = 49
        Height = 22
        MaxValue = 99
        MinValue = 1
        TabOrder = 0
        Value = 1
      end
      object Button1: TButton
        Left = 3
        Top = 37
        Width = 139
        Height = 25
        Caption = 'Abre serial'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 3
        Top = 65
        Width = 139
        Height = 25
        Caption = 'Fecha serial'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Panel1: TPanel
        Left = 3
        Top = 96
        Width = 140
        Height = 101
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 3
        object RadioButton3: TRadioButton
          Left = 12
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Porta Aberta'
          TabOrder = 0
        end
        object RadioButton4: TRadioButton
          Left = 12
          Top = 38
          Width = 113
          Height = 17
          Caption = 'Porta Fechada'
          TabOrder = 1
        end
        object Button4: TButton
          Left = 7
          Top = 68
          Width = 125
          Height = 25
          Caption = 'Consultar Serial'
          TabOrder = 2
          OnClick = Button4Click
        end
      end
      object Panel9: TPanel
        Left = 3
        Top = 204
        Width = 140
        Height = 65
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 4
        object RadioButton9: TRadioButton
          Left = 8
          Top = 10
          Width = 113
          Height = 17
          Caption = 'Comunicando'
          TabOrder = 0
        end
        object Button23: TButton
          Left = 7
          Top = 32
          Width = 125
          Height = 25
          Caption = 'Atualiza'
          TabOrder = 1
          OnClick = Button23Click
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Socket'
      ImageIndex = 1
      object Label38: TLabel
        Left = 1
        Top = 5
        Width = 10
        Height = 13
        Caption = 'IP'
      end
      object Shape3: TShape
        Left = 112
        Top = 24
        Width = 17
        Height = 17
        Brush.Color = clRed
        Shape = stCircle
      end
      object Edit23: TEdit
        Left = 2
        Top = 20
        Width = 103
        Height = 21
        TabOrder = 0
        Text = '172.16.10.94'
      end
      object Button30: TButton
        Left = 2
        Top = 45
        Width = 141
        Height = 25
        Caption = 'Conectar'
        TabOrder = 1
        OnClick = Button30Click
      end
      object Button31: TButton
        Left = 2
        Top = 74
        Width = 141
        Height = 25
        Caption = 'Desconectar'
        TabOrder = 2
        OnClick = Button31Click
      end
      object Panel8: TPanel
        Left = 3
        Top = 106
        Width = 140
        Height = 101
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 3
        object RadioButton6: TRadioButton
          Left = 12
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Conectado'
          TabOrder = 0
        end
        object RadioButton7: TRadioButton
          Left = 12
          Top = 38
          Width = 113
          Height = 17
          Caption = 'Desconectado'
          TabOrder = 1
        end
        object Button32: TButton
          Left = 7
          Top = 68
          Width = 125
          Height = 25
          Caption = 'Consultar Socket'
          TabOrder = 2
          OnClick = Button32Click
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 328
    Width = 153
    Height = 33
    Caption = '&Sair'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      0E060000424D0E06000000000000360000002800000016000000160000000100
      180000000000D8050000C30E0000C30E00000000000000000000FFFFFFF2F2F2
      F2F2F2D3D3D3E8E8E8F5F5F5DBDBDBDDDDDDECECECEEEEEED3D3D3EBEBEBF7F7
      F723230F4F4F00B2B2A8E9E9E9D6D6D6EBEBEBFAFAFAFFFFFFFFFFFF0000FFFF
      FFF0F0F0D8D8D8EDEDEDEAEAEADFDFDFDCDCDCF4F4F4E6E6E6D7D7D7F2F2F2E7
      E7E7DDDDDD4C4C0CFFFF006868119B9B9BF4F4F4E7E7E7DBDBDBE6E6E6FFFFFF
      0000D3D3D3E4E4E4EFEFEFE4E4E4D8D8D8EDEDEDF3F3F3D3D3D3E7E7E7F1F1F1
      DFDFDFDBDBDBECECEC4D4D0DFFFF008D8D00515105878781DFDFDFEDEDEDECEC
      ECD3D3D30000E6E6E6EDEDEDE1E1E1DBDBDBF5F5F5E3E3E3DCDCDCEAEAEAEAEA
      EAE0E0E0DBDBDBF6F6F6E3E3E34D4D0DFFFF008F8F007F7F0056560DA1A1A1E2
      E2E2DBDBDBF3F3F300004B4B4B5050504E4E4E4848484F4F4F5050504A4A4A4C
      4C4C444444F0F0F0F3F3F3D3D3D3E7E7E74E4E0EFFFF008F8F007F7F007D7D00
      4C4C0D3232324848484E4E4E0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBF4A4A4ADFDFDFDFDFDFE9E9E9EBEBEB4D4D0DFFFF008F8F007F7F
      007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFB0B0B0BFBFBF4040403F3F3F3737373737373F3F3F434303FFFF008F
      8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBF3D3D3D8F8F8F3E3E3E7F7F7F7F7F7F7F7F7F7F7F7F474707
      FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF3C3C304D4D141515137F7F7F7F7F7F7F7F7F7F7F
      7F474707FFFF008D8D007777007D7D00474700636363BFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4646309A9A004545046161617F7F7F7F
      7F7F7F7F7F474707FFFF005F5F08171717676700474700636363BFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF474727EDED0092920045450E
      6363637F7F7F7F7F7F474707FFFF004747276B6B6B676700474700636363BFBF
      BFBFBFBF0000AEAEAE57574531310A272700272700272700424200FFFF00F9F9
      009898004242006363637F7F7F474707FFFF007E7E002727006E6E0047470063
      6363BFBFBFBFBFBF00008989898C8C13CFCF01CFCF00CFCF00CFCF00D5D500FF
      FF00FFFF00EDED0098980045450E616161474707FFFF008F8F007F7F007F7F00
      474700636363BFBFBFBFBFBF0000898989A1A113FEFE2CFFFFAFFFFFAFFFFFAF
      FFFFAFFFFFAFFFFFDBFFFF6DE3E3004B4B095B5B5B474707FFFF008F8F007F7F
      007F7F00474700636363BFBFBFBFBFBF0000A7A7A76F6F4879790C7A7A0A7A7A
      0A7A7A0A8A8A09FFFF3EFFFF70E4E4005F5F005858587F7F7F474707FFFF008F
      8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFB1B1B1A9A9A9A9
      A9A9A9A9A9A9A9A94C4C2CFFFF0DE6E6075959085858537F7F7F7F7F7F474707
      FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBF505030E3E3005F5F035757577F7F7F7F7F7F7F7F
      7F474707FFFF008F8F007F7F007F7F00474700636363BFBFBFBFBFBF0000BFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4242356E6E2521211B7F7F7F7F7F7F7F
      7F7F7F7F7F5E5E52999906D5D5008787007F7F00474700636363BFBFBFBFBFBF
      0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7070708888884444447F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F565656999906DBDB00898900474700636363BFBF
      BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4444
      447F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F5E5E529B9B03D7D7004C4C0076
      7676BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBF4141415656565656565656565656565656565656565656562E2E2E888807
      65650C888888BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBF9696968989898989898989898989898989898989898989898989
      89898989898989B1B1B1BFBFBFBFBFBF0000}
  end
end
