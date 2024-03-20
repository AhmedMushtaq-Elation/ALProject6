page 50100 "Media List Test"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Media Test";
    Caption = 'Media List Test';
    CardPageId = "Media Test Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
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