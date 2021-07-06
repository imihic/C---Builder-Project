//---------------------------------------------------------------------------

#ifndef Unit4H
#define Unit4H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.DBActns.hpp>
//---------------------------------------------------------------------------
class TformCreateNewInvoice : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TDBLookupComboBox *DBLookupComboBox1;
	TADOConnection *ADOConnection1;
	TADOTable *tPrimatelji;
	TDataSource *dPrimatelji;
	TADOTable *tRacuni;
	TDataSource *dRacuni;
	TGroupBox *GroupBox2;
	TLabel *Label2;
	TGroupBox *GroupBox3;
	TButton *btnCreateNewInvoice;
	TAutoIncField *tPrimateljiID;
	TWideStringField *tPrimateljinaziv;
	TWideStringField *tPrimateljioib;
	TWideStringField *tPrimateljiadresa;
	TAutoIncField *tRacuniID;
	TWideStringField *tRacuniopis;
	TIntegerField *tRacuniiznos;
	TWideStringField *tRacunistatus;
	TIntegerField *tRacuniprimateljID;
	TEdit *eDescription;
	TEdit *eValue;
	TGroupBox *GroupBox4;
	TLabel *Label3;
	TDBLookupComboBox *DBLookupComboBox2;
	TADOTable *tVrstaDokumenta;
	TDataSource *dVrstaDokumenta;
	void __fastcall btnCreateNewInvoiceClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TformCreateNewInvoice(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TformCreateNewInvoice *formCreateNewInvoice;
//---------------------------------------------------------------------------
#endif
