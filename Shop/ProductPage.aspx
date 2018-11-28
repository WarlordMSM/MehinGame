<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductPage.aspx.cs" Inherits="ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" DataKeyField="Product_ID">
        <ItemTemplate>
            <div class="productpage-case">
                
                <div class="productpage-case-title"><asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' /></div>
                <div class="productpage-pic"> <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture_Address", "images/game/cover/{0}") %>' /> </div>
                <div class="productpage-item-container">
                    <br />
                    <div class="productpage-en-items"><span class="productpage-attr" >کد کالا: </span><asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' /></div>
                    <div class="productpage-fa-items"><span class="productpage-attr" >توضیحات: </span><asp:Label ID="Product_DescrLabel" runat="server" Text='<%# Eval("Product_Descr") %>' /></div>
                    <div class="productpage-en-items"><span class="productpage-attr" >پلتفرم: </span><asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_Name") %>' /></div>
                    <div class="productpage-fa-items"><span class="productpage-attr" >قیمت: </span><asp:Label ID="Label2" runat="server" Text='<%# Eval("CurPrice") %>' /><span style="font-family:'BYekan'; font-size:16px;" > تومان</span></div>
                </div>

            </div>
        </ItemTemplate>
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MehinGameConnectionString %>" SelectCommand="SELECT Tb_Product.Product_Name, Tb_Product.Product_Descr, Tb_Category.Category_Name, Tb_Product.CurPrice, Tb_Product.Picture_Address, Tb_Product.Product_ID FROM Tb_Product INNER JOIN Tb_Category ON Tb_Product.Category_ID = Tb_Category.Category_ID WHERE (Tb_Product.AccessStatus &lt;&gt; 0) AND (Tb_Product.Product_ID = @Product_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Product_ID" QueryStringField="Product_ID" />
        </SelectParameters>
</asp:SqlDataSource>




</asp:Content>

