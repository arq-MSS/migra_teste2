xmlport 60001 "Students"
{
    Direction = Import;
    FieldDelimiter = ';';
    FieldSeparator = ';';
    Format = VariableText;


    schema
    {
        textelement(Root)
        {
            tableelement(Students; Students)
            {
                AutoReplace = false;
                AutoUpdate = false;
                MaxOccurs = Unbounded;
                XmlName = 'Student';
                fieldelement(Name; Students.Name)
                {
                }
                fieldelement(Adress; Students.Address)
                {
                }
                fieldelement(Email; Students.Email)
                {
                }
                fieldelement(Phone; Students.Phone)
                {
                    MinOccurs = Zero;
                }

                trigger OnAfterGetRecord()
                begin
                end;

                trigger OnAfterInitRecord()
                begin
                end;

                trigger OnBeforeInsertRecord()
                begin
                    IF Students.Phone = '' THEN
                        Students.Phone := '210000000';
                end;
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

