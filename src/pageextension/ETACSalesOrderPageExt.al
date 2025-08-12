pageextension 50251 ETACSalesOrderPageExt extends "Sales Order"
{
    layout
    {
        addlast(FactBoxes)
        {
            part(SelectedPrice; ETACSalesPriceDiscPageCardPart)
            {
                ApplicationArea = All;
                Provider = SalesLines;
                SubPageLink =

                    "Document No." = field("Document No."),
                    "No." = field("No."),
                    //"Unit Price" = field("Unit Price"),
                    "Line No." = field("Line No.");

            }
            part(AllPrices; ETACSalesPriceDiscPageListPart)
            {
                Caption = 'All Prices';
                ApplicationArea = All;
                Provider = SalesLines;
                SubPageLink =
                "Asset No." = field("No."),
                Status = const(Active);

            }
        }
    }

}
