xmlport 60000 "Courses"
{
    Direction = Export;

    schema
    {
        textelement(Root)
        {
            tableelement("Course - Cab"; "Course - Cab")
            {
                MaxOccurs = Once;
                XmlName = 'Cab';
                fieldelement(Cod_Course; "Course - Cab"."Cod Course")
                {
                }
                fieldelement(Course_Name; "Course - Cab"."Course Name")
                {
                }
                fieldelement(Duration; "Course - Cab".Duration)
                {
                }
                fieldelement(Name_Professor; "Course - Cab"."Name Professor")
                {
                }
                fieldelement(ClassRoom_Name; "Course - Cab"."ClassRoom Name")
                {
                }
                tableelement("Course - Line"; "Course - Line")
                {
                    LinkTable = "Course - Cab";
                    XmlName = 'Lines';
                    fieldelement(Cod_Students; "Course - Line"."Cod Students")
                    {
                    }
                    fieldelement(Name_Student; "Course - Line"."Name Student")
                    {
                    }
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
}

