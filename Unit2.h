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
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *MainMenu1;
	TMenuItem *Menu1;
	TMenuItem *NeweInvoice1;
	TMenuItem *Import1;
	TMenuItem *fromXML1;
	TMenuItem *Exit1;
	TMenuItem *FromJson1;
	TMenuItem *fromeInv1;
	TMenuItem *Options1;
	TMenuItem *ChangeLanguage1;
	TMenuItem *Englush1;
	TMenuItem *Croatian1;
	TMenuItem *N1;
	TSQLConnection *SQLiteConnection;
	TGroupBox *GroupBox1;
	TSQLTable *racuni;
	TDBGrid *DBGrid1;
	TDataSource *DRacuni;
	TSQLQuery *SQLQuery1;
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
