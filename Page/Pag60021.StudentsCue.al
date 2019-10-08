page 60021 "Students Cue"
{
    PageType = CardPart;
    SourceTable = 60000;

    layout
    {
        area(content)
        {
            cuegroup("Student Number")
            {
                Caption = 'Student Number';
                field("Number of Students"; "Students Total")
                {
                    Image = People;
                    Style = None;
                    StyleExpr = TRUE;
                }

                actions
                {
                    action("New Student")
                    {
                        Caption = 'New Student';
                        RunObject = Page 60000;
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

