//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit10.h"
#include "Unit11.h"
#include "Unit12.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{

        activado=0;
        Form1->WindowState=wsMaximized;

        rellenar();

}
//---------------------------------------------------------------------------
void __fastcall TForm1::llamalo(){
        int total=0;
        Query2->Close();
        Query2->SQL->Clear();
        Query2->SQL->Add("select count(*) as total from perito");
        Query2->Active=true;
        total=Query2->FieldByName("total")->Value;
        if(total==0){
                Form10->ShowModal();
        }

}
void __fastcall TForm1::rellenar(){
        Form1->Left=0;
        Form1->Top=0;
        int i=0,y,j=0;
        String x="select * from autopartes",var;

        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(x);
        Query1->Active=true;

        Query1->First();
        while(!Query1->Eof){

                y=Query1->FieldByName("tipoautoparte_id")->Value;
                if(y==1){
                        var=Query1->FieldByName("nombre")->Value;
                        CheckListBox1->Items->Add(var.UpperCase());
                        reparar[i]=var.UpperCase();
                        idreparar[i]=Query1->FieldByName("id")->Value;
                        i++;
                }else{
                        var=Query1->FieldByName("nombre")->Value;
                        CheckListBox2->Items->Add(var.UpperCase());
                        cambiar[j]=var.UpperCase();
                        idcambiar[j]=Query1->FieldByName("id")->Value;
                        j++;
                }
                Query1->Next();
        }
        totalreparar=i;
        totalcambiar=j;
}
//--------------Agregar Conductor'-------------------------------------------
void __fastcall TForm1::Image1Click(TObject *Sender)
{

        llamalo();
        Form2->ShowModal();
        Form2->ban=0;
        Form2->ban1=0;


}
//---------------------------------------------------------------------------
void __fastcall TForm1::Image4Click(TObject *Sender)
{

       if(activado==2){
        Form3->Edit3Click(Sender);
        Form3->formularXD();
        Form3->ShowModal();
       }else{
        MessageDlg("Debes registrar el vehiculo primero", mtInformation, TMsgDlgButtons() << mbOK, 0);
       }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image2Click(TObject *Sender)
{
       if(activado==1){
        Form4->marca();
        Form4->colores();
        Form4->tipo();
        Form4->seguro();
        Form4->ShowModal();
       }else{
        MessageDlg("Debes registrar el conductor primero", mtInformation, TMsgDlgButtons() << mbOK, 0);
       }
}
//---------------------------------------------------------------------------









        //Form1->WindowState=wsMaximized;

void __fastcall TForm1::Image9Click(TObject *Sender)
{
        Form1->WindowState=wsMinimized;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image10Click(TObject *Sender)
{
        if( Application->MessageBox(
			"Desea Salir de la Aplicación",
			"Saliendo de Apasoft",
			MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES )
		exit(0);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image11Click(TObject *Sender)
{
        MessageDlg("Debes hacer Clic a las imagenes de la izquierda. Son 4 estaciones en total.\n\n"
                   "Para empezar a trabajar, haz clic en 'Agregar Conductor' y rellena los campos de texto.\n\n"
                   "Una vez trabajó en la primera estación, haz clic en 'Agregar vehiculo' y rellena los campos de texto.\n\n"
                   "Una vez trabajó en la segunda estación, haz clic en 'Acta Avaluo Accidente' y rellena los campos de texto.\n\n"
                   "Una vez Trabajó en la tercera estación, procedemos a ver el lado derecho del programa y procedemos a seleccionar las autopartes a cambiar y/o reparar.\n\n"
                   "Una vez seleccionado en la sección derecha de 'AutoPartes', haz clic en la imagen asignar\n\n"
                   "Si falta una autoparte en la lista, haz clic en la parte inferior izquierda, donde dice 'Agregar autopartes'.", mtInformation, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image6Click(TObject *Sender)
{
        llamalo();
        String cadena;
        String accidente=Label57->Caption;
        if(activado==4){
                for (int i=0;i<totalselectreparar;i++)
                {
                        cadena="INSERT INTO accidentesautoparte VALUES(null,"+selectreparar[i]+","+accidente+")";
                        Query1->Close();
                        Query1->SQL->Clear();
                        Query1->SQL->Add(cadena);
                        Query1->ExecSQL();
                }
                for (int i=0;i<totalselectcambiar;i++)
                {
                        cadena="INSERT INTO accidentesautoparte VALUES(null,"+selectcambiar[i]+","+accidente+")";
                        Query1->Close();
                        Query1->SQL->Clear();
                        Query1->SQL->Add(cadena);
                        Query1->ExecSQL();
                }
                MessageDlg("Agregado con éxito",mtInformation,TMsgDlgButtons()<<mbOK,0);
                Image6->Visible=false;
                Image12->Visible=true;        
        }else{
                MessageDlg("Debes seleccionar autopartes de cambio o reparación primero", mtInformation, TMsgDlgButtons() << mbOK, 0);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image5Click(TObject *Sender)
{
        totalselectreparar=0;
        totalselectcambiar=0;
        ListBox1->Clear();
        ListBox2->Clear();
        if(activado==3||activado==4){
                for (int i=0;i<totalreparar;i++)
                {
                        if(CheckListBox1->Checked[i]==true)
                        {
                                selectreparar[totalselectreparar]=idreparar[i];
                                ListBox1->Items->Add(reparar[i]);
                                totalselectreparar++;
                        }
                }
                for (int i=0;i<totalcambiar;i++)
                {
                        if(CheckListBox2->Checked[i]==true)
                        {
                                selectcambiar[totalselectcambiar]=idcambiar[i];
                                ListBox2->Items->Add(cambiar[i]);
                                totalselectcambiar++;
                        }
                }
                activado=4;
        }else{
                MessageDlg("Debe primero Ingresar 'Acta Avaluo accidente'",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Salir1Click(TObject *Sender)
{
        Image10Click(Sender);        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::PeritoAvaluador1Click(TObject *Sender)
{
        llamalo();
        Form11->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image12Click(TObject *Sender)
{
        llamalo();
        String cadena,sitio,primera;
        String meses[13]={"ENERO","FEBRERO","MARZO","ABRIL","MAYO","JUNIO","JULIO","AGOSTO","SEPTIEMBRE","OCTUBRE","NOVIEMBRE","DICIEMBRE"};
        char cadenota[200],FECHA[10],*p,primero[10000];
        for(int i=0;i<10000;i++){
                primero[i]=NULL;
                if(i<200)
                cadenota[i]=NULL;
                if(i<10)
                FECHA[i]=NULL;
        }
        int i=0;
        cadena="select * from encabezado where id=1";
        Query1->Close();
        Query1->SQL->Clear();
        Query1->SQL->Add(cadena);
        Query1->Active=true;
        cadena=Query1->FieldByName("cabecera")->Value;
        sitio=Query1->FieldByName("sitio")->Value;
        primera=Query1->FieldByName("primeraparte")->Value;
        Form12->QRLabel11->Caption=sitio+",";
        StrCopy(cadenota,cadena.c_str());
        p=strtok(cadenota,"\n");
        while(p!=NULL){
                cadena=p;
                Form12->QRMemo2->Lines->Add(cadena);
                p=strtok(NULL,"\n");
        }
        i=0;
        cadena=Label41->Caption;
        StrCopy(FECHA,cadena.c_str());
        p=strtok(FECHA,"-");
        String x,y,z;
        while(p!=NULL){
                if(i==0){
                        z=" DEL ";
                        z+=p;
                }
                if(i==1){
                        y=" DE ";
                        y+=meses[atoi(p)-1];
                }
                if(i==2){
                        x=" ";
                        x+=p;
                }
                p=strtok(NULL,"-");
                i++;
        }
        StrCopy(primero,primera.c_str());
        p=strtok(primero,"\n");
        while(p!=NULL){
                cadena=p;
                if(cadena=="METODOLOGÍA APLICADA"){
                        Form12->QRMemo1->Lines->Add("");
                        Form12->QRLabel3->Caption=cadena;
                        Form12->QRLabel3->Font->Style=TFontStyles() << fsBold << fsUnderline;
                        Form12->QRLabel3->Left=2;
                        Form12->QRLabel3->Top=113;
                        Form12->QRMemo1->Lines->Add("");
                }else
                Form12->QRMemo1->Lines->Add(cadena);
                p=strtok(NULL,"\n");
        }
        cadena=NULL;
        for (int i=0;i<totalselectcambiar;i++)
        {

                if(i%5==0){
                        cadena+=selectcambiar[i];
                        Form12->QRMemo3->Lines->Add(cadena);
                        cadena=NULL;
                }else{
                        cadena+=selectcambiar[i]+",";
                }

        }

        Form12->QRLabel29->Caption=Label29->Caption;
        Form12->QRLabel30->Caption=Label5->Caption;
        Form12->QRLabel31->Caption=Label7->Caption;
        Form12->QRLabel32->Caption=Label9->Caption;
        Form12->QRLabel33->Caption=Label11->Caption;
        Form12->QRLabel34->Caption=Label15->Caption;
        Form12->QRLabel35->Caption=Label13->Caption;
        Form12->QRLabel36->Caption=Label19->Caption;
        Form12->QRLabel37->Caption=Label21->Caption;
        Form12->QRLabel38->Caption=Label25->Caption;
        Form12->QRLabel39->Caption=Label23->Caption;
        Form12->QRLabel40->Caption=Label27->Caption;
        Form12->QRLabel41->Caption=Label59->Caption;
        Form12->QRLabel42->Caption=Label31->Caption;
        Form12->QRLabel43->Caption=Label33->Caption;
        Form12->QRLabel44->Caption=Label35->Caption;
        Form12->QRLabel45->Caption=Label37->Caption;
        Form12->QRLabel46->Caption=Label49->Caption;
        Form12->QRLabel47->Caption=Label53->Caption;

        Form12->QRLabel9->Caption=Label45->Caption;
        Form12->QRLabel10->Caption=Label43->Caption;
        Form12->QRLabel12->Caption=x+y+z;
        Form12->QuickRep3->Preview();
}
//---------------------------------------------------------------------------


