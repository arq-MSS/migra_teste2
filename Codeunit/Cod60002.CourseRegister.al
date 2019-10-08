codeunit 60002 "Course Register"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        CourseCab.COPY(Rec);
        Code();
        Rec := CourseCab;
    end;

    var
        CourseCab: Record 60003;

        RegisterCourseLine: Codeunit 60004;
        CourseMovRegister: Codeunit 60005;
        Options: Option;

    local procedure "Code"()
    begin
        Options := DIALOG.STRMENU('Register without Movement, Register with Movement');
        IF Options = 1 THEN BEGIN
            RegisterCourseLine.RUN(CourseCab);
            MESSAGE('Register without Movement')
        END ELSE
            IF Options = 2 THEN BEGIN
                CourseMovRegister.RUN(CourseCab);
                MESSAGE('Register with Movement');
            END;
    end;
}

