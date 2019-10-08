report 60022 "Courses List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Courses List.rdlc';

    dataset
    {
        dataitem(DataItem1; 60003)
        {
            column(CodCourse_CourseCab; "Course - Cab"."Cod Course")
            {
                IncludeCaption = true;
            }
            column(CourseName_CourseCab; "Course - Cab"."Course Name")
            {
                IncludeCaption = true;
            }
            column(InitialDate_CourseCab; "Course - Cab"."Initial Date")
            {
                IncludeCaption = true;
            }
            column(EndDate_CourseCab; "Course - Cab"."End Date")
            {
                IncludeCaption = true;
            }
            column(Duration_CourseCab; "Course - Cab".Duration)
            {
                IncludeCaption = true;
            }
            column(CodProfessor_CourseCab; "Course - Cab"."Cod Professor")
            {
                IncludeCaption = true;
            }
            column(NameProfessor_CourseCab; "Course - Cab"."Name Professor")
            {
                IncludeCaption = true;
            }
            column(CodClassRoom_CourseCab; "Course - Cab"."Cod ClassRoom")
            {
                IncludeCaption = true;
            }
            column(ClassRoomName_CourseCab; "Course - Cab"."ClassRoom Name")
            {
                IncludeCaption = true;
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
        ReportTitle = 'Courses List';
    }
    var
        "Course - Cab": Record "Course - Cab";
}

