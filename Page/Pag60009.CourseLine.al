page 60009 "Course - Line"
{
    PageType = ListPart;
    SourceTable = 60004;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Cod Course"; "Cod Course")
                {
                }
                field(Line; Line)
                {
                }
                field("Cod Students"; "Cod Students")
                {
                }
                field("Name Student"; "Name Student")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

