page 60010 "Hist. Course - Cab"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = 60006;

    layout
    {
        area(content)
        {
            group(General)
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
            }
            group(e)
            {
                part(f; 60011)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Movements)
            {
                Image = CreateMovement;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;
                RunObject = Page 60013;
            }
        }
    }
}

