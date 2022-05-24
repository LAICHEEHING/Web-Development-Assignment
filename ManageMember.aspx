<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="ManageMember.aspx.cs" Inherits="MasterDesign.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
      <div style=" background-color:burlywood; margin-left: 37px; margin-top: 10px;" class="auto-style3">


        <asp:Button ID="BtnMembers" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Members" Width="172px" OnClick="BtnMembers_Click"/>
        <asp:Button ID="BtnDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Drinks" Width="172px" OnClick="BtnDrinks_Click" />
        <asp:Button ID="BtnTopics" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Topics" Width="172px" OnClick="BtnTopic_Click" />


        <asp:Button ID="BtnComment" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Manage Comments" Width="172px" OnClick="BtnComment_Click"  />


        <asp:Button ID="BtnAddDrinks" runat="server" BackColor="BurlyWood" BorderColor="BurlyWood" BorderStyle="None" Font-Bold="True" Font-Names="Arial Black" Font-Underline="True" ForeColor="#663300" Height="45px" style="margin-left: 37px" Text="Add Drinks" Width="172px" OnClick="BtnAddDrinks_Click"  />


          <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="M_ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" Height="259px" Width="1248px">
                <Columns>
                    <asp:BoundField DataField="M_ID" HeaderText="M_ID" ReadOnly="True" SortExpression="M_ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Member]"
             UpdateCommand="UPDATE [Member] SET [Username] = @Username, [Email] = @Email, [Password] = @Password WHERE [M_ID] = @M_ID" DeleteCommand="DELETE FROM [Member] WHERE [M_ID] = @M_ID" InsertCommand="INSERT INTO [Member] ([M_ID], [Username], [Email], [Password]) VALUES (@M_ID, @Username, @Email, @Password)">
            <DeleteParameters>
                <asp:Parameter Name="M_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="M_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="M_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
