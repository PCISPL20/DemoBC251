Table 85100 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(30; Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(40; Address; Text[30])
        {
            DataClassification = ToBeClassified;
            ToolTip = 'address for student';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "No.") { }

    }
    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}