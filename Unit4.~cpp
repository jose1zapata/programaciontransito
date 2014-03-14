//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
#include "Unit1.h"
#include "Unit5.h"
#include "Unit6.h"
#include "Unit7.h"
#include "Unit8.h"
#include "Unit9.h"
#include "ctype.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm4 *Form4;

//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm4::marca()
{
        String consulta="select * from marca",marquita;
        int id=0;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(consulta);
        Query1->Active=true;
        ComboBox1->Clear();
        ComboBox1->Text="Seleccione";
        MARCA=0;
        Query1->First();
        while(!Query1->Eof){
                marquita=Query1->FieldByName("nombre")->Value;
                id=Query1->FieldByName("id")->Value;
                Marca[MARCA][0]=marquita;
                Marca[MARCA][1]=id;
                ComboBox1->Items->Add(marquita);
                MARCA++;
                Query1->Next();
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm4::Image3Click(TObject *Sender)
{
        Form4->Close();
        ComboBox1->Clear();
        ComboBox2->Clear();

}
//---------------------------------------------------------------------------
void __fastcall TForm4::Image5Click(TObject *Sender)
{
        Form5->ShowModal();
}
//--------------------------- ------------------------------------------------

void __fastcall TForm4::Image6Click(TObject *Sender)
{
        AnsiString x;
        if(ComboBox1->ItemIndex!=-1){
                Form6->Label2->Caption=""+Marca[ComboBox1->ItemIndex][0]+"";
                x=Marca[ComboBox1->ItemIndex][1];
                Form6->marca_id=x;
                Form6->ShowModal();
        }
        else
                MessageDlg("Seleccione una marca de vehiculo antes de agregar un modelo", mtInformation, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------
void __fastcall TForm4::modelo(){
        String consulta="select * from modelo where marca_id="+Marca[ComboBox1->ItemIndex][1]+"",modelito;
        int id=0;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(consulta);
        Query1->Active=true;
        ComboBox2->Clear();
        ComboBox2->Text="Seleccione";
        MODELO=0;
        Query1->First();
        while(!Query1->Eof){
                modelito=Query1->FieldByName("nombre")->Value;
                id=Query1->FieldByName("id")->Value;
                Modelo[MODELO][0]=modelito;
                Modelo[MODELO][1]=id;
                ComboBox2->Items->Add(modelito);
                MODELO++;
                Query1->Next();
        }
}
void __fastcall TForm4::ComboBox1Change(TObject *Sender)
{
        modelo();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::colores()
{
        String consulta="select * from color",Colors;
        int id;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(consulta);
        Query1->Active=true;
        ComboBox4->Clear();
        ComboBox4->Text="Seleccione";
        COLOR=0;
        Query1->First();
        while(!Query1->Eof){
                Colors=Query1->FieldByName("nombre")->Value;
                id=Query1->FieldByName("id")->Value;
                Colorete[COLOR][0]=Colors;
                Colorete[COLOR][1]=id;
                ComboBox4->Items->Add(Colors);
                COLOR++;
                Query1->Next();
        }
}
//--------------------------------------------------------------
void __fastcall TForm4::Image8Click(TObject *Sender)
{
        Form7->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm4::tipo(){
        String consulta="select * from tipo",Tipos;
        int id;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(consulta);
        Query1->Active=true;
        ComboBox3->Clear();
        ComboBox3->Text="Seleccione";
        TIPO=0;
        Query1->First();
        while(!Query1->Eof){
                Tipos=Query1->FieldByName("nombre")->Value;
                id=Query1->FieldByName("id")->Value;
                Tipo[TIPO][0]=Tipos;
                Tipo[TIPO][1]=id;
                ComboBox3->Items->Add(Tipos);
                TIPO++;
                Query1->Next();
        }
}


void __fastcall TForm4::Image7Click(TObject *Sender)
{
        Form8->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Image9Click(TObject *Sender)
{
        Form9->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit1KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit2KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit3KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit4KeyPress(TObject *Sender, char &Key)
{
        if(!isdigit(Key)&&Key!=8){
                Key=NULL;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Edit5KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------
void __fastcall TForm4::seguro(){
        String consulta="select * from seguro",seguross;
        int id;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(consulta);
        Query1->Active=true;
        ComboBox5->Clear();
        ComboBox5->Text="Seleccione";
        SEGURO=0;
        Query1->First();
        while(!Query1->Eof){
                seguross=Query1->FieldByName("nombre")->Value;
                id=Query1->FieldByName("id")->Value;
                Seguro[SEGURO][0]=seguross;
                Seguro[SEGURO][1]=id;
                ComboBox5->Items->Add(seguross);
                SEGURO++;
                Query1->Next();
        }
}
void __fastcall TForm4::Image2Click(TObject *Sender)
{
        String cadena;
        if(ComboBox1->ItemIndex!=-1){
                if(ComboBox2->ItemIndex!=-1){
                        if(ComboBox3->ItemIndex!=-1){
                                if(ComboBox4->ItemIndex!=-1){
                                        if(!Edit1->Text.IsEmpty()){
                                                if(!Edit2->Text.IsEmpty()){
                                                        if(!Edit3->Text.IsEmpty()){
                                                                if(!Edit4->Text.IsEmpty()){
                                                                        if(ComboBox5->ItemIndex!=-1){
                                                                                if(!Edit5->Text.IsEmpty()){
                                                                                        String q,w,e,r,t,y,u,i,o,p;
                                                                                        q=Edit2->Text;
                                                                                        w=Edit3->Text;
                                                                                        e=Edit5->Text;
                                                                                        r=Edit1->Text;
                                                                                        t=Edit4->Text;
                                                                                        y=Marca[ComboBox1->ItemIndex][1];
                                                                                        u=Modelo[ComboBox2->ItemIndex][1];
                                                                                        i=Tipo[ComboBox3->ItemIndex][1];
                                                                                        o=Colorete[ComboBox4->ItemIndex][1];
                                                                                        p=Seguro[ComboBox5->ItemIndex][1];
                                                                                        cadena="INSERT INTO vehiculo values(null,";
                                                                                        cadena+="'"+Edit2->Text+"',";
                                                                                        cadena+="'"+Edit3->Text+"',";
                                                                                        cadena+="'"+Edit5->Text+"',";
                                                                                        cadena+="'"+Edit1->Text+"',";
                                                                                        cadena+="'"+Edit4->Text+"',";
                                                                                        cadena+=""+Marca[ComboBox1->ItemIndex][1]+",";
                                                                                        cadena+=""+Modelo[ComboBox2->ItemIndex][1]+",";
                                                                                        cadena+=""+Tipo[ComboBox3->ItemIndex][1]+",";
                                                                                        cadena+=""+Colorete[ComboBox4->ItemIndex][1]+",";
                                                                                        cadena+=""+Seguro[ComboBox5->ItemIndex][1]+")";
                                                                                        Query1->Close();
                                                                                        Query1->SQL->Clear();
                                                                                        Query1->SQL->Add(cadena);
                                                                                        Query1->ExecSQL();
                                                                                        MessageDlg("Vehiculo insertado con éxito", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                                                        cadena="select id from vehiculo where placa='"+Edit1->Text+"'";
                                                                                        Query1->Close();
                                                                                        Query1->SQL->Clear();
                                                                                        Query1->SQL->Add(cadena);
                                                                                        Query1->Active=true;

                                                                                        Form1->Label19->Caption=Marca[ComboBox1->ItemIndex][0];//marca
                                                                                        Form1->Label21->Caption=Modelo[ComboBox2->ItemIndex][0];//modelo
                                                                                        Form1->Label23->Caption=Tipo[ComboBox3->ItemIndex][0];//tipo
                                                                                        Form1->Label25->Caption=Edit4->Text;//año
                                                                                        Form1->Label27->Caption=Colorete[ComboBox4->ItemIndex][0];//color
                                                                                        Form1->Label29->Caption=Edit1->Text;//Numero de placa
                                                                                        Form1->Label31->Caption=Edit2->Text;//Serial Carroceria
                                                                                        Form1->Label33->Caption=Edit3->Text;//serial Motor
                                                                                        Form1->Label35->Caption=Seguro[ComboBox5->ItemIndex][0];//seguro
                                                                                        Form1->Label37->Caption=Edit5->Text;//numero y poliza
                                                                                        Form1->Label39->Caption=Query1->FieldByName("id")->Value;//idvehiculo
                                                                                        Form4->Close();
                                                                                        Edit1->Clear();
                                                                                        Edit2->Clear();
                                                                                        Edit3->Clear();
                                                                                        Edit4->Clear();
                                                                                        Edit5->Clear();




                                                                                }else{
                                                                                        MessageDlg("Ingrese numero de poliza", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                                                }
                                                                        }else{
                                                                                MessageDlg("Seleccione el seguro del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                                        }
                                                                }else{
                                                                        MessageDlg("Ingrese año del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                                }
                                                        }else{
                                                                MessageDlg("Ingrese serial del motor", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                        }
                                                }else{
                                                        MessageDlg("Ingrese serial de carroceria del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                                }
                                        }else{
                                                MessageDlg("Ingrese Placa del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                        }
                                }
                                else{
                                        MessageDlg("Seleccione el color del tipo del modelo de la marca del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                                }
                        }else{
                                MessageDlg("Seleccione el tipo del modelo de la marca del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                        }
                }else{
                        MessageDlg("Seleccione el modelo de la marca del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
                }
        }else{
                MessageDlg("Seleccione la marca del vehiculo", mtInformation, TMsgDlgButtons() << mbOK, 0);
        }
}
//---------------------------------------------------------------------------

