codeunit 60003 "Course Register + Print"
{
    TableNo = 60003;

    trigger OnRun()
    begin
        CourseCab.COPY(Rec);
        Code();
        Rec := CourseCab;
        RegisterCourseLine.RUN(CourseCab);
    end;

    var
        CourseCab: Record 60003;
        RegisterCourseLine: Codeunit 60004;

    local procedure "Code"()
    begin
    end;
}

