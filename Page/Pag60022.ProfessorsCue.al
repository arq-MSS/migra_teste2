page 60022 "Professors Cue"
{
    PageType = CardPart;
    SourceTable = 60001;

    layout
    {
        area(content)
        {
            cuegroup(g)
            {
                field("Professors Total"; "Professors Total")
                {
                    Image = People;
                }

                actions
                {
                    action("New Professor")
                    {
                        Caption = 'New Professor';
                        RunObject = Page 60001;
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

