table 60003 "Course - Cab"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
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
            TableRelation = Professors;
        }
        field(7; "Name Professor"; Text[50])
        {

            Caption = 'Name Professor';
            Description = 'Flowfield';
            FieldClass = FlowField;
            CalcFormula = Lookup (Professors.Name WHERE("Cod Professor" = FIELD("Cod Professor")));
        }
        field(8; "Cod ClassRoom"; Code[20])
        {
            Caption = 'Cod ClassRoom';
            Description = 'Sala com capacidade maior que 30';
            FieldClass = Normal;
            TableRelation = Classroom."Cod ClassRoom" WHERE(Capacity = FILTER(> 30));
        }
        field(9; "ClassRoom Name"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Classroom."ClassRoom Name" WHERE("Cod ClassRoom" = FIELD("Cod ClassRoom")));
            Caption = 'Name ClassRoom';
            Description = 'Flowfield';

        }
        field(97; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
        field(98; "Course Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Enabled = true;
        }
        field(99; Total; Integer)
        {
            CalcFormula = Sum ("Course - Cab"."Course Count");
            FieldClass = FlowField;
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
            SeriesSetup.TESTFIELD("Course Nos.");
            NoSeriesMgt.InitSeries(SeriesSetup."Course Nos.", xRec."No. Series", 0D, "Cod Course", "No. Series");
        END;


        "Course Count" := 1;

        IF "End Date" = 0D THEN
            "Course Count" := 1;
        IF ("End Date" <> 0D) AND ("End Date" < TODAY()) THEN
            "Course Count" := 0;
        IF "Initial Date" > TODAY() THEN
            "Course Count" := 0;
    end;

    var
        SeriesSetup: Record 60005;
        NoSeriesMgt: Codeunit 396;

}

