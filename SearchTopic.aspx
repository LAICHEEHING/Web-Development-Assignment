<%@ Page Title="" Language="C#" MasterPageFile="~/UrbanMixology.Master" AutoEventWireup="true" CodeBehind="SearchTopic.aspx.cs" Inherits="MasterDesign.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
	.gray {
    color: #7f8c8d;
    font-size: 12px;
    font-weight: normal;
}

  .gray2 {
    color: #c3c3c3;
    font-size: 20px;
    font-weight: normal;
}

    .gray2 a {
        color: #7f8c8d;
        border-bottom: 1px dotted
    }

 .gray {
    color: #ccc;
}

 .gray a, .header .gray a {
    border-bottom: 1px dotted
}

     .gray a:hover, .forumcontent .gray2 a:hover {
        text-decoration: none;
        border: none
    }

	    .auto-style15 {
            width: 939px;
            height: 675px;
            margin-top: 22px;
            float: left;
        }

	    .forumtable {
            border:solid;
            height:auto;
	    }

	    .auto-style16 {
            float: right;
        }

	    .auto-style17 {
            height: 178px;
            width: 1458px;
            margin-top: 18px;
        }

	    .auto-style18 {
            height: 1133px;
            width: 1472px;
            margin-right: 0px;
        }

	    .auto-style19 {
            margin-left: 0px;
            float: right;
            height: 646px;
            width: 491px;
            margin-top: 39px;
            margin-right: 18px;
        }
        .auto-style21 {
                                    height: 960px;
            white-space: normal;
            border:none;
            background:inherit;
            font-family:'Arial Rounded MT';
        }
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style18">
    <div class="auto-style17" style="border-style: solid; border-color: #000000"></div>
	<div class="auto-style15">
        <br />
        <div>
              <asp:Button ID="Btncreate" runat="server"  BorderStyle="Outset" Font-Names="Arial Black" Text="Create Topic" OnClick="Btncreate_Click"  />
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Btn_Search" BorderStyle="Outset" CssClass="auto-style16" Font-Bold="True" Font-Names="Arial" Height="28px" />
       <asp:TextBox ID="txtsearch" runat="server" BorderStyle="Outset" CssClass="auto-style16" Height="22px" Width="260px"></asp:TextBox>
            <asp:repeater id="rptSubForumsList" runat="server" EnableViewState="True" OnItemCommand="RptSubForumsList_ItemCommand" DataSourceID="SqlDataSource1">
	<HeaderTemplate>
		<table width="100%" class="forumtable" >
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
			<td align="center" style="width:10%;"><img src="img/forumlogo.png" height="32" width="32" /></td>
   
			<td style="width:40%;  border:groove; text-align:center;"><h2 style="font-family:'Arial Rounded MT'" >
                 <asp:Button ID="btnsearch" runat="server"  Text='<%# Eval("Title") %>'   OnClick="Btn_Topic"  CommandArguemnt='<%#Eval("FT_ID")%>' CssClass="auto-style21" Font-Bold="True" Font-Names="Arial" Height="100px" Width="200px" />
                <asp:Label ID="topicID" runat="server" Visible="false" Text='<%# Eval("FT_ID") %>' ></asp:Label>
				</h2>
			</td>

			<td style="text-align:start;  border:groove;">
              <h1 style="font-size:medium; font-family:'Arial Rounded MT'">
                By <%#Eval("Username") %>
                </h1 >
				<h4 style="float:right; text-align: end; font-family:'Arial Rounded MT'">
					Posted on <%# Eval("Date") %>
				</h4>
                <h5 style="float:left; font-family:'Arial Rounded MT'">
                   Total Reply: <%# Eval("Total_Reply") %>
                </h5>
			</td>

		</tr>
	</ItemTemplate>
	<FooterTemplate>
		</tbody></table>
		<br />
	</FooterTemplate>
</asp:repeater>
            <br />
            </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 4 * FROM Topic ORDER BY Date DESC"></asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic] WHERE ([Title] LIKE '%' + @Title + '%')" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:SessionParameter Name="Title" SessionField="Search" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
		</div>
        <div class="auto-style19" style="border-style: solid; border-color: #000000; text-align: center;" >
            <asp:Label ID="Label3" runat="server" Font-Names="Arial Black" Font-Underline="True" Text="Latest Discussion"></asp:Label>
            <br />
             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                        	<HeaderTemplate>
		<table width="100%" >
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
			<td align="center" style="width:10%;"><img src="img/forumlogo.png" height="32" width="32" /></td>
			<td style="width:40%;  border:groove; text-align:center;"><h2 style="font-family:'Arial Rounded MT'" >
                <asp:Button ID="btnsearch" runat="server"  Text='<%# Eval("Title") %>'   OnClick="Btn_Topic"  CommandArguemnt='<%#Eval("FT_ID")%>' CssClass="auto-style21" Font-Bold="True" Font-Names="Arial" Height="100px" Width="200px" />
                <asp:Label ID="topicID" runat="server" Visible="false" Text='<%# Eval("FT_ID") %>' ></asp:Label>
				</h2>
			</td>

			<td style="text-align:start; border:groove; font-family:'Arial Rounded MT'">
				By <%# Eval("Username") %>
				<h4 style="float:right; text-align:right; font-family:'Arial Rounded MT'">
					Posted on <%# Eval("Date") %>
				</h4>
			</td>

		</tr>
	</ItemTemplate>
	<FooterTemplate>
		</tbody></table>
		<br />
	</FooterTemplate>
                    </asp:Repeater>
        </div>
    <br />
        </div>
    </asp:Content>

