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
        if(!Edit1->Text.IsEmpty()){
                valor="select * from avaluo where id='"+Edit1->Text+"'";
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label41->Caption=Query1->FieldByName("fecha")->Value;
                Form1->Label43->Caption=Query1->FieldByName("id")->Value;
                Form1->Label45->Caption=Query1->FieldByName("expediente")->Value;
                Form1->Label47->Caption=Query1->FieldByName("lugarinspeccion")->Value;
                Form1->Label57->Caption=Query1->FieldByName("accidente_id")->Value;
                //accidente
                valor="select * from accidente where id='"+Form1->Label57->Caption+"'";
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label53->Caption=Query1->FieldByName("hora")->Value;
                Form1->Label55->Caption=Query1->FieldByName("monto")->Value;
                Form1->Label51->Caption=Query1->FieldByName("fecha")->Value;
                Form1->Label49->Caption=Query1->FieldByName("direccion")->Value;
                Form1->Label39->Caption=Query1->FieldByName("vehiculo_id")->Value;
                //vehiculo
                valor="select * from vehiculo where id='"+Form1->Label39->Caption+"'";
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label31->Caption=Query1->FieldByName("serialcarroceria")->Value;
                Form1->Label33->Caption=Query1->FieldByName("serialmotor")->Value;
                Form1->Label37->Caption=Query1->FieldByName("numeropoliza")->Value;
                Form1->Label59->Caption=Query1->FieldByName("uso")->Value;
                Form1->Label29->Caption=Query1->FieldByName("placa")->Value;
                Form1->Label25->Caption=Query1->FieldByName("anho")->Value;
                Form1->Label39->Caption=Query1->FieldByName("id")->Value;
                String marca, modelo,tipo,color,seguro,conductor,valores[30000];
                marca=Query1->FieldByName("marca_id")->Value;
                modelo=Query1->FieldByName("modelo_id")->Value;
                tipo=Query1->FieldByName("tipo_id")->Value;
                color=Query1->FieldByName("color_id")->Value;
                seguro=Query1->FieldByName("seguro_id")->Value;
                conductor=Query1->FieldByName("conductores_id")->Value;
                valor="select * from marca where id="+marca;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label19->Caption=Query1->FieldByName("nombre")->Value;
                valor="select * from modelo where id="+modelo;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label21->Caption=Query1->FieldByName("nombre")->Value;
                valor="select * from tipo where id="+tipo;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label23->Caption=Query1->FieldByName("nombre")->Value;
                valor="select * from color where id="+color;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label27->Caption=Query1->FieldByName("nombre")->Value;
                valor="select * from seguro where id="+seguro;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label35->Caption=Query1->FieldByName("nombre")->Value;
                valor="select * from conductores where id="+conductor;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Form1->Label5->Caption=Query1->FieldByName("nombreconductor")->Value;
                Form1->Label7->Caption=Query1->FieldByName("cedulaconductor")->Value;
                Form1->Label9->Caption=Query1->FieldByName("nombrepropietario")->Value;
                Form1->Label11->Caption=Query1->FieldByName("cedulapropietario")->Value;
                Form1->Label13->Caption=Query1->FieldByName("telefono")->Value;
                Form1->Label15->Caption=Query1->FieldByName("direccionpropietario")->Value;
                Form1->Label17->Caption=Query1->FieldByName("id")->Value;
                valor="select * from accidentesautoparte where accidente_id="+Form1->Label57->Caption;
                Query1->Close();
                Query1->SQL->Clear();
                Query1->SQL->Add(valor);
                Query1->Active=true;
                Query1->First();
                Form1->totalconsulta=0;
                while(!Query1->Eof){
                       Form1->valores[Form1->totalconsulta]=Query1->FieldByName("autoparte_id")->Value;
                       Form1->totalconsulta++;
                       Query1->Next();
                }
                Form1->totalselectreparar=0;
                Form1->totalselectcambiar=0;
                for (int j=0;j<Form1->totalreparar;j++)
                        Form1->CheckListBox1->Checked[j]=false;
                for (int j=0;j<Form1->totalcambiar;j++)
                        Form1->CheckListBox2->Checked[j]=false;
                Form1->ListBox1->Clear();
                Form1->ListBox2->Clear();
                Form1->Image6->Visible=false;
                Form1->Image12->Visible=true;
                for (int i=0;i<Form1->totalconsulta;i++)
                {
                        for (int j=0;j<Form1->totalreparar;j++)
                        {
                                if(Form1->idreparar[j]==Form1->valores[i]){
                                        Form1->selectreparar[Form1->totalselectreparar]=Form1->idreparar[j];
                                        Form1->totalselectreparar++;
                                        Form1->CheckListBox1->Checked[j]=true;
                                        Form1->ListBox1->Items->Add(Form1->reparar[j]);
                                        break;
                                }
                        }
                        for (int j=0;j<Form1->totalcambiar;j++)
                        {
                                if(Form1->idcambiar[j]==Form1->valores[i]){
                                        Form1->selectcambiar[Form1->totalselectcambiar]=Form1->idcambiar[j];
                                        Form1->totalselectcambiar++;
                                        Form1->CheckListBox2->Checked[j]=true;
                                        Form1->ListBox2->Items->Add(Form1->cambiar[j]);
                                        break;
                                }
                        }
                }

                Form11->Close();
        }else{
                Image3Click(Sender);
        }

}
//---------------------------------------------------------------------------
void __fastcall TForm11::Edit1KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
        if(Key==13){
                Image1Click(Sender);
        }
}
//---------------------------------------------------------------------------

