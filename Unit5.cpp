//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit5.h"
#include <registry.hpp>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::btnSaveChangesClick(TObject *Sender)
{
	TIniFile* ini = new TIniFile(GetCurrentDir() + "\\settings.ini");
	ini->writeInteger("Main Window", "Left", eLeft);
	ini->writeInteger("Main Window", "Top", eTop);
	ini->writeInteger("Main Window", "Width", eWidth);
	ini->writeInteger("Main Window", "Height", eHeight);
	ini->writeInteger("Main Window", "FontSize", eFontSize);
	if(chkStartMinimized->Checked){
		ini->writeInteger("Main Window", "StartMinimized", "True");
	} else {
		ini->writeInteger("Main Window", "StartMinimized", "False");
	}
	delete ini;
}
//---------------------------------------------------------------------------
