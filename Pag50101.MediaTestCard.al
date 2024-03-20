page 50101 "Media Test Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Media Test";
    Caption = 'Media Test Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';

                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                }
                field("Blob Test"; Rec."Blob Test")
                {
                    ToolTip = 'Specifies the value of the Blob Test field';
                }
                field("Media Test"; Rec."Media Test")
                {
                    ToolTip = 'Specifies the value of the Media Test field';
                }
            }
        }
        area(FactBoxes)
        {
            part(MediaControl; "Media Upload Test")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
            part(BlobControl; "Blob Upload Test")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}