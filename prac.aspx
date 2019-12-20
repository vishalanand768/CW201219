<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac.aspx.cs" Inherits="CW201219.prac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name :</td>
                    <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Qualification :</td>
                    <td><asp:DropDownList ID="ddlqual" runat="server"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td></td>
                    <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click"></asp:Button></td>
                </tr>

                <tr>
                    <td></td>
                    <td><asp:GridView ID="grd" runat="server" OnRowCommand="grd_RowCommand" AutoGenerateColumns="false">

                         <Columns>

                          <asp:TemplateField HeaderText="Name">
                              <ItemTemplate>
                                  <%#Eval("name") %>
                              </ItemTemplate>
                          </asp:TemplateField>

                           <asp:TemplateField HeaderText="Qualification">
                              <ItemTemplate>
                                  <%#Eval("qualification") %>
                              </ItemTemplate>
                          </asp:TemplateField>

                              <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                           <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="A" CommandArgument='<%#Eval("id") %>' />
                           <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="B" CommandArgument='<%#Eval("id") %>' />
                        </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                        </asp:GridView></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
