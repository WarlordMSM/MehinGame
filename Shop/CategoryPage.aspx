<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CategoryPage.aspx.cs" Inherits="CategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="product-case">
        <div class="product-case-title">جدیدترین ها</div>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" RepeatLayout="Flow" RepeatColumns="6">
            <ItemTemplate>
                <div class="product-tile">

                    <div class="product-pic">
                        <asp:ImageButton ID="ImageButton1" runat="server" class="product-pic-img" ImageUrl='<%# Eval("Picture_Address", "images/game/cover/{0}") %>' PostBackUrl='<%# Eval("Product_ID", "ProductPage.aspx?Product_ID={0}") %>'/></div>
                    <div class="product-name"><asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' /></div>
                    <div class="product-price"><asp:Label ID="CurPriceLabel" runat="server" Text='<%# Eval("CurPrice") %>' /></div>

                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MehinGameConnectionString %>" SelectCommand="SELECT Tb_Product.Product_ID, Tb_Product.Product_Name, Tb_Product.CurPrice, Tb_Product.Picture_Address, Tb_Product.AccessStatus, Tb_Product.Category_ID, Tb_Category.Category_Name FROM Tb_Product INNER JOIN Tb_Category ON Tb_Product.Category_ID = Tb_Category.Category_ID WHERE (Tb_Product.Category_ID = @Category_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Category_ID" QueryStringField="Category_ID" />
            </SelectParameters>
            </asp:SqlDataSource>


    </div>

</asp:Content>

