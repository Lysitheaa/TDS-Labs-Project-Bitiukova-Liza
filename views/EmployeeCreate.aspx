<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="HR_SYSTEM.views.EmployeeCreate" %>

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


        
        
       <style>
		.table tr{
			border: 0px;
		}
		.table td{
			border: 0px;
		}
	</style>
       
        
&nbsp;<div class="container">




        <div class="well">
            <h3>Create An Employee
            </h3>

            <table class="table" style="border:0">
		<tr>
			<td colspan="2"><legend>Employee Personal Information</legend></td>
		</tr>
		<tr>
			<td>SSN:</td>
			
			<td>
                <asp:TextBox ID="SSNTextBox" runat="server" MaxLength="9" required="required" BorderColor="Red"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>First Name:</td>
			<td>
				
			    <asp:TextBox ID="FirstNameTextBox" runat="server" MaxLength="20" BorderColor="Red" required="required"></asp:TextBox>
				
			</td>
			
		</tr>
		
		<tr>
			<td>Middle Initial:</td>
			<td>
				
			    <asp:TextBox ID="MiddleInitialTextBox" runat="server" MaxLength="20"></asp:TextBox>
				
			</td>
			
		</tr>
		
		<tr>
			<td>Last Name:</td>
			<td>
				
			    <asp:TextBox ID="LastNameTextBox" runat="server" MaxLength="20" BorderColor="Red" required="required"></asp:TextBox>
				
			</td>
			
		</tr>
		
		<tr>
			<td>Date of Birth:</td>
			<td>
				
			    <asp:TextBox ID="DOBTextBox" runat="server" placeholder="click to view the calendar" BorderColor="Red" required="required"></asp:TextBox>
			    <script>
			        $("#DOBTextBox").datepicker({ changeYear: true, changeMonth: true, defaultDate: "-30y"});
                </script>
			</td>
			
		</tr>
		
		<tr>
			<td>Gender:</td>
			<td>
                <asp:DropDownList ID="GenderDropDown" runat="server" BorderColor="Red" required="required">
                </asp:DropDownList>
            </td>
		</tr>
		
		<tr>
			<td>Phone Number:</td>
			<td>
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" MaxLength="10" BorderColor="Red" required="required"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>Address 1:</td>
			<td>
                <asp:TextBox ID="Address1TextBox" runat="server" MaxLength="100" BorderColor="Red" required="required"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>Address 2:</td>
			<td>
                <asp:TextBox ID="Address2TextBox" runat="server" MaxLength="50"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>City:</td>
			<td>
                <asp:TextBox ID="CityTextBox" runat="server" MaxLength="50" BorderColor="Red" required="required"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>State:</td>
			<td>
                <asp:TextBox ID="StateTextBox" runat="server" MaxLength="50"></asp:TextBox>
            </td>
		</tr>
		
		<tr>
			<td>Zip Code:</td>
			<td>
                <asp:TextBox ID="ZipCodeTextBox" runat="server" MaxLength="10"></asp:TextBox>
            </td>
		</tr>
		<tr>
			<td colspan="2"><legend>Employee Department and Position</legend></td>
		</tr>

        <tr>
			<td>Department</td>
			<td>
                <asp:DropDownList ID="DepartmentDropDown" runat="server" AutoPostBack="True" BorderColor="Red" required="required"
                    onselectedindexchanged="DepartmentDropDown_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
		</tr>

        <tr>
			<td>Position:</td>
			<td>
                <asp:DropDownList ID="PositionsDropDownList" runat="server" BorderColor="Red" required="required">
                </asp:DropDownList>
            </td>
		</tr>

        <tr>
			<td>Contract type</td>
			<td>
                <asp:DropDownList ID="ContractTypeDropDown" runat="server" BorderColor="Red" required="required">
                </asp:DropDownList>
            </td>
		</tr>

        <tr>
			<td>Working hours per day:</td>
			<td>
                <asp:DropDownList ID="WorkingHoursDropDown" runat="server" BorderColor="Red" required="required">
                </asp:DropDownList>
            </td>
		</tr>

        <tr>
			<td>First day at work:</td>
			<td>
                <asp:TextBox ID="FirstDayTextBox" runat="server" BorderColor="Red" required="required"></asp:TextBox>
                <script>
                    $("#FirstDayTextBox").datepicker({ changeYear: true, changeMonth: true });
                </script>
            </td>
		</tr>

        <tr>
			<td>Working Status</td>
			<td>
                <asp:DropDownList ID="WorkingStatusDropDown" runat="server" BorderColor="Red" required="required">
                </asp:DropDownList>
            </td>
		</tr>

		<tr>
			<td colspan="2">
				
				
			    <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" 
                    onclick="Button1_Click" Text="Add Employee" />
				
				
			</td>
		</tr>
	</table>




        </div>
        </div><!--- END CONTAINER -->
    </div>
    </form>
</body>
</html>
