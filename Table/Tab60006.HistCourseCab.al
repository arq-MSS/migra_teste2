table 60006 "Hist. Course - Cab"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
            Description = 'Chave';
        }
        field(2; "Course Name"; Text[30])
        {
            Caption = 'Course Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Initial Date"; Date)
        {
            Caption = 'Initial Date';
            DataClassification = ToBeClassified;
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(5; Duration; Decimal)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(6; "Cod Professor"; Code[20])
        {
            Caption = 'Cod Professor';
            DataClassification = ToBeClassified;
            Description = 'formadores';
            TableRelation = Professors."Cod Professor";
        }
        field(7; "Name Professor"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Professors.Name WHERE("Cod Professor" = FIELD("Cod Professor")));
            Caption = 'Name Professor';

        }
        field(8; "Cod ClassRoom"; Code[20])
        {
            Caption = 'Cod ClassRoom';
            DataClassification = ToBeClassified;
            Description = 'Sala';
            TableRelation = Classroom."Cod ClassRoom";
        }
        field(9; "ClassRoom Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Classroom."ClassRoom Name" WHERE("Cod ClassRoom" = FIELD("Cod ClassRoom")));
            Caption = 'Name ClassRoom';

        }
        field(10; "Previous Cod Course"; Code[20])
        {
            Caption = 'Previous Cod Course';
            DataClassification = ToBeClassified;
        }
        field(97; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Cod Course")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnInsert()
    begin
        IF "Cod Course" = '' THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Course Historic Nos.");
            NoSeriesMgt.InitSeries(SeriesSetup."Course Historic Nos.", xRec."No. Series", 0D, "Cod Course", "No. Series");
            NoSeriesMgt.GetNextNo(SeriesSetup."Course Historic Nos.", TODAY(), TRUE);
        END;
    end;

    var
        SeriesSetup: Record 60005;
        NoSeriesMgt: Codeunit 396;
}

