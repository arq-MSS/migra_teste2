table 60000 "Students"
{
    DrillDownPageID = 60003;
    LookupPageID = 60003;

    fields
    {
        field(1; "Cod Student"; Code[20])
        {
            Caption = 'Student Code';
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
        field(7; "Course No"; Decimal)
        {
            CalcFormula = Sum ("Mov. Course".Duration);
            Caption = 'Course No';
            DecimalPlaces = 0 : 0;
            FieldClass = FlowField;
        }
        field(8; "Students Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            InitValue = 1;
        }
        field(9; "Students Total"; Integer)
        {
            CalcFormula = Sum (Students."Students Count");
            FieldClass = FlowField;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod Student")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod Student" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Students Nos.");
            NoSeriesMgt.InitSeries(SeriesSetup."Students Nos.", xRec."No. Series", 0D, "Cod Student", "No. Series");
        END;
    end;

    var
        SeriesSetup: Record 60005;
        NoSeriesMgt: Codeunit 396;

}

