<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerBonus.aspx.cs" Inherits="Gamification.ManagerBonus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Manager Bonus</title>

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
<body>
    <form id="form1" runat="server" role="form" action="" method="post" class="login-form">
    <div class="top-content">
    <div class="container">
        	<br /><br/>
            <div class="row">
            <div class="col-lg-offset-4 col-md-offset-3 col-sm-offset-1 col-xs-offset-1 col-lg-4 col-md-6 col-sm-10 col-xs-10 form-white form-top-change-password form-box">
               	<div class="form-head">
                	<div class="accelerator col-lg-9 pull-left">
                    	<a href="#"><span><img src="images/dg_icon_bonus.png"></span> <span>Manager Bonus</span></a>
                    </div>
                    <div class="col-lg-1 pull-right">
                    	<button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                </div>
                

                <div class="col-lg-12">
                	
                    <br/>
                    <div class="col-lg-12">
                    <div class="form-group">
                    <label class="form-label">Manager Name</label>
                    
                    <div id="MangerName">
                    <%--<a href="#" data-toggle="collapse" data-target="#manager_list" class=" no-outline">
                        <div class="select-wrapper">	
                        	<ul class="list-inline">
								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-1 list-img"><img class="img-responsive" src="images/userimg.png"></li>
								<li class="col-lg-9 col-md-9 col-sm-9 col-xs-7"><span class="row-list">James Parktown</span>
                                <span class="row-list-bold">2560</span></li>
                            </ul>
                        </div>    
                    </a>
                    
                    <div class="collapse" id="manager_list">
                    	<div class="clearfix">
                            <a href="#" class=""><ul class="list-inline">
								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-1 list-img"><img class="img-responsive" src="images/userimg.png"></li>
								<li class="col-lg-9 col-md-9 col-sm-9 col-xs-7"><span class="row-list">James Parktown</span>
                                <span class="row-list-bold">2560</span></li>
                            </ul>
                            </a>
                        </div>
                    	<div class="clearfix">

                            <a href="#"><ul class="list-inline">
								<li class="col-lg-2 col-md-2 col-sm-2 col-xs-1 list-img"><img class="img-responsive" src="images/userimg.png"></li>
								<li class="col-lg-9 col-md-9 col-sm-9 col-xs-7"><span class="row-list">James Parktown</span>
                                <span class="row-list-bold">2560</span></li>
                            </ul>
                            </a>
                    	</div>
                    </div>--%>
                    </div>
                    
                        <asp:DropDownList ID="ddlMangerName" runat="server" class="form-control form-username">
                        </asp:DropDownList>
                    </div>
                    </div>
                    
                    

                    <div class="col-lg-12">
			                        <div class="form-group">
			                        	<label class="form-label" for="form-password">Bonus Type</label>
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control custom-select">
                                        </asp:DropDownList>
			                            <%--<select class="form-control custom-select" id="sel1">
    										<option>Cash</option>
    										<option>Coins</option>
   										</select>--%>
			                        </div>
                    </div>
                    
                    <div class="col-lg-12">
			          <div class="form-group">
			          		<label class="form-label" for="form-start-noti">Amount</label>
			               	<%--<input type="text" name="form-username" placeholder="1000" class="form-username form-control" id="form-username">--%>
                          <asp:TextBox runat="server" class="form-username form-control" id="formusername"></asp:TextBox>
			           </div>
			        </div>
                                   
                    <div class="col-lg-12">
			        <div class="col-lg-4 col-md-offset-4">
                    <%--<button type="submit" class="btn">Submit</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-info btn-lg" />
                    </div>
                    <div class="col-lg-4 ">
                    <%--<button type="submit" class="btn">Cancel</button>--%>
                    <asp:Button ID="Button2" runat="server" Text="Cancel"  class="btn btn-white btn-lg" />
                    </div>
                    <br /> <br />  
                    </div> 
                                   
                    
                   
                </div>
                
            </div>
            </div>
            </div>
        </div>

<script type="text/javascript">
    $(document).ready(function () {


        $(".custom-select").each(function () {
            $(this).wrap("<span class='select-wrapper'></span>");
            $(this).after("<span class='holder'></span>");
        });
        $(".custom-select").change(function () {
            var selectedOption = $(this).find(":selected").text();
            $(this).next(".holder").text(selectedOption);
        }).trigger('change');
    })
</script>
    </form>
</body>
</html>
