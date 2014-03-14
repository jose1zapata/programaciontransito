//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit10.h"
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
			"Desea Salir de la Aplicaci�n",
			"Saliendo de Apasoft",
			MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES )
		exit(0);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image11Click(TObject *Sender)
{
        MessageDlg("Debes hacer Clic a las imagenes de la izquierda. Son 4 estaciones en total.\n\n"
                   "Para empezar a trabajar, haz clic en 'Agregar Conductor' y rellena los campos de texto.\n\n"
                   "Una vez trabaj� en la primera estaci�n, haz clic en 'Agregar vehiculo' y rellena los campos de texto.\n\n"
                   "Una vez trabaj� en la segunda estaci�n, haz clic en 'Acta Avaluo Accidente' y rellena los campos de texto.\n\n"
                   "Una vez Trabaj� en la tercera estaci�n, procedemos a ver el lado derecho del programa y procedemos a seleccionar las autopartes a cambiar y/o reparar.\n\n"
                   "Una vez seleccionado en la secci�n derecha de 'AutoPartes', haz clic en la imagen asignar\n\n"
                   "Si falta una autoparte en la lista, haz clic en la parte inferior izquierda, donde dice 'Agregar autopartes'.", mtInformation, TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image6Click(TObject *Sender)
{
        llamalo();
        if(activado==4){
                
        }else{
                MessageDlg("Debes seleccionar autopartes primero", mtInformation, TMsgDlgButtons() << mbOK, 0);
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

