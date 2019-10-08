report 60021 "Professors List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Professors List.rdlc';

    dataset
    {
        dataitem(DataItem1; 60001)
        {
            column(CodProfessor_Professors; Professors."Cod Professor")
            {
                IncludeCaption = true;
            }
            column(Name_Professors; Professors.Name)
            {
                IncludeCaption = true;
            }
            column(Address_Professors; Professors.Address)
            {
                IncludeCaption = true;
            }
            column(Phone_Professors; Professors.Phone)
            {
                IncludeCaption = true;
            }
            column(Email_Professors; Professors.Email)
            {
                IncludeCaption = true;
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

    labels
    {
        ReportTitle = 'Professors List';
    }
    var
        Professors: Record Professors;
}

