<%@ Page Title="" Language="C#" MasterPageFile="~/StaffPage.Master" AutoEventWireup="true" CodeBehind="ManageDrinks.aspx.cs" Inherits="MasterDesign.WebForm16" %>
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
        Manage Drinks<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FT_ID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" Height="259px"  Width="1248px">
                <Columns>
                    <asp:BoundField DataField="FT_ID" HeaderText="FT_ID" ReadOnly="True" SortExpression="FT_ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="IM_ID" HeaderText="IM_ID" SortExpression="IM_ID" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Total_Reply" HeaderText="Total_Reply" SortExpression="Total_Reply" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="LinkButton1" runat="server" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this?');" BackColor="#FFF7E7" BorderColor="#DEBA84" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Underline="True" ForeColor="#996633" />
                        </ItemTemplate>
                        <ItemStyle ForeColor="#8C4562" />
                    </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic]"
             UpdateCommand="UPDATE [Topic] SET [Username] = @Username, [Title] = @Title, [Date] = @Date, [IM_ID] = @IM_ID, [Description] = @Description, [Total_Reply] = @Total_Reply WHERE [FT_ID] = @FT_ID" DeleteCommand="DELETE FROM [Topic] WHERE [FT_ID] = @FT_ID" InsertCommand="INSERT INTO [Topic] ([FT_ID], [Username], [Title], [Date], [IM_ID], [Description], [Total_Reply]) VALUES (@FT_ID, @Username, @Title, @Date, @IM_ID, @Description, @Total_Reply)">
            <DeleteParameters>
                <asp:Parameter Name="FT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FT_ID" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="IM_ID" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Total_Reply" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="IM_ID" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Total_Reply" Type="Int32" />
                <asp:Parameter Name="FT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />


    </div>
</asp:Content>
