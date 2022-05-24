<%@ Page Title="" Language="C#" MasterPageFile="~/UrbanMixology.Master" AutoEventWireup="true" CodeBehind="CreateTopic.aspx.cs" Inherits="MasterDesign.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Images.ClientID%>').prop('src', e.target.result)
                        .width(450)
                        .height(280);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 180px;
            height: 180px;
        }
        .mb-3 {
            height: 800px;
            width: 1479px;
            margin-bottom: 0px;
        }
        #Text1 {
            height: 140px;
            width: 707px;
        }
        #exampleFormControlInput1 {
            height: 22px;
            width: 395px;
        }
        .form-control {
            height: 30px;
            width: 624px;
        }
        #Text2 {
            height: 187px;
            width: 632px;
        }
        #TopicTitle {
            height: 25px;
            width: 563px;
        }
        .auto-style16 {
            height: 960px;
            white-space: normal;
            border:none;
            background:inherit;
        }
        .auto-style18 {
            width: 541px;
            height: 319px;
            float: right;
            margin-left: 0px;
            margin-top: 19px;
            text-align:center;
        }
        .auto-style19 {
            width: 541px;
            height: 570px;
            float: right;
            margin-left: 0px;
            margin-top: 19px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style16">
       &nbsp;&nbsp;&nbsp;
       <asp:Panel ID="Panel1" runat="server" Height="931px" Width="881px" BorderColor="Black" BorderStyle="Outset" style="margin-left: 17px; margin-top: 14px; float:left; " CssClass="auto-style17">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label1" runat="server" Enabled="False" EnableTheming="False" Font-Bold="True" Font-Names="Arial Black" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" Text="Create Topic"></asp:Label>
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Overline="False" Font-Strikeout="False" Text="Title of the Topic"></asp:Label>
           <br />
&nbsp;
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TopicTitle" runat="server" BorderStyle="Outset" Font-Bold="False" Font-Names="Arial Black" Height="22px" Width="625px"></asp:TextBox>
           <br />
           &nbsp;<br /> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Text="Descriptions"></asp:Label>
           <br />
           &nbsp;
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TopicDescription" runat="server" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Height="136px" style="resize:none" TextMode="MultiLine" Width="758px" Wrap="False"></asp:TextBox>
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="TopicImages" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Demi" Text="Images  ( Optional )"></asp:Label>
           &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Images" runat="server" BorderStyle="Outset" Height="289px" Width="456px" />
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:FileUpload  ID="FileUpload1" runat="server" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Width="506px" onchange="ShowImagePreview(this);" />
           &nbsp;<br />
           <br />
           <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="TopicSubmit" runat="server" Font-Bold="True" Font-Names="Arial Black" OnClick="TopicSubmit_Click" Text="Create Topic" />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 3 * FROM Topic ORDER BY Date Desc;"></asp:SqlDataSource>
           <br />
           <asp:SqlDataSource ID="TopicData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic]"></asp:SqlDataSource>
           </asp:Panel>
        <div class="auto-style18" style="border-color: #000000; border-style: solid">
            <asp:Label ID="Label4" runat="server" Text="Share ideas " Font-Underline="True"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Font-Underline="True" Text="with the community"></asp:Label>
        </div>
                <div class="auto-style19" style="border-color: #000000; border-style: solid">
                    <br />
            <asp:Label ID="Label6" runat="server" Text="Latest Discussions" Font-Underline="True"></asp:Label>
            <br />
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        	<HeaderTemplate>
		<table width="100%" class="forumtable">
		<tbody class="forumbody">
	</HeaderTemplate>
	<ItemTemplate>
		<tr>
			<td align="center" style="width:10%;"><img src="img/forumlogo.png" height="32" width="32" /></td>
			<td style="width:40%;  border:groove; text-align:center;"><h2>
                <asp:Button ID="btnsearch" runat="server"  Text='<%# Eval("Title") %>'   OnClick="Btn_Topic"  CommandArguemnt='<%#Eval("Title")%>' CssClass="auto-style16" Font-Bold="True" Font-Names="Arial" Height="100px" Width="200px" />
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
&nbsp;</asp:Content>
