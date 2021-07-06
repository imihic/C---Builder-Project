//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit4.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TformCreateNewInvoice *formCreateNewInvoice;
//---------------------------------------------------------------------------
__fastcall TformCreateNewInvoice::TformCreateNewInvoice(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TformCreateNewInvoice::btnCreateNewInvoiceClick(TObject *Sender)
{
	formCreateNewInvoice->tRacuni->Append(); // dodaj novi zapis
	formCreateNewInvoice->tRacuni->FieldByName("primateljID")->AsInteger = DBLookupComboBox1->KeyValue;
	formCreateNewInvoice->tRacuni->FieldByName("opis")->AsString = eDescription->Text;
	formCreateNewInvoice->tRacuni->FieldByName("status")->AsString = "Nije potpisan";
	formCreateNewInvoice->tRacuni->FieldByName("iznos")->AsString = eValue->Text;
	formCreateNewInvoice->tRacuni->Post(); // pohrani zapis

	Application->MessageBox(L"Novi eRaèun kreiran!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
}
//---------------------------------------------------------------------------







