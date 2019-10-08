report 60023 "Course Doc"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Course Doc.rdlc';

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
        dataitem(DataItem11; 60004)
        {
            column(CodStudents_CourseLine; "Course - Line"."Cod Students")
            {
                IncludeCaption = true;
            }
            column(NameStudent_CourseLine; "Course - Line"."Name Student")
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
        ReporTitle = 'Course Report';
    }
    var
        "Course - Cab": Record "Course - Cab";
        "Course - Line": Record "Course - Line";
}

