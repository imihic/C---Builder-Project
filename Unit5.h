//---------------------------------------------------------------------------

#ifndef Unit5H
#define Unit5H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm5 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TEdit *eWidth;
	TEdit *eHeight;
	TLabel *Label2;
	TEdit *eTop;
	TLabel *Label3;
	TEdit *eLeft;
	TLabel *Label4;
	TCheckBox *chkStartMinimized;
	TEdit *eFontSize;
	TUpDown *UpDown1;
	TLabel *Label5;
	TButton *btnSaveChanges;
	TButton *btnLoadChangesFromIni;
	void __fastcall btnSaveChangesClick(TObject *Sender);
	void __fastcall btnLoadChangesFromIniClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm5(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm5 *Form5;
//---------------------------------------------------------------------------
#endif
