pageextension 50252 ETACSalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Price")
        {
            trigger OnAfterValidate()
            begin
                CurrPage.SaveRecord();
                CurrPage.Update(false);
            end;
        }
    }
}