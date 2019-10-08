table 60004 "Course - Line"
{

    fields
    {
        field(1; "Cod Course"; Code[20])
        {
            Caption = 'Cod Course';
            DataClassification = ToBeClassified;
            Description = 'Chave';
            TableRelation = "Course - Cab"."Cod Course";
        }
        field(2; Line; Integer)
        {
            AutoIncrement = true;
            Caption = 'Line';
            DataClassification = ToBeClassified;
            Description = 'Chave';
            Editable = false;
            Enabled = true;
        }
        field(3; "Cod Students"; Code[20])
        {
            Caption = 'Cod Students';
            Description = 'Formandos';
            TableRelation = Students."Cod Student";
        }
        field(4; "Name Student"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = Lookup (Students.Name WHERE("Cod Student" = FIELD("Cod Students")));
            Caption = 'Name Student';
            Description = 'Flowfield';

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

