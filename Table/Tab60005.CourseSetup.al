table 60005 "Course - Setup"
{

    fields
    {
        field(1; "Key"; Code[10])
        {
            Caption = 'Key';
            DataClassification = ToBeClassified;
            Description = 'Chave';
        }
        field(2; "Course Nos."; Code[10])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
            Description = 'No.Series';
            TableRelation = "No. Series";
        }
        field(3; "Students Nos."; Code[10])
        {
            Caption = 'Students';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(4; "Professors Nos."; Code[10])
        {
            Caption = 'Professors';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(5; "ClassRoom Nos."; Code[10])
        {
            Caption = 'ClassRoom';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(6; "Course Historic Nos."; Code[10])
        {
            Caption = 'Course Historic';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Key")
        {
        }
    }

    fieldgroups
    {
    }
}

