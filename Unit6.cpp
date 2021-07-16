//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit6.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm6 *Form6;
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Button1Click(TObject *Sender)
{
	if(OpenDialog1->Execute()){
		if(FileExists(OpenDialog1->FileName)){
			XMLDocument1->LoadFromFile(OpenDialog1->FileName);
			richEditXML->Text = XMLDocument1->load;
		}
	}
}
//---------------------------------------------------------------------------





