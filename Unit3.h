//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TImage *Image1;
        TPanel *Panel2;
        TImage *Image2;
        TImage *Image3;
        TImage *Image4;
        TPanel *Panel3;
        TGroupBox *GroupBox1;
        TLabel *Label1;
        TLabel *Label2;
        TComboBox *ComboBox1;
        TLabel *Label3;
        TComboBox *ComboBox2;
        TLabel *Label4;
        TEdit *Edit1;
        TComboBox *ComboBox3;
        TLabel *Label5;
        TComboBox *ComboBox4;
        TComboBox *ComboBox5;
        TLabel *Label6;
        TEdit *Edit2;
        TPanel *Panel4;
        TLabel *Label7;
        TMemo *Memo1;
        TLabel *Label8;
        TEdit *Edit3;
        TLabel *Label9;
        TEdit *Edit4;
        TMemo *Memo2;
        TLabel *Label10;
        TComboBox *ComboBox6;
        TComboBox *ComboBox7;
        TEdit *Edit5;
        TLabel *Label11;
        TLabel *Label12;
        TLabel *Label13;
        TQuery *Query1;
        void __fastcall Image3Click(TObject *Sender);
        void __fastcall Image2Click(TObject *Sender);
        void __fastcall Edit2KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit3Click(TObject *Sender);
        void __fastcall Edit3Enter(TObject *Sender);
        void __fastcall Memo1KeyPress(TObject *Sender, char &Key);
        void __fastcall Memo2KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit3KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit1KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit5KeyPress(TObject *Sender, char &Key);
private:	// User declarations
public:		// User declarations
        __fastcall TForm3(TComponent* Owner);
        String idperito,numerito;
       void  __fastcall formularXD();
       void __fastcall super(String sms);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
