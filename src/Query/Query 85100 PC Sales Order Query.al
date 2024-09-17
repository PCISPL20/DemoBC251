Query 85100 "PC Sales Order Query"
{
    Caption = 'PC Sales Order Query';
    OrderBy = Descending(Sell_to_Customer_No_);
    QueryCategory = 'Customer List', 'Sales Order List';
    elements
    {
        dataitem(Sales_Header; "Sales Header")
        {
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Order_Date; "Order Date") { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Document Type" = Sales_Header."Document Type",
                "Document No." = Sales_Header."No.";
                column(No_; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Amount; Amount) { }
                dataitem(Item; Item)
                {
                    DataItemLink = "No." = Sales_Line."No.";
                    column(Inventory; Inventory) { }
                }
            }
        }
    }
}