table 60008 "Mov. Course"
{
    DrillDownPageID = 60013;
    LookupPageID = 60013;

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
        }
        field(2; "Movement No"; Integer)
        {
            AutoIncrement = false;
            Caption = 'Movement No';
            DataClassification = ToBeClassified;
            Description = 'Chave - Incrementa valor aut. sempre que adicionada nova linha';
        }
        field(3; "Cod Student"; Code[20])
        {
            Caption = 'Cod Student';
            DataClassification = ToBeClassified;
        }
        field(4; "Name Course"; Text[50])
        {
            Caption = 'Name Course';
            DataClassification = ToBeClassified;
        }
        field(5; "Name Student"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Students.Name WHERE("Cod Student" = FIELD("Cod Student")));
            Caption = 'Name Student';

        }
        field(6; Duration; Decimal)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
        }
        field(7; "Initial Date"; Date)
        {
            Caption = 'Initial Date';
            DataClassification = ToBeClassified;
        }
        field(8; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(9; "Cod Professor"; Code[20])
        {
            Caption = 'Cod Professor';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Movement No")
        {
        }
    }

    fieldgroups
    {
    }
}

