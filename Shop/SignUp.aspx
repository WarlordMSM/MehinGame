<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="product-case">
        <div class="product-case-title">ثبت نام</div>
        <table class="newuser-box">
            <tr>
                <td>
                    <span class="newuser-label">نام</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="newuser-textbox" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">نام خانوادگی</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="newuser-textbox" MaxLength="30"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">نام پدر</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="newuser-textbox" MaxLength="20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">کد ملی</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="newuser-textbox" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">ایمیل</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="newuser-textbox" MaxLength="40"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">شماره همراه</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="newuser-textbox" MaxLength="11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">تلفن ثابت</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="newuser-textbox" MaxLength="11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">آدرس</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="newuser-textbox" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">رمز</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="newuser-textbox" MaxLength="10" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">تکرار رمز</span>
                </td>
                <td >
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="newuser-textbox" MaxLength="10" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td >
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="newuser-label">متن بالا:</span>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="newuser-textbox" MaxLength="6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
              
                </td>

                <td >
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td >
                    <asp:Button ID="Button1" runat="server" Text="ثبت نام" CssClass="newuser-button" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>


    </div>

</asp:Content>

