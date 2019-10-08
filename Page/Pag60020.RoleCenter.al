page 60020 "Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {

            part(Students; 60021)
            {
                Caption = 'Students';
            }
            part(Professors; 60022)
            {
                Caption = 'Professors';
            }
            part("Course - Cab"; 60023)
            {
                Caption = 'Active Courses';
            }
            part("Classroom List"; 60006)
            {
                Caption = 'Classroom List';
            }
            part("Movement Course List"; 60013)
            {
                Caption = 'Movement Course List';
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("New Student")
            {
                Image = NewCustomer;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60000;
                RunPageMode = Create;
            }
            action("New Course")
            {
                Image = NewItem;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60008;
                RunPageMode = Create;
            }
            action("New Professor")
            {
                Image = NewCustomer;
                Promoted = true;
                RunObject = Page 60001;
                RunPageMode = Create;
            }
            action("New ClassRoom")
            {
                Image = NewItem;
                Promoted = true;
                RunObject = Page 60002;
                RunPageMode = Create;
            }
            action("Courses Historic")
            {
                Image = Navigate;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;
                RunObject = Page 60010;
            }
            action("Import XML Students")
            {
                Image = Import;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Codeunit 60013;
            }
            action("Export XML Course")
            {
                Image = Export;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Codeunit 60012;
            }
            action("Export TXT ClassRooms")
            {
                Image = Export;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = XMLport 60002;
            }
            group(Reports)
            {
                Caption = 'Reports';
                Image = Document;
                action("Students List")
                {
                    Image = "Report";
                    RunObject = Report 60020;
                }
                action("Professors List")
                {
                    Image = "Report";
                    RunObject = Report 60021;
                }
                action("Courses List")
                {
                    Image = "Report";
                    RunObject = Report 60022;
                }
                action("Course Doc")
                {
                    Image = "Report";
                    RunObject = Report 60023;
                }
                action("Historic Course Doc")
                {
                    Image = "Report";
                    RunObject = Report 60024;
                }
            }
        }
    }
}

