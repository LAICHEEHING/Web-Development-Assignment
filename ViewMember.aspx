<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="ViewMember.aspx.cs" Inherits="MasterDesign.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <div style=" background-color:burlywood; height: 467px; width: 1434px; margin-left: 37px; height: 520px; margin-top: 10px;">


        <asp:Button ID="BtnMembers" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="View Members" Width="172px" OnClick="BtnMembers_Click"/>
        <asp:Button ID="BtnDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="View Drinks" Width="172px" OnClick="BtnDrinks_Click" />
        <asp:Button ID="BtnTopics" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="View Topics" Width="172px" OnClick="BtnTopic_Click" />


        <asp:Button ID="BtnComment" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="View Comments" Width="172px" OnClick="BtnComment_Click" />


        <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="M_ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" Height="259px" Width="1248px">
                <Columns>
                    <asp:BoundField DataField="M_ID" HeaderText="M_ID" ReadOnly="True" SortExpression="M_ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

            </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
