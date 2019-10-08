codeunit 60005 "Course Mov. Register"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        Course.COPY(Rec);
        Courseline.RESET();
        Courseline.SETRANGE("Cod Course");
        IF Courseline.FINDSET() THEN
            REPEAT
                Validate_line(Courseline);
            UNTIL Courseline.NEXT() = 0;

        Reg_Hist(Course);
        Rec := Course;
    end;

    var
        Courseline: Record 60004;
        Course: Record 60003;
        OldCourse: Record 60006;
        SeriesSetup: Record 60005;
        OldLine: Record 60007;
        Mov: Record 60008;
        NoSeriesMgt: Codeunit 396;

    procedure Validate_line(Courseline: Record 60004)
    begin
        Courseline.CALCFIELDS("Name Student");
        IF Courseline."Name Student" = '' THEN
            ERROR('Error. Student name does not exis. His cod is %1', Courseline."Cod Students");
    end;

    procedure Reg_Hist(Course: Record 60003)
    begin
        OldCourse.SETRANGE("Previous Cod Course", Course."Cod Course");
        IF OldCourse.ISEMPTY() THEN
            OldCourse.TRANSFERFIELDS(Course)
        ELSE
            ERROR('Course already registered');
        OldCourse."Previous Cod Course" := Course."Cod Course";

        IF OldCourse."Cod Course" = Course."Cod Course" THEN BEGIN
            SeriesSetup.GET();
            SeriesSetup.TESTFIELD("Course Historic Nos.");
            OldCourse."Cod Course" := NoSeriesMgt.GetNextNo(SeriesSetup."Course Historic Nos.", TODAY(), TRUE);
            OldCourse."No. Series" := SeriesSetup."Course Historic Nos.";
            OldCourse.INSERT();
        END;
        MESSAGE('Conseguiste');

        OldLine.SETRANGE("Cod Course", Courseline."Cod Course");
        WITH OldLine DO
            IF Courseline.FINDSET() THEN
                REPEAT
                    TRANSFERFIELDS(Courseline);
                    INSERT();
                UNTIL Courseline.NEXT() = 0;
        Courseline.DELETEALL();
        MESSAGE('Teste 2');

        IF Mov.FINDLAST() THEN
            Mov."Movement No" := Mov."Movement No"
        ELSE
            Mov."Movement No" := 0;

        OldCourse.RESET();
        OldCourse.SETRANGE("Previous Cod Course", Course."Cod Course");
        IF OldCourse.FINDFIRST() THEN BEGIN
            Mov.INIT();
            Mov."Cod Course" := OldCourse."Cod Course";
            Mov."Name Course" := OldCourse."Course Name";
            Mov."Initial Date" := OldCourse."Initial Date";
            Mov."End Date" := OldCourse."End Date";
            Mov.Duration := OldCourse.Duration;
            Mov."Cod Professor" := OldCourse."Cod Professor";
        END;

        OldLine.RESET();
        OldLine.SETRANGE("Cod Course", Course."Cod Course");
        IF OldLine.FINDSET() THEN
            REPEAT
                Mov."Cod Student" := OldLine."Cod Students";
                Mov."Name Student" := OldLine."Name Student";
                Mov."Movement No" := Mov."Movement No" + 1;
                Mov.INSERT();
            UNTIL OldLine.NEXT() = 0;
    end;
}

