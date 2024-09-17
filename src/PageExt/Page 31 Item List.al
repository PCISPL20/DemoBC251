Pageextension 85101 Item_List_85101 extends "Item List"
{
    actions
    {
        addafter(AdjustInventory)
        {
            action(SaveQueryAsJson)
            {
                ApplicationArea = All;
                Caption = 'Save Query As Json';
                Image = Download;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    OutS: OutStream;
                    InS: InStream;
                    TempBlob: Codeunit "Temp Blob";
                    FileName: Text[250];
                begin
                    TempBlob.CreateOutStream(OutS);
                    if Query.SaveAsJson(Query::"PC Sales Order Query", OutS) then begin
                        FileName := 'SalesOrderQuery.json';
                        TempBlob.CreateInStream(InS);
                        DownloadFromStream(InS, '', '', '', FileName);
                    end;
                end;
                
            }
        }
    }
}