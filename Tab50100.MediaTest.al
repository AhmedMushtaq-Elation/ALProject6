table 50100 "Media Test"
{
    DataClassification = ToBeClassified;
    Caption = 'Media Test';
    DrillDownPageId = "Media List Test";
    LookupPageId = "Media List Test";
    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';

        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Blob Test"; Blob)
        {
            Caption = 'Blob Test';
            Subtype = Bitmap;
        }
        field(4; "Media Test"; Media)
        {
            Caption = 'Media Test';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(Brick; "No.", Name, "Blob Test", "Media Test") { }
    }

    var
        myInt: Integer;

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