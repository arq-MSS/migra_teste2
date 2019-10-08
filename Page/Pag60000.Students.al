page 60000 "Students"
{
    PageType = Card;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            group(General)
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
                    DrillDownPageID = "Mov. Course List";
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

