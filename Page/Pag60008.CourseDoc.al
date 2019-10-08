page 60008 "Course Doc"
{
    PageType = Document;
    SourceTable = 60003;

    layout
    {
        area(content)
        {
            group(Course1)
            {
                field("Cod Course"; "Cod Course")
                {
                    Enabled = Edit;
                }
                field("Course Name"; "Course Name")
                {
                    Enabled = Edit;
                }
                field("Initial Date"; "Initial Date")
                {
                    Enabled = Edit;
                    trigger OnValidate()
                    begin


                        "Course Count" := 1;

                        IF "End Date" = 0D THEN
                            "Course Count" := 1;
                        IF ("End Date" <> 0D) AND ("End Date" < TODAY()) THEN
                            "Course Count" := 0;
                        IF "Initial Date" > TODAY() THEN
                            "Course Count" := 0;
                    end;
                }
                field("End Date"; "End Date")
                {
                    Editable = true;
                }
                field(Duration; Duration)
                {
                    Enabled = Edit;
                }
                field("Cod Professor"; "Cod Professor")
                {
                    Enabled = Edit;
                }
                field("Name Professor"; "Name Professor")
                {
                    Enabled = Edit;
                }
            }
            group(a)
            {
                part(b; 60009)
                {
                    Enabled = Edit;
                }
            }
            group(ClassRoom)
            {
                field("Cod ClassRoom"; "Cod ClassRoom")
                {
                    Enabled = Edit;
                }
                field("ClassRoom Name"; "ClassRoom Name")
                {
                    Enabled = Edit;
                }
                field(c; '')
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Course)
            {
                Image = AllLines;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 60007;
                ShortCutKey = 'F7';
            }
            action(Print)
            {
                Image = Print;
                Promoted = true;
                RunObject = Report 60023;
                ShortCutKey = 'Shift+F9';
            }
            group(d)
            {
                Image = Register;
                group(Register)
                {
                    Image = History;
                    action(Registers)
                    {
                        Image = Register;
                        Promoted = false;
                        RunObject = Codeunit 60002;
                        ShortCutKey = 'F9';
                    }
                    action("Register+Print")
                    {
                        Image = RegisteredDocs;
                        Promoted = false;
                        ShortCutKey = 'Shift+F9';

                        trigger OnAction()
                        begin
                            RegisterPrint.RUN(Rec);
                        end;
                    }
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Edit := TRUE;
        IF TODAY() >= "Initial Date" THEN
            Edit := FALSE;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        CourseLine.RESET();
        CourseLine.SETRANGE("Cod Course", "Cod Course");
        IF CourseLine.FINDFIRST() THEN
            CourseLine.DELETEALL();
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Edit := TRUE;
    end;

    var
        CourseLine: Record 60004;
        RegisterPrint: Codeunit 60003;
        [InDataSet]



        Edit: Boolean;
}

