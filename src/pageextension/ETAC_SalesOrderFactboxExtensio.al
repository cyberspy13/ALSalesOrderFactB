pageextension 50250 ETAC_SalesOrderFactboxExtensio extends "Sales Line FactBox"
{
    layout
    {
        addlast(Item)
        {
            group("Sales Prices")
            {
                Caption = 'Sales Prices';
                field("Item Sales Price"; Rec."Item Sales Price")
                {
                    ApplicationArea = All;
                    Caption = 'Item Sales Price';

                    trigger OnDrillDown()
                    var
                        PriceListLine: Record "Price List Line";
                    begin
                        PriceListLine.Reset();
                        PriceListLine.SetRange("Asset No.", Rec."No.");
                        PriceListLine.SetRange(Status, PriceListLine.Status::Active);
                        Page.Run(Page::"Price List Lines", PriceListLine);
                    end;

                }
            }
        }
    }
}
