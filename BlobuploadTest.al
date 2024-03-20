page 50102 "Blob Upload Test"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Media Test";
    Caption = 'Blob Upload';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Blob Test"; Rec."Blob Test")
                {
                    ToolTip = 'Specifies the value of the Blob test field.';

                }
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