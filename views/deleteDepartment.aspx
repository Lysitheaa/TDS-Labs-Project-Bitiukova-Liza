<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteDepartment.aspx.cs" Inherits="HR_SYSTEM.views.deleteDepartment" %>

<%@ Register src="header.ascx" tagname="header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:header ID="header1" runat="server" />

        <div class="container">
        
        <div class="well">
        
        <div class="alert alert-danger">
       <center> <h1>Department will be deleted. Are you sure?</h1>
<br />
                <asp:Button ID="Button1" runat="server" Text="Yes, Delete the department" 
                        CssClass="btn btn-large btn-danger" onclick="Button1_Click" />

                           <asp:Button ID="Button2" runat="server" Text="No, go back to departments" 
                        CssClass="btn btn-large btn-info" onclick="Button2_Click" />
       </center>

        </div>
        
        </div>
        </div>
    
    </div>
    </form>
</body>
</html>
