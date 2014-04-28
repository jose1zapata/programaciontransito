//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit21.h"
#include "Unit3.h"
#include "Unit1.h"
#include "ctype.h"
#include "Unit11.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm21 *Form21;
//---------------------------------------------------------------------------
__fastcall TForm21::TForm21(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm21::dia(String x,int ban){

        for (int i=0;i<31;i++)
        {
              if(ban==1){
                if(Form3->DIA[i]==x){
                        ComboBox6->ItemIndex=i;
                }
              }else{
                if(Form3->DIA[i]==x){
                        ComboBox1->ItemIndex=i;
                }
              }
        }

}
void __fastcall TForm21::minutos(String x){

        for (int i=0;i<60;i++)
        {
                if(Form3->MINUTOS[i]==x){
                        ComboBox4->ItemIndex=i;
                }
        }

}
void __fastcall TForm21::mes(String x,int ban){

        for (int i=0;i<12;i++)
        {
              if(ban==1){
                if(Form3->MESES[i]==x){
                        ComboBox7->ItemIndex=i;
                }
              }else{
                if(ban==2){
                        if(Form3->MESES[i]==x){
                                ComboBox2->ItemIndex=i;
                        }
                }else{
                        if(Form3->HORA[i]==x){
                                ComboBox3->ItemIndex=i;
                        }
                }
              }
        }
}
void __fastcall TForm21::ajustar()
{
        String Hora,min,ampm,Dia,Mes,Anho,aux;
        char cadena[20],*p;
        int i=0;
        //configurando la fecha de avaluo

        aux=Form1->Label41->Caption;
        StrCopy(cadena,aux.c_str());
        p=strtok(cadena,"-");
        while(p!=NULL){
                if(i==0){
                        Anho=p;
                }
                if(i==1){
                        Mes=p;
                }
                if(i==2){
                        Dia=p;
                }
                p=strtok(NULL,"-");
                i++;
        }
        dia(Dia,1);
        mes(Mes,1);
        Edit5->Text=Anho;
        for (int i=0;i<20;i++)
        {
                cadena[i]=NULL;
        }
        //CONFIGURACION DE LA FECHA DEL ACCIDENTE
        i=0;
        aux=Form1->Label51->Caption;
        StrCopy(cadena,aux.c_str());
        p=strtok(cadena,"-");
        int total;
        aux=p;
        total=aux.Length();
        while(p!=NULL){

                if(i==0){
                        if(total==4)
                                Anho=p;
                        else
                                Dia=p;
                }
                if(i==1){
                        Mes=p;
                }
                if(i==2){
                        if(total==4)
                                Dia=p;
                        else
                                Anho=p;
                }
                p=strtok(NULL,"-");
                i++;
        }
        dia(Dia,2);
        mes(Mes,2);
        Edit1->Text=Anho;
        for (int i=0;i<20;i++)
        {
                cadena[i]=NULL;
        }
        //configurando la hora accidente
        i=0;
        aux=Form1->Label53->Caption;
        StrCopy(cadena,aux.c_str());
        p=strtok(cadena,": ");

        aux=p;
        total=aux.Length();
        while(p!=NULL){

                if(i==0){
                        Hora=p;
                }
                if(i==1){
                        min=p;
                }
                if(i==2){
                        ampm=p;
                }
                p=strtok(NULL,": ");
                i++;
        }
        if(Form3->AMPM[0]==ampm){
                ComboBox5->ItemIndex=0;
        }else{
                ComboBox5->ItemIndex=1;
        }
        mes(Hora,0);
        minutos(min);
        aux="select * from accidente where id="+Form1->Label57->Caption;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(aux);
        Query1->Active=true;
        Edit2->Text=Query1->FieldByName("monto")->Value;
        Edit6->Text=Query1->FieldByName("montoletra")->Value;
        Edit7->Text=Form1->Label49->Caption;

        Edit3->Text=Form1->Label43->Caption;//experticia
        Edit4->Text=Form1->Label45->Caption;//expediente
        for (int j=0;j<Form3->DIRECCION;j++)
        {
                if(Form3->Direccion[j]==Form1->Label47->Caption){
                        ComboBox8->ItemIndex=j;
                        break;
                }
        }
        aux="select * from avaluo where id='"+Form1->Label43->Caption+"'";
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(aux);
        Query1->Active=true;
        String viendo;
        viendo=Query1->FieldByName("ciudadinspeccion_id")->Value;
        ComboBox9->ItemIndex=atoi(viendo.c_str())-1;
        y=Edit3->Text;

}

void __fastcall TForm21::Edit2KeyPress(TObject *Sender, char &Key)
{
        Key=toupper(Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Edit6KeyPress(TObject *Sender, char &Key)
{
        Edit2KeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Edit7KeyPress(TObject *Sender, char &Key)
{
        Edit2KeyPress(Sender,Key);        
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Edit3KeyPress(TObject *Sender, char &Key)
{
        Edit2KeyPress(Sender,Key);        
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Edit4KeyPress(TObject *Sender, char &Key)
{
        Edit2KeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Image2Click(TObject *Sender)
{
String cadena,fechaaccidente,hora,x,fechaavaluo,z;
        fechaaccidente=Edit1->Text+"-"+Form3->MESES[ComboBox2->ItemIndex]+"-"+Form3->DIA[ComboBox1->ItemIndex];
        hora=Form3->HORA[ComboBox3->ItemIndex]+":"+Form3->MINUTOS[ComboBox4->ItemIndex]+" "+Form3->AMPM[ComboBox5->ItemIndex];
        cadena="update accidente set direccion='"+Edit7->Text+"', ";
        cadena+="fecha='"+fechaaccidente+"', ";
        cadena+="hora='"+hora+"', ";
        cadena+="monto='"+Edit2->Text+"', ";
        cadena+="montoletra='"+Edit6->Text+"' ";
        cadena+="where id="+Form1->Label57->Caption;
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(cadena);
        Query1->ExecSQL();

        cadena="update avaluo set id='"+Edit3->Text+"', ";
        cadena+="expediente='"+Edit4->Text+"', ";
        x=ComboBox8->ItemIndex+1;
        cadena+="direccionrevision_id="+x+", ";
        fechaavaluo=Edit5->Text+"-"+Form3->MESES[ComboBox6->ItemIndex]+"-"+Form3->DIA[ComboBox6->ItemIndex];
        cadena+="fecha='"+fechaavaluo+"', ";
        z=ComboBox9->ItemIndex+1;
        cadena+="ciudadinspeccion_id="+(z);

        cadena+=" where id='"+y+"'";
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(cadena);
        Query1->ExecSQL();
        Form21->Close();
        MessageDlg("Debe estar agregado un vehiculo primero para luego modificar...",mtInformation,TMsgDlgButtons()<<mbOK,0);
        Form11->Edit1->Text=Form1->Label43->Caption;
        Form11->Image1Click(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TForm21::Image3Click(TObject *Sender)
{
Form21->Close();        
}
//---------------------------------------------------------------------------

