//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit10.h"
#include "ctype.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm10 *Form10;
String estados[100]={"AMAZONAS.",
"ANZOÁTEGUI.",
"APURE.",
"ARAGUA.",
"BARINAS.",
"BOLÍVAR.",
"CARABOBO.",
"COJEDES.",
"DELTA AMACURO.",
"DISTRITO FEDERAL.",
"FALCÓN.",
"GUÁRICO.",
"LARA.",
"MÉRIDA.",
"MIRANDA.",
"MONAGAS.",
"NUEVA ESPARTA.",
"PORTUGUESA.",
"SUCRE.",
"TÁCHIRA.",
"VARGAS.",
"YARACUY.",
"ZULIA.",
};
//---------------------------------------------------------------------------
__fastcall TForm10::TForm10(TComponent* Owner)
        : TForm(Owner)
{
        ComboBox1->Clear();
        ComboBox1->Text="Estado...";
        for (int i=0;i<23;i++)
        {
                ComboBox1->Items->Add(estados[i]);
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm10::Image4Click(TObject *Sender)
{
        exit(0);
}
//---------------------------------------------------------------------------
void __fastcall TForm10::Edit1KeyPress(TObject *Sender, char &Key)
{
        if(!isdigit(Key)){
                Key=toupper(Key);
        }
        else{
                Key=NULL;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Edit2KeyPress(TObject *Sender, char &Key)
{
        Edit1KeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Edit3KeyPress(TObject *Sender, char &Key)
{
        Edit2KeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Edit4KeyPress(TObject *Sender, char &Key)
{
        if(!isdigit(Key)&&Key!=8){
            Key=NULL;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Edit5KeyPress(TObject *Sender, char &Key)
{
        Edit4KeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Image2Click(TObject *Sender)
{
        if(!Edit1->Text.IsEmpty()){
                if(!Edit2->Text.IsEmpty()){
                        if(!Edit4->Text.IsEmpty()){
                                if(!Edit5->Text.IsEmpty()){
                                        if(ComboBox1->ItemIndex!=-1){
                                                String cadena,aux;
                                                aux=Edit5->Text+" Estado "+estados[ComboBox1->ItemIndex];
                                                cadena="INSERT INTO perito VALUES(1,'"+Edit1->Text+"','"+Edit2->Text+"','"+Edit3->Text+"','"+Edit4->Text+"','"+aux+"')";
                                                Query1->Close();
                                                Query1->SQL->Clear();
                                                Query1->SQL->Add(cadena);
                                                Query1->ExecSQL();
                                                MessageDlg("insertado con éxito",mtInformation,TMsgDlgButtons()<<mbOK,0);
                                                Form10->Close();
                                        }else{
                                                MessageDlg("Seleccione el estado de la unidad",mtInformation,TMsgDlgButtons()<<mbOK,0);
                                        }
                                }else{
                                        MessageDlg("Ingrese unidad",mtInformation,TMsgDlgButtons()<<mbOK,0);
                                }
                        }else{
                                MessageDlg("Ingrese la cedula",mtInformation,TMsgDlgButtons()<<mbOK,0);
                        }
                }else{
                        MessageDlg("Ingrese el apellido",mtInformation,TMsgDlgButtons()<<mbOK,0);
                }
        }else{
                MessageDlg("Ingrese el nombre",mtInformation,TMsgDlgButtons()<<mbOK,0);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm10::Image3Click(TObject *Sender)
{
        MessageDlg("Todos los campos se llenan obligatoriamente, menos, el campo profesión que es opcional",mtInformation,TMsgDlgButtons()<<mbOK,0);        
}
//---------------------------------------------------------------------------

