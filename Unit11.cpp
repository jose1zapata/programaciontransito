//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit11.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm11 *Form11;
//---------------------------------------------------------------------------
__fastcall TForm11::TForm11(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm11::Image4Click(TObject *Sender)
{
        MessageDlg("Debes solo ingresar el numero, nada de letras. Ejm: 059",mtInformation,TMsgDlgButtons()<<mbOK,0);        
}
//---------------------------------------------------------------------------

void __fastcall TForm11::Image1Click(TObject *Sender)
{
        Form11->Close();        
}
//---------------------------------------------------------------------------

void __fastcall TForm11::Image2Click(TObject *Sender)
{
        if(!Edit1->Text.IsEmpty()){
                MessageDlg("ok",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }else{
                MessageDlg("Debe primero Ingresar 'Acta Avaluo accidente'",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }
}
//---------------------------------------------------------------------------

