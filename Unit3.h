//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TADOConnection *ADOConnection1;
	TDBGrid *DBGrid1;
	TADOQuery *ADOQuery1;
	TDataSource *dRacuniJoin;
	TAutoIncField *ADOQuery1ID;
	TWideStringField *ADOQuery1opis;
	TIntegerField *ADOQuery1iznos;
	TWideStringField *ADOQuery1naziv;
	TWideStringField *ADOQuery1oib;
	TWideStringField *ADOQuery1adresa;
	TDBNavigator *DBNavigator1;
	TGroupBox *GroupBox1;
	TDataSource *dStatusi;
	TADOTable *tStatusi;
	TWideStringField *tStatusistatus;
	TWideStringField *ADOQuery1status;
	TLabel *Label1;
	TDBEdit *DBEdit1;
	TLabel *Label2;
	TDBEdit *DBEdit2;
	TLabel *Label3;
	TLabel *Label4;
	TDBEdit *DBEdit4;
	TLabel *Label5;
	TDBEdit *DBEdit5;
	TLabel *Label6;
	TDBEdit *DBEdit6;
	TAutoIncField *tStatusiID;
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
