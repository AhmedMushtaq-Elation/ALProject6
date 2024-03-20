page 50103 "Media Upload Test"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Media Test";
    Caption = 'Media Upload';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Media Test"; Rec."Media Test")
                {
                    ToolTip = 'Specifies the value of the Media test field.';

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Upload)
            {
                ApplicationArea = All;
                Image = Import;


                trigger OnAction()
                var
                    InstreamPic: InStream;
                    FromFileName: Text;
                begin
                    if UploadIntoStream('Import Pic', '', 'All Files (*.*) |*.*', FromFileName, InstreamPic) then
                        Rec."Media Test".ImportStream(InstreamPic, FromFileName);
                    rec.Modify(true);
                    Message('Uploaded');
                end;
            }
            action(Delete)
            {
                ApplicationArea = All;
                Image = Delete;


                trigger OnAction()
                var
                    InstreamPic: InStream;
                    FromFileName: Text;
                begin
                    if rec."Media Test".HasValue then
                        Clear(rec."Media Test");
                    rec.Modify(true);
                    Message('Deleted');
                end;
            }
        }
    }

    var
        myInt: Integer;
}