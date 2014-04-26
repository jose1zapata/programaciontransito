#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
class TForm21 : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TImage *Image1;
        TPanel *Panel2;
        TImage *Image2;
        TImage *Image3;
        TPanel *Panel3;
        TComboBox *ComboBox1;
        TComboBox *ComboBox8;
        TComboBox *ComboBox9;
        TLabel *Label1;
        TLabel *Label2;
        TComboBox *ComboBox2;
        TLabel *Label3;
        TComboBox *ComboBox3;
        TComboBox *ComboBox4;
        TLabel *Label4;
        TLabel *Label5;
        TEdit *Edit1;
        TEdit *Edit2;
        TLabel *Label6;
        TLabel *Label7;
        TEdit *Edit3;
        TLabel *Label8;
        TComboBox *ComboBox5;
        TComboBox *ComboBox6;
                TComboBox *ComboBox7;
        TLabel *Label9;
        TLabel *Label10;
        TEdit *Edit4;
        TEdit *Edit5;
        TEdit *Edit6;
        TEdit *Edit7;
        TLabel *Label11;
        TQuery *Query1;
        void __fastcall Edit2KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit6KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit7KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit3KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit4KeyPress(TObject *Sender, char &Key);
        void __fastcall Image2Click(TObject *Sender);
        void __fastcall Image3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm21(TComponent* Owner);
        void __fastcall ajustar();
        void __fastcall dia(String x,int ban);
        void __fastcall minutos(String x);
        void __fastcall mes(String x,int ban);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm21 *Form21;
//---------------------------------------------------------------------------
