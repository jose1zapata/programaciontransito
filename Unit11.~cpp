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


void __fastcall TForm11::Image2Click(TObject *Sender)
{
        Form11->Close();        
}
//---------------------------------------------------------------------------

void __fastcall TForm11::Image3Click(TObject *Sender)
{
        MessageDlg("Puedes buscar por el numero de cedula del conductor\n\n"
                   "Ejemplo Nombre Conductor: Luis Perez (solo letras)\n\n"
                   "Ejemplo Cedula Propietario: 17827822 (solo numero)\n\n"
                   "Ejemplo Nombre Conductor: Carlos Perez (solo letras)\n\n"
                   "Ejemplo Telefono Propietario: 04141234567 (Solo numeros)\n\n"
                   "Ejemplo Dirección: Urb Merida 100-24 (Texto y numeros)\n\n"
                   "Los datos se ingresan así y automáticamente adquieren formato una vez guardado", mtInformation, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------
 