<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="Gamification.AddUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Add User</title>

        <!-- CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
		<link rel="stylesheet" href="css/form-elements.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/pie.css"/>
        
        <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
   
</head>
    <body class="user-body">
    <form runat="server" class="form">
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-sm-10 col-lg-8 col-lg-offset-2  col-sm-offset-1 form-box">
                        	<div class="form-top-gray">
                            <div class="form-top-left">
                        		<span>Add User</span>
                            </div>
                             <div class="form-top-right">
                              <button type="button" class="close close-white" data-dismiss="modal">&times;</button>
                              </div>
                            </div>
                            <div class=" form-bottom form-bottom-adduser">
                            
                       
			                    <%--<form class="login-form">--%>
                                    
                                    <div class="col-lg-12">
			                        <div class="form-group">
                                    
                                    <div class="row form-group">
                                    	<div class="col-lg-3">
			                     			<%--<label class="form-label" for="form-password">FullName</label>--%>
                                            <asp:Label ID="lblFullName" runat="server" Text="Full Name" class="form-label" for="form-password"></asp:Label>
                                        </div>
                                        <div class="col-lg-8 col-lg-offset-1">
                                       		<%--<input type="text" class="form-control col-lg-10" />--%>
                                            <asp:TextBox ID="txtFullName" runat="server" class="form-control col-lg-10"></asp:TextBox>
			                        	</div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                    	<div class="col-lg-3">
			                     			<label class="form-label" for="form-password">Screen Name</label>
                                        </div>
                                        <div class="col-lg-8 col-lg-offset-1">
                                       		<%--<input type="text" class="form-control col-lg-10" />--%>
                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control col-lg-10"></asp:TextBox>
			                        	</div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                    	<div class="col-lg-3">
			                     			<label class="form-label" for="form-password">Avatar</label>
                                        </div>
                                        <div class="col-lg-2 col-sm-2 col-md-2 col-xs-2 col-lg-offset-1 avatar">
                                       		<span class="btn btn-default btn-file"><input type="file"/></span>
			                        	</div>
                                    </div>
                                    <br/>
                                    <div class="row">
                                    	<div class="col-lg-12">
			                        		<div class="form-group">
                                    			<div class="col-lg-3">
			                        				<label class="form-label" for="form-password">Team Description</label>
			                            		</div>
                                                <div class="col-lg-8 col-lg-offset-1">
                                                <div class="form-control-adduser custom-select">
                                                	<%--<select class="select " id="sel1">
    													<option>option 1</option>
    													<option>option 2</option>
   													</select>--%>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" class="select">
                                                    <asp:ListItem Value="-1">Select</asp:ListItem>
                                                    <asp:ListItem>PriTesh</asp:ListItem>
                                                    <asp:ListItem>Sortee</asp:ListItem>
                                                    </asp:DropDownList>
                                        		</div>
                                                </div>
			                        		</div>
                                    	</div>
                                    </div>
                                    <br/>
                                    <div class="row seprater">
                                    </div>
                                    <br/>
                                    <div class="row">
                                     	<div class="col-lg-2 col-lg-offset-8">
                                        <button type="submit" class="btn">Submit</button>
                                             <asp:Button ID="btnSubmit" runat="server" Text="Submit" type="submit" class="btn submit"/>
                                        </div>
                                     	<div class="col-lg-2">
                                        <button type="submit" class="btn btn-white">Cancel</button>
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" type="submit" class="btn btn-white btn-lg"/>
                                        </div>
                                    </div>
  							 </div>
                        </div>
                        <%--</form>--%>
                    </div>
                	</div>
                    </div>    
                </div>
            </div>
            
        </div>
        </form>
  			<script src="js/jquery.min.js" type="text/javascript"></script>
           <script src="js/index.js" type="text/javascript"></script>
           
<script type="text/javascript">
    $(document).ready(function () {


        $(".custom-select").each(function () {
            $(this).wrap("<span class='select-wrapper-adduser'></span>");
            $(this).after("<span class='holder'></span>");
        });
        $(".custom-select").change(function () {
            var selectedOption = $(this).find(":selected").text();
            $(this).next(".holder").text(selectedOption);
        }).trigger('change');
    })
</script>
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
 
    </body>

</html>
