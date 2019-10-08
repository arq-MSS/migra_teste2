page 60004 "Professors List"
{
    CardPageID = Professors;
    Editable = false;
    PageType = List;
    SourceTable = 60001;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Professor"; "Cod Professor")
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

