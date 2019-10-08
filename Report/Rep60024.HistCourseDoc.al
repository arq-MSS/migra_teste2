report 60024 "Hist Course Doc"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Hist Course Doc.rdlc';

    dataset
    {
        dataitem(DataItem1; 60006)
        {
            column(CodCourse_HistCourseCab; "Hist. Course - Cab"."Cod Course")
            {
                IncludeCaption = true;
            }
            column(CourseName_HistCourseCab; "Hist. Course - Cab"."Course Name")
            {
                IncludeCaption = true;
            }
            column(InitialDate_HistCourseCab; "Hist. Course - Cab"."Initial Date")
            {
                IncludeCaption = true;
            }
            column(EndDate_HistCourseCab; "Hist. Course - Cab"."End Date")
            {
                IncludeCaption = true;
            }
            column(Duration_HistCourseCab; "Hist. Course - Cab".Duration)
            {
                IncludeCaption = true;
            }
            column(CodProfessor_HistCourseCab; "Hist. Course - Cab"."Cod Professor")
            {
                IncludeCaption = true;
            }
            column(NameProfessor_HistCourseCab; "Hist. Course - Cab"."Name Professor")
            {
                IncludeCaption = true;
            }
            column(CodClassRoom_HistCourseCab; "Hist. Course - Cab"."Cod ClassRoom")
            {
                IncludeCaption = true;
            }
            column(ClassRoomName_HistCourseCab; "Hist. Course - Cab"."ClassRoom Name")
            {
                IncludeCaption = true;
            }
            column(PreviousCodCourse_HistCourseCab; "Hist. Course - Cab"."Previous Cod Course")
            {
                IncludeCaption = true;
            }
            dataitem(DataItem12; 60007)
            {
                DataItemLink = "Cod Course" = FIELD("Previous Cod Course");
                column(CodStudents_HistCourseLine; "Hist. Course - Line"."Cod Students")
                {
                    IncludeCaption = true;
                }
                column(NameStudent_HistCourseLine; "Hist. Course - Line"."Name Student")
                {
                    IncludeCaption = true;
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
        ReportTitle = 'Historic Course List';
    }
    var
        "Hist. Course - Cab": Record "Hist. Course - Cab";
        "Hist. Course - Line": Record "Hist. Course - Line";
}

