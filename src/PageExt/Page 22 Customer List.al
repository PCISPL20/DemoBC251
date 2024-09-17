Pageextension 85100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        MyProcedure(true);
    end;

    local procedure MyProcedure(b: boolean): text
    var
        Str1_lTxt: text;
        Str2_lTxt: Text;
        i: Integer;
    begin
        //Ternary Operator Example - Palindrome
        Str1_lTxt := 'abccb';
        for i := StrLen(Str1_lTxt) downto 1 do
            Str2_lTxt += CopyStr(Str1_lTxt, i, 1);
        Message(b ? Str1_lTxt = Str2_ltxt ? 'String is Palindrome!!' : 'String is not palindrome!!' : 'Passed Boolean Value is False :(');
    end;
}