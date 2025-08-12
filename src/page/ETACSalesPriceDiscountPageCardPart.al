page 50251 ETACSalesPriceDiscPageCardPart
{
    PageType = CardPart;
    SourceTable = "Sales Line";
    Caption = 'Sales Price';
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Price)
            {
                field("Sales(Unit) Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales(Unit) Price field.', Comment = '%';
                }
                field("Minimum Quantity"; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Quantity field.', Comment = '%';
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line Discount % field.', Comment = '%';
                }
            }
        }
    }
}
