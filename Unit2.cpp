﻿//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
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
	if(eOIBPrimateljaFilter->Text != ""){
		tPrimatelji->Filter = "OIB = "  + eOIBPrimateljaFilter->Text;
		if ( tPrimatelji->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica uspješno filtrirana prema OIB-u!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
	else if(eNazivPrimateljaFilter->Text != ""){
		tPrimatelji->Filter = "naziv LIKE *"  + eNazivPrimateljaFilter->Text + "*";
		if ( tPrimatelji->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica uspješno filtrirana prema nazivu!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
	else if(eAdresaPrimateljaFilter->Text != ""){
		tPrimatelji->Filter = "adresa LIKE *"  + eAdresaPrimateljaFilter->Text + "*";
		if ( tPrimatelji->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica uspješno filtrirana prema adresi!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
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




void __fastcall TeInvoice::Settings1Click(TObject *Sender)
{
	Form5->ShowModal();
}
//---------------------------------------------------------------------------








void __fastcall TeInvoice::btnFilterInvoiceClick(TObject *Sender)
{
	if(eInvoiceDescription->Text != ""){
		tRacuni->Filter = "opis LIKE *"  + eInvoiceDescription->Text + "*";
		if ( tRacuni->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica računa uspješno filtrirana prema opisu!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
	else if(eInvoiceAmount->Text != ""){
		tRacuni->Filter = "eInvoiceAmount = "  + eInvoiceAmount->Text ;
		if ( tRacuni->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica računa uspješno filtrirana prema iiznosu!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
	else if(cmbInvoiceStatus->Text != ""){
		tRacuni->Filter = "status LIKE "  + cmbInvoiceStatus->Text;
		if ( tRacuni->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica računa uspješno filtrirana prema statusu!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
	else if(true) {
		dtpInvoiceIssueDate->Enabled = true;
		if(DateTimeToStr(dtpInvoiceIssueDate->Date) != ""){
		tRacuni->Filter = "datum_izdavanja = " + DateTimeToStr(dtpInvoiceIssueDate->Date);
		if ( tRacuni->Filtered==false){
			tPrimatelji->Filtered=true;
			Application->MessageBox(L"Tablica računa uspješno filtrirana prema datumu!", L"Informacija", MB_OK | MB_ICONINFORMATION | MB_OK);
		}
	}
    }
}
//---------------------------------------------------------------------------


