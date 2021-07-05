//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TeInvoice *eInvoice;
//---------------------------------------------------------------------------
__fastcall TeInvoice::TeInvoice(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------






void __fastcall TeInvoice::GotoInvoiceMenu1Click(TObject *Sender)
{
	Form3->ShowModal();
    eInvoice->CloseModal();
}
//---------------------------------------------------------------------------



void __fastcall TeInvoice::submenuNewInvoiceClick(TObject *Sender)
{
	formCreateNewInvoice->Show();
}
//---------------------------------------------------------------------------




void __fastcall TeInvoice::btnFilterClick(TObject *Sender)
{
	tPrimatelji->Filter = "OIB = "  + eOIBPrimateljaFilter->Text;
		if ( tPrimatelji->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica uspješno filtrirana prema parametrima!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
}
//---------------------------------------------------------------------------

void __fastcall TeInvoice::btnClearClick(TObject *Sender)
{
	eOIBPrimateljaFilter->Text = "";
	eNazivPrimateljaFilter->Text = "";
	eAdresaPrimateljaFilter->Text = "";
	Application->MessageBox(L"Polja očišćena!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
}
//---------------------------------------------------------------------------

