//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit11.h"
#include "Unit1.h"
#include "ctype.h"
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


void __fastcall TForm11::Image2Click(TObject *Sender)
{
        Form11->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm11::Image3Click(TObject *Sender)
{
        MessageDlg("Ingrese el numero de experticia. Ejm: 005/JZ\n\nDonde JZ son las iniciales del nombre y apellido del perito",mtInformation,TMsgDlgButtons()<<mbOK,0);
}
//--------------n-------------------------------------------------------------

void __fastcall TForm11::Image1Click(TObject *Sender)
{
        String valor;
        String cedulaconductor,cedulapropietario,cadena,x,y;
        int total,i=0;
        if(){

        }

}
//---------------------------------------------------------------------------
void __fastcall TForm11::Edit1KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------

