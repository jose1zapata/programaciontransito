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
        MessageDlg("Seleccione el patron de busqueda para encontrar el acta\n\n"
                   "Ingrese el patron de busqueda segun lo encontrado"
                   "haz clic en el boton buscar", mtInformation, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------

void __fastcall TForm11::Image1Click(TObject *Sender)
{
        String valor;
        String cedulaconductor;
        if(ComboBox1->ItemIndex!=-1){
                if(ComboBox1->ItemIndex==0){
                        Edit1->Text=FormatFloat("##,###,###",Edit1->Text.ToDouble());
                        valor="select * from conductores where cedulaconductor='"+Edit1->Text+"'";
                        Query1->Close();
                        Query1->SQL->Clear();
                        Query1->SQL->Add(valor);
                        Query1->Active=true;
                        cedulaconductor=Query1->FieldByName("cedulaconductor")->Value;
                        if(cedulaconductor!=NULL){
                                
                        }else{

                        }
                }

        }else{
                MessageDlg("Seleccione un patr�n de busqueda",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }
}
//---------------------------------------------------------------------------
