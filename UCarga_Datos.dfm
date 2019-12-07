object Carga_Datos: TCarga_Datos
  Left = 411
  Top = 200
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Carga de Datos'
  ClientHeight = 623
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 376
    Top = 88
    Width = 241
    Height = 33
    BackColor = clRed
    ForeColor = clLime
    Progress = 0
  end
  object Label10: TLabel
    Left = 9
    Top = 99
    Width = 32
    Height = 13
    Caption = 'Den F:'
  end
  object B1: TBitBtn
    Left = 8
    Top = 176
    Width = 145
    Height = 33
    Caption = 'Cargar (.LAS)'
    TabOrder = 4
    OnClick = B1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object B2: TBitBtn
    Left = 168
    Top = 176
    Width = 145
    Height = 33
    Hint = 'Confirmar la Salida del Programa...'
    Caption = 'Procesar'
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = B2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
      3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
      700077337F3333373777887007333337007733F773F333337733700070333333
      077037773733333F7F37703707333300080737F373333377737F003333333307
      78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
      078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
      70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
      3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
      33337F73FF737773333307800077033333337337773373333333}
    NumGlyphs = 2
  end
  object B3: TBitBtn
    Left = 328
    Top = 176
    Width = 145
    Height = 33
    Caption = 'Graficar'
    Enabled = False
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
      3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
      000077777777777777773303333333333333337FFF333333333F370993333333
      3399377773F33333337733033933333339333F7FF7FFFFFFF7FF77077797CCC7
      977777777777777777773303339C333C9333337F3377F3377F33370333C93339
      C333377F33773FF77F33330333C39993C3333F7FFF7F777F7FFF770777C77777
      C77777777777777777773303333C333C3333337F33373FF7333337033333CCC3
      3333377F33337773333333033333333333333F7FFFFFFFFFFFFF770777777777
      7777777777777777777733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object B4: TBitBtn
    Left = 480
    Top = 176
    Width = 145
    Height = 33
    Hint = 'Cancelar la Salida del Programa...'
    Cancel = True
    Caption = 'Salir'
    ModalResult = 2
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnClick = B4Click
    Glyph.Data = {
      CE070000424DCE07000000000000360000002800000024000000120000000100
      1800000000009807000000000000000000000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      0080800080800080800080800080800080808080808080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080FFFFFF008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080800000FF0000
      800000808080800080800080800080800080800080800000FF80808000808000
      8080008080008080008080008080008080008080808080808080FFFFFF008080
      008080008080008080008080008080FFFFFF0080800080800080800080800080
      800080800080800000FF00008000008000008080808000808000808000808000
      00FF000080000080808080008080008080008080008080008080008080808080
      FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
      FF0080800080800080800080800080800080800000FF00008000008000008000
      00808080800080800000FF000080000080000080000080808080008080008080
      008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
      FF808080008080008080808080FFFFFF00808000808000808000808000808000
      80800000FF000080000080000080000080808080000080000080000080000080
      000080808080008080008080008080008080008080808080FFFFFF0080800080
      80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
      80800080800080800080800080800080800000FF000080000080000080000080
      0000800000800000800000808080800080800080800080800080800080800080
      80008080808080FFFFFF00808000808000808080808000808000808000808000
      8080FFFFFF808080008080008080008080008080008080008080008080008080
      0000FF0000800000800000800000800000800000808080800080800080800080
      80008080008080008080008080008080008080808080FFFFFF00808000808000
      8080008080008080008080FFFFFF808080008080008080008080008080008080
      0080800080800080800080800080800000800000800000800000800000808080
      8000808000808000808000808000808000808000808000808000808000808000
      8080808080FFFFFF008080008080008080008080008080808080008080008080
      0080800080800080800080800080800080800080800080800080800000FF0000
      8000008000008000008080808000808000808000808000808000808000808000
      8080008080008080008080008080008080808080FFFFFF008080008080008080
      8080800080800080800080800080800080800080800080800080800080800080
      800080800000FF00008000008000008000008000008080808000808000808000
      8080008080008080008080008080008080008080008080008080008080808080
      008080008080008080008080808080FFFFFF0080800080800080800080800080
      800080800080800080800080800000FF00008000008000008080808000008000
      0080000080808080008080008080008080008080008080008080008080008080
      008080008080808080008080008080008080008080008080808080FFFFFF0080
      800080800080800080800080800080800080800080800000FF00008000008000
      00808080800080800000FF000080000080000080808080008080008080008080
      008080008080008080008080008080808080008080008080008080808080FFFF
      FF008080008080808080FFFFFF00808000808000808000808000808000808000
      80800000FF0000800000808080800080800080800080800000FF000080000080
      000080808080008080008080008080008080008080008080808080FFFFFF0080
      80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
      80800080800080800080800080800080800000FF000080008080008080008080
      0080800080800000FF0000800000800000800080800080800080800080800080
      80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
      8080008080808080FFFFFF008080008080008080008080008080008080008080
      0080800080800080800080800080800080800080800000FF0000800000FF0080
      8000808000808000808000808000808000808080808080808000808000808000
      8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080808080808080808080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      008080008080008080008080008080008080}
    NumGlyphs = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 81
    Caption = 'Pma=?'
    ItemIndex = 3
    Items.Strings = (
      'Arenisca  = 2,65 gr/cc'
      'Caliza  = 2,71 gr/cc'
      'Dolomita  = 2,86 gr/cc'
      'Estandar  = 1')
    TabOrder = 0
  end
  object GroupBox4: TGroupBox
    Left = 176
    Top = 8
    Width = 193
    Height = 113
    Caption = 'SW'
    TabOrder = 1
    object Label5: TLabel
      Left = 97
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Rw:'
    end
    object Label6: TLabel
      Left = 9
      Top = 24
      Width = 9
      Height = 13
      Caption = 'a:'
    end
    object Label7: TLabel
      Left = 9
      Top = 52
      Width = 11
      Height = 13
      Caption = 'm:'
    end
    object Label4: TLabel
      Left = 105
      Top = 52
      Width = 9
      Height = 13
      Caption = 'n:'
    end
    object Label11: TLabel
      Left = 9
      Top = 81
      Width = 14
      Height = 13
      Caption = 'Rt:'
    end
    object Label12: TLabel
      Left = 96
      Top = 88
      Width = 75
      Height = 13
      Caption = '0 <= Valor >=10'
    end
    object Edit3: TEdit
      Left = 120
      Top = 20
      Width = 25
      Height = 21
      Hint = 'Resistividad del agua '
      TabOrder = 1
      Text = '0'
    end
    object Edit4: TEdit
      Left = 24
      Top = 20
      Width = 25
      Height = 21
      Hint = 'Factor de formaci'#243'n para f=100%'
      TabOrder = 0
      Text = '0'
    end
    object Edit5: TEdit
      Left = 24
      Top = 48
      Width = 25
      Height = 21
      Hint = 'Exponente de cementaci'#243'n '
      TabOrder = 2
      Text = '0'
    end
    object Edit6: TEdit
      Left = 120
      Top = 48
      Width = 25
      Height = 21
      Hint = 'Exponente de saturaci'#243'n '
      TabOrder = 3
      Text = '0'
    end
    object Edit10: TEdit
      Left = 24
      Top = 77
      Width = 25
      Height = 21
      Hint = 'Resistividad de la roca a Sw '
      TabOrder = 4
      Text = '0'
    end
  end
  object GroupBox3: TGroupBox
    Left = 376
    Top = 8
    Width = 105
    Height = 73
    Hint = 'Porosidad'
    Caption = #216'T'
    TabOrder = 2
    object Label8: TLabel
      Left = 17
      Top = 16
      Width = 9
      Height = 13
      Caption = 'a:'
    end
    object Label9: TLabel
      Left = 9
      Top = 40
      Width = 19
      Height = 13
      Caption = 'Rw:'
    end
    object Edit7: TEdit
      Left = 32
      Top = 16
      Width = 25
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit8: TEdit
      Left = 32
      Top = 40
      Width = 25
      Height = 21
      TabOrder = 1
      Text = '0'
    end
  end
  object GroupBox2: TGroupBox
    Left = 496
    Top = 8
    Width = 121
    Height = 73
    Caption = 'VCL'
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 42
      Width = 27
      Height = 13
      Caption = 'Shale'
    end
    object Label2: TLabel
      Left = 8
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Clean'
    end
    object Edit1: TEdit
      Left = 48
      Top = 16
      Width = 25
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 48
      Top = 40
      Width = 25
      Height = 21
      TabOrder = 1
      Text = '0'
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 128
    Width = 361
    Height = 41
    Caption = 'Indique la ruta del Archivo (.LAS)'
    TabOrder = 8
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 15
      Height = 13
      Caption = 'C:\'
    end
  end
  object RadioGroup2: TRadioGroup
    Left = 368
    Top = 128
    Width = 257
    Height = 41
    Caption = 'Delay (en base a 1 segundo):'
    Columns = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '0'
      '1/16'
      '1/8'
      '1/4'
      '1/2'
      '1')
    ParentFont = False
    TabOrder = 9
    OnClick = RadioGroup2Click
  end
  object Edit9: TEdit
    Left = 48
    Top = 96
    Width = 33
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object QR: TQuickRep
    Left = 912
    Top = 268
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    OnNeedData = QRNeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRChart1: TQRChart
      Left = 48
      Top = 552
      Width = 969
      Height = 217
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        574.145833333333000000
        127.000000000000000000
        1460.500000000000000000
        2563.812500000000000000)
      object QRDBChart1: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Porosidad')
        Legend.Visible = False
        View3D = False
        View3DWalls = False
        object Series1: TAreaSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = Query1
          SeriesColor = clBlue
          Title = 'Porosidad'
          AreaLinesPen.Visible = False
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Result_PHID'
        end
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 980
      Height = 75
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        198.437500000000000000
        2592.916666666667000000)
      BandType = rbTitle
      object QRDBText1: TQRDBText
        Left = 968
        Top = 0
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2561.166666666670000000
          0.000000000000000000
          29.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'Result_PHID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -1
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 1
      end
      object QRLabel1: TQRLabel
        Left = 160
        Top = 8
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          21.166666666666670000
          574.145833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Curvas de Resultado del Estudio Nro:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 384
        Top = 8
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          21.166666666666670000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 456
        Top = 8
        Width = 115
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          21.166666666666670000
          304.270833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Realizado en fecha:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 576
        Top = 8
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1524.000000000000000000
          21.166666666666700000
          153.458333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 776
        Top = 144
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2053.166666666670000000
          381.000000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pma='
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 171
        Top = 54
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          452.437500000000000000
          142.875000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pma='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 160
        Top = 30
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          79.375000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D en F='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 293
        Top = 30
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          775.229166666666800000
          79.375000000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SW_A='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 280
        Top = 53
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          140.229166666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SW_RW='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 416
        Top = 30
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          79.375000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SW_M='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 416
        Top = 53
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          140.229166666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SW_N='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 556
        Top = 30
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1471.083333333330000000
          79.375000000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OT_A='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 544
        Top = 53
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1439.333333333330000000
          140.229166666667000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OT_RW='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 680
        Top = 30
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1799.166666666670000000
          79.375000000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VCL_CLEAN='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 680
        Top = 53
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1799.166666666670000000
          140.229166666667000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VCL_SHALE='
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT1: TQRDBText
        Left = 216
        Top = 30
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          79.375000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'D_en_F'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT2: TQRDBText
        Left = 216
        Top = 54
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          142.875000000000000000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'PMA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT3: TQRDBText
        Left = 344
        Top = 30
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666600000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SW_A'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT4: TQRDBText
        Left = 344
        Top = 54
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666600000
          142.875000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SW_RW'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT5: TQRDBText
        Left = 468
        Top = 30
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1238.250000000000000000
          79.375000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SW_M'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT6: TQRDBText
        Left = 468
        Top = 54
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1238.250000000000000000
          142.875000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SW_N'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT7: TQRDBText
        Left = 608
        Top = 30
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1608.666666666670000000
          79.375000000000000000
          89.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'OT_A'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT8: TQRDBText
        Left = 608
        Top = 54
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1608.666666666670000000
          142.875000000000000000
          124.354166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'OT_RW'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT9: TQRDBText
        Left = 768
        Top = 30
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2032.000000000000000000
          79.375000000000000000
          201.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'VCL_CLEAN'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QT10: TQRDBText
        Left = 768
        Top = 54
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2032.000000000000000000
          142.875000000000000000
          201.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'VCL_SHALE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRChart2: TQRChart
      Left = 48
      Top = 336
      Width = 969
      Height = 217
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        574.145833333333000000
        127.000000000000000000
        889.000000000000000000
        2563.812500000000000000)
      object QRDBChart2: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'El'#233'ctrica')
        Legend.Visible = False
        View3D = False
        View3DWalls = False
        object QRChart3: TQRChart
          Left = 40
          Top = 112
          Width = 969
          Height = 201
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            531.812500000000000000
            105.833333333333000000
            296.333333333333000000
            2563.812500000000000000)
          object QRDBChart3: TQRDBChart
            Left = -1
            Top = -1
            Width = 1
            Height = 1
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Porosidad')
            Legend.Visible = False
            View3D = False
            View3DWalls = False
            object LineSeries3: TLineSeries
              Marks.ArrowLength = 8
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = Table1
              SeriesColor = clRed
              Title = 'Porosidad'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'Result_PHID'
            end
            object LineSeries4: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = LineSeries3
              SeriesColor = clGreen
              Title = 'Promedio'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AverageTeeFunction2: TAverageTeeFunction
              end
            end
          end
        end
        object LineSeries1: TAreaSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = Query1
          SeriesColor = clRed
          Title = 'RD'
          AreaLinesPen.Visible = False
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Result_VCL'
        end
      end
    end
    object QRChart4: TQRChart
      Left = 48
      Top = 112
      Width = 969
      Height = 225
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        595.312500000000000000
        127.000000000000000000
        296.333333333333000000
        2563.812500000000000000)
      object QRDBChart4: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Brush.Color = clWhite
        Title.Brush.Style = bsClear
        Title.Color = clYellow
        Title.Text.Strings = (
          'Corelaci'#243'n')
        Legend.Visible = False
        View3D = False
        View3DWalls = False
        object QRChart5: TQRChart
          Left = 40
          Top = 112
          Width = 969
          Height = 201
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            531.812500000000000000
            105.833333333333000000
            296.333333333333000000
            2563.812500000000000000)
          object QRDBChart5: TQRDBChart
            Left = -1
            Top = -1
            Width = 1
            Height = 1
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Porosidad')
            Legend.Visible = False
            View3D = False
            View3DWalls = False
            object LineSeries5: TLineSeries
              Marks.ArrowLength = 8
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = Table1
              SeriesColor = clRed
              Title = 'Porosidad'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'Result_PHID'
            end
            object LineSeries6: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              DataSource = LineSeries5
              SeriesColor = clGreen
              Title = 'Promedio'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              object AverageTeeFunction3: TAverageTeeFunction
              end
            end
          end
        end
        object LineSeries8: TAreaSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = Query1
          SeriesColor = clLime
          Title = 'Promedio'
          AreaLinesPen.Visible = False
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Result_SW'
          object AverageTeeFunction4: TAverageTeeFunction
          end
        end
      end
    end
  end
  object Grafico: TChartfx
    Left = 8
    Top = 216
    Width = 617
    Height = 393
    TabOrder = 12
    ControlData = {
      C53F00009E2800006000000000000106400200FFFFFFFF320032002800280002
      00000001000000080001000000000000000000000000000000020000FFFF00C0
      C0C000C0C0C000FFFFFF00FF1FFF1F0000000000010000000000000000080000
      2008000060080000000800000008000000080000000800000008000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000F0
      3F19003200000000000000000000000000000059400000000000000000000000
      000000000000000000}
  end
  object Panel1: TPanel
    Left = 24
    Top = 224
    Width = 33
    Height = 17
    Caption = 'Pi'#233's'
    TabOrder = 13
  end
  object OD: TOpenDialog
    Filter = 'Archivos LAS|*.LAS'
    Left = 1104
    Top = 56
  end
  object Table1: TTable
    AfterPost = Table1AfterPost
    DatabaseName = 'Petrofisica'
    TableName = 'Estudios.DB'
    Left = 200
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 168
    Top = 136
  end
  object Query1: TQuery
    DatabaseName = 'Petrofisica'
    SQL.Strings = (
      'Select * from estudios')
    Left = 264
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 240
    Top = 136
  end
end
