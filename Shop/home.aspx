<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
    <br />
    <div class="product-case">
        <div class="product-case-title">جدیدترین ها</div>

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="6" RepeatLayout="Flow"> 
            <ItemTemplate>
                <div class="product-tile">

                    <div class="product-pic">
                        <asp:ImageButton ID="ImageButton1" runat="server" class="product-pic-img" ImageUrl='<%# Eval("Picture_Address", "images/game/cover/{0}") %>' PostBackUrl='<%# Eval("Product_ID", "ProductPage.aspx?Product_ID={0}") %>'/></div>
                    <div class="product-name"><asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' /></div>
                    <div class="product-price">$<asp:Label ID="CurPriceLabel" runat="server" Text='<%# Eval("CurPrice") %>' /></div>

                </div>
            </ItemTemplate>
        </asp:DataList>


    </div>
    <div class="product-case">
        <div class="product-case-title">آخرین خرید ها</div>

        <asp:DataList ID="DataList2" runat="server" RepeatColumns="6" RepeatLayout="Flow"> 
            <ItemTemplate>
                <div class="product-tile">

                    <div class="product-pic">
                        <asp:ImageButton ID="ImageButton1" runat="server" class="product-pic-img" ImageUrl='<%# Eval("Picture_Address", "images/game/cover/{0}") %>' PostBackUrl='<%# Eval("Product_ID", "ProductPage.aspx?Product_ID={0}") %>'/></div>
                    <div class="product-name"><asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' /></div>
                    <div class="product-price">$<asp:Label ID="CurPriceLabel" runat="server" Text='<%# Eval("CurPrice") %>' /></div>

                </div>
            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>

