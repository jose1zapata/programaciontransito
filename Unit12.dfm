object Form12: TForm12
  Left = 197
  Top = 121
  Width = 899
  Height = 500
  VertScrollBar.Position = 221
  Caption = 'Form12'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep3: TQuickRep
    Left = 16
    Top = -221
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100
      2794
      100
      2159
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 129
      Width = 740
      Height = 88
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Franklin Gothic Book'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        232.833333333333
        1957.91666666667)
      BandType = rbTitle
      object QRLabel7: TQRLabel
        Left = 7
        Top = 8
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          21.1666666666667
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EXPEDIENTE N'#176': '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 7
        Top = 26
        Width = 74
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          18.5208333333333
          68.7916666666667
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EXPERTICIA N'#176':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 108
        Top = 8
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          285.75
          21.1666666666667
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 100
        Top = 26
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          264.583333333333
          68.7916666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 445
        Top = 31
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1177.39583333333
          82.0208333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel11'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 546
        Top = 31
        Width = 53
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          1444.625
          82.0208333333333
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 312
        Top = 59
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          825.5
          156.104166666667
          248.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ACTA DE AVALUO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Franklin Gothic Book'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 217
      Width = 740
      Height = 208
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Franklin Gothic Book'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        550.333333333333
        1957.91666666667)
      BandType = rbDetail
      object QRMemo1: TQRMemo
        Left = 1
        Top = 3
        Width = 55
        Height = 222
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          587.375
          2.64583333333333
          7.9375
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Franklin Gothic Book'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 88
        Width = 1
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          21.1666666666667
          232.833333333333
          2.64583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 91
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
        240.770833333333
        1957.91666666667)
      BandType = rbPageHeader
      object QRMemo2: TQRMemo
        Left = 352
        Top = 8
        Width = 50
        Height = 89
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          235.479166666667
          931.333333333333
          21.1666666666667
          132.291666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 425
      Width = 740
      Height = 136
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Franklin Gothic Book'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        359.833333333333
        1957.91666666667)
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 264
        Top = 8
        Width = 208
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          21.1666666666667
          550.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATOS DEL VEH'#205'CULO EXAMINADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Franklin Gothic Book'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 533
        Top = 21
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1410.22916666667
          55.5625
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 40
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          105.833333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel5'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 533
        Top = 40
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1410.22916666667
          105.833333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel6'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 5
        Top = 56
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          148.166666666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 533
        Top = 57
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1410.22916666667
          150.8125
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel14'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
end
