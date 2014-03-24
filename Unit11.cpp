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
        String cedulaconductor,cedulapropietario,cadena,x,y;
        int total,i=0;
        if(ComboBox1->ItemIndex!=-1){
                if(ComboBox1->ItemIndex==0){
                    if(!Edit1->Text.IsEmpty()){
                        cadena=FormatFloat("##,###,###",Edit1->Text.ToDouble());
                        valor="select count(*) as total from conductores where cedulaconductor='"+cadena+"' or cedulapropietario='"+cadena+"'";
                        Query1->Close();
                        Query1->SQL->Clear();
                        Query1->SQL->Add(valor);
                        Query1->Active=true;
                        total=Query1->FieldByName("total")->Value;
                        if(total>0&&total<=2){
                                if(total==2){
                                        valor="select * from conductores where cedulaconductor='"+cadena+"' or cedulapropietario='"+cadena+"'";
                                        Query1->Close();
                                        Query1->SQL->Clear();
                                        Query1->SQL->Add(valor);
                                        Query1->Active=true;
                                        Query1->First();
                                        while(!Query1->Eof){
                                                if(i%2==0)
                                                        x=Query1->FieldByName("id")->Value;
                                                else
                                                        y=Query1->FieldByName("id")->Value;
                                                i++;
                                                Query1->Next();
                                        }
                                }else{
                                        valor="select * from conductores where cedulaconductor='"+cadena+"' or cedulapropietario='"+cadena+"'";
                                        Query1->Close();
                                        Query1->SQL->Clear();
                                        Query1->SQL->Add(valor);
                                        Query1->Active=true;
                                        x=Query1->FieldByName("id")->Value;
                                        valor="select * from accidente where conductore_id="+x;
                                }



                        }else{
                                MessageDlg("No est� el conductor con esa cedula de identidad. Intente con otra u otro patron de busqueda",mtInformation,TMsgDlgButtons()<<mbOK,0);
                        }
                    }else{
                        MessageDlg("Escriba el patr�n de busqueda",mtInformation,TMsgDlgButtons()<<mbOK,0);
                    }
                }

        }else{
                MessageDlg("Seleccione un patr�n de busqueda",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }
}
//---------------------------------------------------------------------------
