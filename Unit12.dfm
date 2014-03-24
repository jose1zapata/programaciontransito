object Form12: TForm12
  Left = 276
  Top = 127
  Width = 899
  Height = 500
  VertScrollBar.Position = 161
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
    Top = -161
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
      Top = 38
      Width = 740
      Height = 259
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
        685.270833333333
        1957.91666666667)
      BandType = rbTitle
      object QRLabel7: TQRLabel
        Left = 8
        Top = 154
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          407.458333333333
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
        Left = 8
        Top = 172
        Width = 74
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          21.1666666666667
          455.083333333333
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
        Left = 109
        Top = 154
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          288.395833333333
          407.458333333333
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
        Left = 101
        Top = 172
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          267.229166666667
          455.083333333333
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
        Top = 192
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
          508
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
        Top = 192
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
          508
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
      object QRMemo2: TQRMemo
        Left = 352
        Top = 8
        Width = 51
        Height = 185
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          489.479166666667
          931.333333333333
          21.1666666666667
          134.9375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 312
        Top = 232
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
          613.833333333333
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
      Top = 297
      Width = 740
      Height = 248
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
        656.166666666667
        1957.91666666667)
      BandType = rbDetail
      object QRMemo1: TQRMemo
        Left = 1
        Top = 3
        Width = 696
        Height = 238
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          629.708333333333
          2.64583333333333
          7.9375
          1841.5)
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
        Lines.Strings = (
          
            'QUIEN SUSCRIBE ROLANDO ROJAS, TITULAR DE LA C'#201'DULA DE IDENTIDAD ' +
            'N'#186' V-11.501.871, MIEMBRO ACTIVO DE LA ASOCIACI'#211'N DE '
          
            'PERITOS  AVALUADORES  DE TR'#193'NSITO DE VENEZUELA CON EL C'#211'DIGO N'#186' ' +
            '6103 EN  MI CAR'#193'CTER DE  EXPERTO DESIGNADO POR LA '
          
            'GERENCIA   DE   SERVICIOS   CONEXOS   DEL   INSTITUTO   NACIONAL' +
            '   DEL   TRANSPORTE   TERRESTRE  Y   ESTANDO   LEGALMENTE '
          
            'JURAMENTADO  COMO PERITO AVALUADOR Y AJUSTADOR DE PERDIDAS, DE C' +
            'ONFORMIDAD CON EL ART'#205'CULO 200, ORDINAL 3 DE LA '
          
            'LEY DE TRANSPORTE TERRESTRE; SE EFECT'#218'A EL PRESENTE AVALU'#211', SIGU' +
            'IENDO INSTRUCCIONES DE LA OFICINA PROCESADORA '
          'DE ACCIDENTES, SEG'#218'N ORDEN/OFICIO N'#186
          ''
          'METODOLOG'#205'A APLICADA'
          ''
          
            'A.- VALOR   DE  MERCADO  PARA   EL  BIEN  INVOLUCRADO   EN  EL  ' +
            'SINIESTRO  (VEH'#205'CULO,  PARTES  Y  PIEZAS  O  CISTERNAS  QUE  LO '
          
            'INTEGRAN  Y  OTROS  BIENES  SUSCEPTIBLES DE SUFRIR  DA'#209'OS EN EL ' +
            'ACCIDENTE) B.- M'#201'TODO DE DEPRECIACI'#211'N APLICADA (L'#205'NEA '
          
            'RECTA)  C.-  EL  C'#193'LCULO  DE  LA  MANO  DE  OBRA  EST'#193'  BASADA  ' +
            'EN  LA  METODOLOG'#205'A  UTILIZADA  POR  LA  C'#193'MARA  NACIONAL  DE '
          
            'TALLERES  MEC'#193'NICOS  (HORAS  HOMBRES,  MANO DE  OBRA  ESPECIALIZ' +
            'ADA  Y/O   SIN   ESPECIALIZACI'#211'N,   TIEMPO  ESTIMADO  DE '
          'REPARACI'#211'N  POR  PIEZA  O  UNIDAD  VEHICULAR).')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
end
