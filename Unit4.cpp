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
	formCreateNewInvoice->tRacuni->Open();
	formCreateNewInvoice->tRacuni->Append(); // dodaj novi zapis
	formCreateNewInvoice->tRacuni->FieldByName("primateljID")->AsInteger = 1;
	formCreateNewInvoice->tRacuni->FieldByName("opis")->AsString = "Neki opis";
	formCreateNewInvoice->tRacuni->FieldByName("status")->AsString = "Nije potpisan";
	formCreateNewInvoice->tRacuni->FieldByName("iznos")->AsInteger = 100000;
	formCreateNewInvoice->tRacuni->Post(); // pohrani zapis
	formCreateNewInvoice->tRacuni->Close();
}
//---------------------------------------------------------------------------

