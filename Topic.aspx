<%@ Page Title="" Language="C#" MasterPageFile="~/UrbanMixology.Master" AutoEventWireup="true" CodeBehind="Topic.aspx.cs" Inherits="MasterDesign.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <style type="text/css">
        .auto-style15 {
            height:fit-content;
            width: 1487px;
        }
        .auto-style16 {
            height: 766px;
            width: 1465px;
            margin-right: 0px;
            margin-top: 3px;
        }
        .auto-style17 {
            width: 992px;
            height: fit-content;
            float: left;
            margin-top: 4px;
            overflow:auto;
        }
        .auto-style19 {
            width: 443px;
            height: 693px;
            float: right;
            margin-left: 0px;
            margin-top: 3px;
        }
                .auto-style21 {
                        height: 960px;
            white-space: normal;
            border:none;
            background:inherit;
        }
        .auto-cmt {
            
        }
        .auto-style22 {
            height: 285px;
            width: 846px;
            margin-left: 129px;
        }
        .auto-style23 {
            height: 237px;
            width: 857px;
        }
        .auto-style24 {
            margin-left: 97px;
            overflow:auto;
            resize:none;
        }
        .lblcomment {
            width:400px;
            max-width:400px;
            min-height:200px;
            height:stretch;
            overflow:visible;
            resize:none;
            font-family:'Arial Rounded MT';

        }
        .auto-label {
            width:700px;
            height:250px;
            resize:none;
            overflow:auto;
            font-family:'Arial Rounded MT';
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style15">
    <div class="auto-style16">
        <br />
        <div class="auto-style17" style="border-color: #000000; border-style: solid; ">
            <asp:repeater id="rptSubForumsList" runat="server" EnableViewState="True" OnItemCommand="RptSubForumsList_ItemCommand"  DataSourceID="SqlDataSource1">
	<HeaderTemplate>
		<table width="100%" class="forumtable" >
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
			<td style="text-align:start; border:groove;  ">
				<asp:Label ID="lbltopicTitle" runat="server" Text='<%# Eval("Title") %>' Font-Size="Larger" Font-Names="Arial Black"></asp:Label>
                <h1 style="float:right;">
                     <asp:Image ID="TopicImage" ImageURL='<%# Eval("IM_ID") %>' visible='<%# !Eval("IM_ID").Equals("") %>' runat="server" Height="250px" Width="250px"  BorderStyle="None"></asp:Image>
                </h1>
                <h3 style="font-family:'Arial Rounded MT'">
              <asp:TextBox ReadOnly="true" TextMode="Multiline"  BorderStyle="None" ID="txtdesc" runat="server" Text='<%# Eval("Description") %>'  Font-Size="Medium"   CssClass="auto-label" ></asp:TextBox>
                    </h3>
                <h4 style="float:left; font-family:'Arial Rounded MT';">
                    By <%# Eval("Username") %>
                </h4>
				<h4 style="float:right; text-align:end; font-family:'Arial Rounded MT';">
					Posted on <%# Eval("Date") %>
				</h4>
			</td>

		</tr>
	</ItemTemplate>
	<FooterTemplate>
		</tbody></table>
               <asp:label Font-Names="Arial Black" ID="cmt" runat="server" Text="Comment Section" CssClass="cmt" ></asp:label>
		<br />
	</FooterTemplate>
</asp:repeater>

            <div class="auto-style22">
       <asp:repeater id="CommentSection" runat="server" OnItemCommand="RptSubForumsList_ItemCommand" DataSourceID="SqlDataSource3">
	<HeaderTemplate>
		<table width="100%" class="forumtable" >
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
            <td align="center" style="width:20%; border:solid; border-color:black; ">
                <asp:Image ImageUrl="~/img/defaultprofile.png" ID="userimg" runat="server" height="120px" width="120px" />
                <h3 style="font-family:'Arial Rounded MT'">
               <asp:Label ID="cmtuser" runat="server" Text='<%# Eval("Username") %>' ></asp:Label>
                </h3>
            </td>
			<td style="text-align:start; border:solid; border-color:black; ">
				<asp:Textbox ID="lblcomment" runat="server" Text='<%# Eval("Description") %>' CssClass="lblcomment" BorderStyle="None" ReadOnly="true" TextMode ="Multiline"></asp:Textbox>
				<h4 style="text-align:end; font-family:'Arial Rounded MT'">
					<%# Eval("Date") %>
				</h4>
			</td>

		</tr>
	</ItemTemplate>
	<FooterTemplate>
		</tbody></table>
	</FooterTemplate>
</asp:repeater>
                <div class="auto-style23">

                    <asp:TextBox ID="Txtcomment" runat="server" CssClass="auto-style24" Height="116px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="732px" BorderStyle="Solid"></asp:TextBox>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Btncomment" runat="server" BorderStyle="Outset" Font-Names="Arial Black" Text="Comment" OnClick="Btncomment_Click" />

                </div>
            </div>
        </div>
        <div  class="auto-style19" style="border-color: #000000; border-style: solid; text-align: center;">
            <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Underline="True" Text="Latest Discussions"></asp:Label>
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater1_ItemCommand">
                        	<HeaderTemplate>
		<table width="100%" >
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
			<td align="center" style="width:10%;"><img src="img/forumlogo.png" height="32" width="32" /></td>
			<td style="width:40%;  border:groove; text-align:center;"><h2>
                <asp:Button ID="btnsearch" runat="server"  Text='<%# Eval("Title") %>'   OnClick="Btn_Topic"  CommandArguemnt='<%#Eval("FT_ID")%>' CssClass="auto-style21" Font-Bold="True" Font-Names="Arial" Height="100px" Width="200px" />
                <asp:Label ID="topicID" runat="server" Visible="false" Text='<%# Eval("FT_ID") %>' ></asp:Label>
				</h2>
			</td>

			<td style="text-align:start; border:groove;">
				By <%# Eval("Username") %>
				<h4 style="float:right; text-align:right  ;">
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
        </div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic] WHERE ([FT_ID] = @FT_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="FT_ID" SessionField="TopicID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 4 * FROM Topic ORDER BY Date DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment] WHERE ([FT_ID] = @FT_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="FT_ID" SessionField="TopicID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
