page 60007 "Course - Cab List"
{
    Editable = false;
    PageType = List;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field("Course Name"; "Course Name")
                {
                }
                field("Initial Date"; "Initial Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field(Duration; Duration)
                {
                }
                field("Cod Professor"; "Cod Professor")
                {
                }
                field("Name Professor"; "Name Professor")
                {
                }
                field("Cod ClassRoom"; "Cod ClassRoom")
                {
                }
                field("ClassRoom Name"; "ClassRoom Name")
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

