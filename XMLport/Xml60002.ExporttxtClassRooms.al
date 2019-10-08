xmlport 60002 "Export txt ClassRooms"
{
    Caption = 'Export_ClassRoom';
    Direction = Export;
    FileName = 'Export_ClassRoom.txt';
    Format = FixedText;

    schema
    {
        textelement(root)
        {
            tableelement(Classroom; Classroom)
            {
                XmlName = 'ClassRooms';
                Width = 50;
                fieldelement(CodClassRoom; Classroom."Cod ClassRoom")
                {
                    Width = 50;
                }
                fieldelement(ClassRoomName; Classroom."ClassRoom Name")
                {
                    Width = 50;
                }
                fieldelement(Location; Classroom.Location)
                {
                    Width = 50;
                }
                fieldelement(Capacity; Classroom.Capacity)
                {
                    Width = 50;
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

