object Form12: TForm12
  Left = 276
  Top = 127
  Width = 899
  Height = 500
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
    Top = 0
    Width = 761
    Height = 1064
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
      Width = 685
      Height = 243
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        642.9375
        1812.39583333333)
      BandType = rbTitle
      object QRLabel7: TQRLabel
        Left = 8
        Top = 154
        Width = 99
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
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EXPEDIENTE N'#176': '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 172
        Width = 90
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
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EXPERTICIA N'#176':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 109
        Top = 154
        Width = 57
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
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel9'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 101
        Top = 172
        Width = 64
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
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel10'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 445
        Top = 192
        Width = 1
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
          2.64583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 546
        Top = 192
        Width = 1
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
          2.64583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRMemo2: TQRMemo
        Left = 347
        Top = 8
        Width = 60
        Height = 185
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          489.479166666667
          918.104166666667
          21.1666666666667
          158.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 281
      Width = 685
      Height = 264
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        698.5
        1812.39583333333)
      BandType = rbDetail
      object QRMemo1: TQRMemo
        Left = 5
        Top = 8
        Width = 2809
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.8125
          13.2291666666667
          21.1666666666667
          7432.14583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Lines.Strings = (
          
            'QUIEN SUSCRIBE ROLANDO ROJAS, TITULAR DE LA C'#201'DULA DE IDENTIDAD ' +
            'N'#186' V-11.501.871, MIEMBRO ACTIVO DE LA ASOCIACI'#211'N DE '
          
            'PERITOS  AVALUADORES  DE TR'#193'NSITO DE VENEZUELA CON EL C'#211'DIGO N'#186' ' +
            '6103 EN  MI CAR'#193'CTER DE  EXPERTO DESIGNADO POR LA '
          
            'GERENCIA DE SERVICIOS CONEXOS DEL INSTITUTO NACIONAL DEL TRANSPO' +
            'RTE TERRESTRE Y ESTANDO LEGALMENTE JURAMENTADO COMO PERITO AVALU' +
            'ADOR Y AJUSTADOR DE PERDIDAS, DE CONFORMIDAD CON EL ART'#205'CULO 200' +
            ', ORDINAL 3 DE LA LEY DE TRANSPORTE TERRESTRE; SE EFECT'#218'A EL PRE' +
            'SENTE AVALU'#211', SIGUIENDO INSTRUCCIONES DE LA OFICINA PROCESADORA ' +
            'DE ACCIDENTES, SEG'#218'N ORDEN/OFICIO N'#186
          ''
          'METODOLOG'#205'A APLICADA'
          ''
          
            'A.- VALOR DE MERCADO PARA EL BIEN INVOLUCRADO EN EL SINIESTRO (V' +
            'EH'#205'CULO, PARTES Y PIEZAS O CISTERNAS QUE LO INTEGRAN Y OTROS BIE' +
            'NES SUSCEPTIBLES DE SUFRIR DA'#209'OS EN EL ACCIDENTE) B.- M'#201'TODO DE ' +
            'DEPRECIACI'#211'N APLICADA (L'#205'NEA RECTA) C.- EL C'#193'LCULO DE LA MANO DE' +
            ' OBRA EST'#193' BASADA EN LA METODOLOG'#205'A UTILIZADA POR LA C'#193'MARA NACI' +
            'ONAL DE TALLERES MEC'#193'NICOS (HORAS HOMBRES, MANO DE OBRA ESPECIAL' +
            'IZADA Y/O SIN ESPECIALIZACI'#211'N, TIEMPO ESTIMADO DE REPARACI'#211'N POR' +
            ' PIEZA O UNIDAD VEHICULAR).')
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 545
      Width = 685
      Height = 40
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
        105.833333333333
        1812.39583333333)
      BandType = rbDetail
    end
  end
end
