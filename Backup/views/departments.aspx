﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="departments.aspx.cs" Inherits="HR_SYSTEM.views.departments" %>

<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:header ID="header1" runat="server" />

        <div class="container">
        <div class="well">
        <h4>Departments</h4>


            <asp:Table ID="Table1" runat="server" CssClass="table">
            </asp:Table>
        
        </div>

        <div class="well">
        
        <h4>Add Department</h4>
        <hr />

        <table class="table">
        
        <tr><td>
            Name: 
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td></tr>
        <tr>
        <td colspan=2>
        
            <center><asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" CssClass="btn btn-info btn-small" /></center>
        
        </td>
        </tr>
        </table>
        
        </div>
        </div>
    
    </div>
   
    </form>
</body>
</html>