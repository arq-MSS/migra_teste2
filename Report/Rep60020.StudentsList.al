report 60020 "Students List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Students List.rdlc';

    dataset
    {
        dataitem(DataItem1; 60000)
        {
            column(CodStudent_Students; Students."Cod Student")
            {
                IncludeCaption = true;
            }
            column(Name_Students; Students.Name)
            {
                IncludeCaption = true;
            }
            column(Address_Students; Students.Address)
            {
                IncludeCaption = true;
            }
            column(Phone_Students; Students.Phone)
            {
                IncludeCaption = true;
            }
            column(Email_Students; Students.Email)
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
        ReportTitle = 'Student List';
    }
    var
        Students: Record Students;
}

