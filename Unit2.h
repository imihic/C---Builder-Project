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
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TeInvoice : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TDBGrid *DBGrid1;
	TADOConnection *ADOConnection1;
	TADOTable *tPrimatelji;
	TDataSource *dPrimatelji;
	TDBNavigator *DBNavigatorPrimatelji;
	TLabel *filterLabelPrimateljNaziv;
	TEdit *eNazivPrimateljaFilter;
	TLabel *filterLabelOIBPrimatelja;
	TEdit *eOIBPrimateljaFilter;
	TEdit *eAdresaPrimateljaFilter;
	TLabel *filterLabelAdresaPrimatelja;
	TButton *btnFilter;
	TButton *btnClear;
	TMainMenu *MainMenu1;
	TMenuItem *menuFile;
	TMenuItem *submenuNewInvoice;
	TMenuItem *submenuImport;
	TMenuItem *fromXML1;
	TMenuItem *fromeInvoice1;
	TMenuItem *Export1;
	TMenuItem *submenuExportToXML;
	TMenuItem *submenuExportToInv;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *submenuQuit;
	TMenuItem *View1;
	TMenuItem *submenuGotoUsersmenu;
	TMenuItem *GotoInvoiceMenu1;
	TMenuItem *Options1;
	TMenuItem *ChangeLanguage1;
	TMenuItem *Englisj1;
	TMenuItem *Croatian1;
	TAutoIncField *tPrimateljiID;
	TWideStringField *tPrimateljinaziv;
	TWideStringField *tPrimateljioib;
	TWideStringField *tPrimateljiadresa;
	TGroupBox *GroupBox2;
	TLabel *Label1;
	TDBEdit *DBEdit1;
	TLabel *Label2;
	TDBEdit *DBEdit2;
	TLabel *Label3;
	TDBEdit *DBEdit3;
	TMenuItem *menuTools;
	TMenuItem *submenuGenerateReport;
	TDBGrid *DBGrid2;
	TDataSource *dRacuni;
	TADOTable *tRacuni;
	TAutoIncField *tRacuniID;
	TWideStringField *tRacuniopis;
	TIntegerField *tRacuniiznos;
	TWideStringField *tRacunistatus;
	TIntegerField *tRacuniprimateljID;
	TDBNavigator *DBNavigator1;
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TGroupBox *GroupBox3;
	TLabel *Label4;
	TEdit *eInvoiceDescription;
	TEdit *eInvoiceAmount;
	TLabel *Label5;
	TGroupBox *GroupBox4;
	TLabel *Label6;
	TDBEdit *DBEdit4;
	TLabel *Label7;
	TDBEdit *DBEdit5;
	TMenuItem *Settings1;
	TDBLookupComboBox *cmbInvoiceStatus;
	TDataSource *dStatusi;
	TDateTimePicker *dtpInvoiceIssueDate;
	TLabel *Label9;
	TDateTimeField *tRacunidatum_izdavanja;
	TWideStringField *tRacuniVrstadokumenta;
	TWideStringField *tPrimateljiporezna_shema;
	TWideStringField *tPrimateljiemail;
	TWideStringField *tPrimateljibroj_telefona;
	TLabel *Label10;
	TDBEdit *DBEdit6;
	TLabel *Label11;
	TDBEdit *DBEdit7;
	TLabel *Label12;
	TDBEdit *DBEdit8;
	TLabel *Label8;
	TADOTable *tStatusi;
	TWideStringField *tStatusistatus;
	TAutoIncField *tStatusiID;
	TButton *btnFilterInvoice;
	TButton *Button5;
	void __fastcall GotoInvoiceMenu1Click(TObject *Sender);
	void __fastcall submenuNewInvoiceClick(TObject *Sender);
	void __fastcall btnFilterClick(TObject *Sender);
	void __fastcall btnClearClick(TObject *Sender);
	void __fastcall Settings1Click(TObject *Sender);
	void __fastcall btnFilterInvoiceClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TeInvoice(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TeInvoice *eInvoice;
//---------------------------------------------------------------------------
#endif
