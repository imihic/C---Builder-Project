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
	ini->WriteInteger("Main Window", "Left", StrToInt(eLeft->Text));
	ini->WriteInteger("Main Window", "Top", StrToInt(eTop->Text));
	ini->WriteInteger("Main Window", "Width", StrToInt(eWidth->Text));
	ini->WriteInteger("Main Window", "Height", StrToInt(eHeight->Text));
	ini->WriteInteger("Main Window", "FontSize", StrToInt(eFontSize->Text));
	if(chkStartMinimized->Checked){
		ini->WriteBool("Main Window", "StartMinimized", true);
	} else {
		ini->WriteBool("Main Window", "StartMinimized", false);
	}
	delete ini;
}
//---------------------------------------------------------------------------

void __fastcall TForm5::btnLoadChangesFromIniClick(TObject *Sender) {
	TIniFile* ini = new TIniFile(GetCurrentDir() + "\\settings.ini");
	eLeft->Text = ini->ReadInteger("Main Window", "Left", 0);
	eTop->Text = ini->ReadInteger("Main Window", "Top", 0);
	eWidth->Text = ini->ReadInteger("Main Window", "Width",800);
	eHeight->Text = ini->ReadInteger("Main Window", "Height", 1200);
	eFontSize->Text = ini->ReadInteger("Main Window", "FontSize", 8);
	chkStartMinimized->Checked = ini->ReadBool("Main Window", "FontSize", false);
	delete ini;
}
