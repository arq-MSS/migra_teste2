page 60023 "Course Cue"
{
    PageType = CardPart;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            cuegroup(h)
            {
                field("Active Courses"; Total)
                {
                    Image = Library;
                }

                actions
                {
                    action("New Course")
                    {
                        Caption = 'New Course';
                        RunObject = Page 60008;
                        RunPageMode = Create;
                    }
                }
            }
        }
    }

    actions
    {
    }
}

