table 60001 "Professors"
{
    DrillDownPageID = 60004;
    LookupPageID = 60004;

    fields
    {
        field(1; "Cod Professor"; Code[20])
        {
            Caption = 'Cod Professor';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; Phone; Text[30])
        {
            Caption = 'Phone';
            DataClassification = ToBeClassified;
        }
        field(5; Email; Text[80])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
        field(98; "Professors Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            InitValue = 1;
        }
        field(99; "Professors Total"; Integer)
        {
            CalcFormula = Sum (Professors."Professors Count");
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Cod Professor")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod Professor" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Professors Nos.");
            NoSeriesMgt.InitSeries(SeriesSetup."Professors Nos.", xRec."No. Series", 0D, "Cod Professor", "No. Series");
        END;
    end;

    trigger OnModify()
    begin
        CourseOverview.CALCFIELDS("Name Professor");
    end;

    var
        SeriesSetup: Record 60005;
        CourseOverview: Record 60003;
        NoSeriesMgt: Codeunit 396;

}

