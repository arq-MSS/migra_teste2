table 60007 "Hist. Course - Line"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
            Description = 'Chave';
        }
        field(2; Line; Integer)
        {
            AutoIncrement = true;
            Caption = 'Line';
            DataClassification = ToBeClassified;
            Description = 'Chave';
        }
        field(3; "Cod Students"; Code[20])
        {
            Caption = 'Cod Students';
            DataClassification = ToBeClassified;
            Description = 'Formandos';
            TableRelation = Students."Cod Student";
        }
        field(4; "Name Student"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Students.Name WHERE("Cod Student" = FIELD("Cod Students")));
            Caption = 'Name Student';

        }
    }

    keys
    {
        key(Key1; "Cod Course", Line)
        {
        }
    }

    fieldgroups
    {
    }
}

