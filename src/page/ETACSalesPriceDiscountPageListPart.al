page 50250 ETACSalesPriceDiscPageListPart
{

    Caption = 'Sales Price';
    PageType = ListPart;
    SourceTable = "Price List Line";
    SourceTableView = where(Status = const(Active));
    UsageCategory = Lists;
    ApplicationArea = All;



    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Sales(Unit) Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sales(Unit) Price field.', Comment = '%';
                }
                field("Valid From"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Valid From field.', Comment = '%';
                }
                field("Valid To"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Valid To field.', Comment = '%';
                }
                field("Minimum Quantity"; Rec."Minimum Quantity")
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
