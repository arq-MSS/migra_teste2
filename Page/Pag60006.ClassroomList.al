page 60006 "Classroom List"
{
    CardPageID = Classroom;
    Editable = false;
    PageType = ListPart;
    SourceTable = 60002;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod ClassRoom"; "Cod ClassRoom")
                {
                }
                field("ClassRoom Name"; "ClassRoom Name")
                {
                }
                field(Location; Location)
                {
                }
                field(Capacity; Capacity)
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

