tableextension 50250 SalesPriceDiscount extends "Sales Line"
{
    Caption = 'SalesPriceDiscount';

    fields
    {
        field(50000; "Sales(Unit) Price"; Decimal)
        {
            Caption = 'Sales(Unit) Price';
        }
        field(50001; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(50002; "Valid To"; Date)
        {
            Caption = 'Valid To';
        }
        field(50003; "Item Sales Price"; Integer)
        {
            Caption = 'Item Sales Price';
            FieldClass = FlowField;
            CalcFormula = Count("Price List Line" where("Asset No." = field("No."), Status = const(Active)));
            Editable = false;
        }
    }
}
