codeunit 60013 "Import XML Students"
{

    trigger OnRun()
    var
        Import: File;
        varInputStream: InStream;
    begin
        Import.OPEN('C:\Temp\Import\formandos.csv');
        Import.CREATEINSTREAM(varInputStream);
        XMLPORT.IMPORT(XMLPORT::Students, varInputStream);
        Import.CLOSE();
        MESSAGE('Imported');
    end;
}

