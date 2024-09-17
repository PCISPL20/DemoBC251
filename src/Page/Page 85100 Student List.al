Page 85100 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    layout
    {
        area(Content)
        {
            repeater(students)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    StyleExpr = Styleexpr_gTxt;
                }
            }
        }
    }
    trigger OnInit()
    begin
        Styleexpr_gTxt := Format(PageStyle::Favorable);
    end;

    trigger OnModifyRecord(): Boolean
    begin
        if Rec.Name.Contains('H') then
            Styleexpr_gTxt := Format(PageStyle::AttentionAccent)
        else
            if (Rec.Name.StartsWith('P')) or (Rec.Name.StartsWith('R')) then
                Styleexpr_gTxt := Format(PageStyle::Unfavorable);
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        Customer_lRec: Record Customer;
        dte_ldte: Date;
        tiem_ltme: Time;
        datetime: DateTime;
    begin
        Customer_lRec.Init();
        Customer_lRec."No." := Rec."No.";
        Customer_lRec.Name := Rec.Name;
        Customer_lRec.Insert();
    end;

    var
        Styleexpr_gTxt: Text;
}