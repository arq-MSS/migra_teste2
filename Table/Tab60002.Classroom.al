table 60002 "Classroom"
{
    DrillDownPageID = 60006;
    LookupPageID = 60006;

    fields
    {
        field(1; "Cod ClassRoom"; Code[20])
        {
            Caption = 'Cod ClassRoom';
            DataClassification = ToBeClassified;
        }
        field(2; "ClassRoom Name"; Text[50])
        {
            Caption = 'Name';
            FieldClass = Normal;
        }
        field(3; Location; Text[50])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
        }
        field(4; Capacity; Integer)
        {
            Caption = 'Capacity';
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod ClassRoom")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod ClassRoom" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("ClassRoom Nos.");
            NoSeriesMgt.InitSeries(SeriesSetup."ClassRoom Nos.", xRec."No. Series", 0D, "Cod ClassRoom", "No. Series");
        END;
    end;

    trigger OnModify()
    begin
        CourseOverview.CALCFIELDS("ClassRoom Name");
    end;

    var
        SeriesSetup: Record 60005;
        CourseOverview: Record 60003;
        NoSeriesMgt: Codeunit 396;

}

