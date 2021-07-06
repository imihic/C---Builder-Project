//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
#include <Vcl.Styles.hpp>
#include <Vcl.Themes.hpp>
USEFORM("Unit4.cpp", formCreateNewInvoice);
USEFORM("Unit3.cpp", Form3);
USEFORM("Unit2.cpp", eInvoice);
USEFORM("Unit5.cpp", Form5);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	HANDLE hMutex = CreateMutex(NULL, FALSE, L"EInvoiceApp");
	if(hMutex == NULL){
		ShowMessage(GetLastError());
	} else {
		if(GetLastError() == ERROR_ALREADY_EXISTS){
			ShowMessage("Aplikacija veæ pokrenuta!");
			return -1;
		}
	}


	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		TStyleManager::TrySetStyle("Aqua Graphite");
		Application->CreateForm(__classid(TeInvoice), &eInvoice);
		Application->CreateForm(__classid(TForm3), &Form3);
		Application->CreateForm(__classid(TformCreateNewInvoice), &formCreateNewInvoice);
		Application->CreateForm(__classid(TForm5), &Form5);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
