page 60003 "Students List"
{
    CardPageID = Students;
    Editable = false;
    PageType = List;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Student"; "Cod Student")
                {
                }
                field(Name; Name)
                {
                }
                field(Address; Address)
                {
                }
                field(Phone; Phone)
                {
                }
                field(Email; Email)
                {
                }
                field("Course No"; "Course No")
                {
                }
                field("No. Series"; "No. Series")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

