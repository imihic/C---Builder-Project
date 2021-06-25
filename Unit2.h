//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Data.DbxSqlite.hpp>
#include <Data.SqlExpr.hpp>
#include <Data.FMTBcd.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TeInvoice : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TDBGrid *DBGrid1;
	TADOConnection *ADOConnection1;
	TADOTable *tPrimatelji;
	TADOTable *tRacuni;
	TDataSource *dPrimatelji;
	TDataSource *dRacuni;
	TDBNavigator *DBNavigatorPrimatelji;
	TLabel *filterLabelPrimateljNaziv;
	TEdit *eNazivPrimateljaFilter;
	TLabel *filterLabelOIBPrimatelja;
	TEdit *eOIBPrimateljaFilter;
	TEdit *eAdresaPrimateljaFilter;
	TLabel *filterLabelAdresaPrimatelja;
	TButton *btnFilter;
	TButton *btnClear;
private:	// User declarations
public:		// User declarations
	__fastcall TeInvoice(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TeInvoice *eInvoice;
//---------------------------------------------------------------------------
#endif
