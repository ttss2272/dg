<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reward.aspx.cs" Inherits="Gamification.Reward" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Rewards</title>

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
    <form id="form1" runat="server"  role="form" action="" method="post" class="login-form">
      <!-- Top content -->
        <div class="top-content">
        	
            <div class="">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-sm-10 col-lg-5 col-lg-offset-4  col-sm-offset-1 form-box">
                        	<div class="form-top-change-password">
                            <div class="form-top-left accelerator">
                        	<span class="center-block"><img src="images/dg_icon_rewards.png"></span> <span>Reward</span>
                             </div>
                             <div class="form-top-right">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>
                            </div>
                            <div class="form-bottom">
                            
                       
			                    
                                    
                                    <div class="col-lg-12">
			                        <div class="form-group">
			                        	<label class="form-label" for="form-password">Reward Type</label>

			                            <%--<select class="form-control custom-select" id="sel1">
    										<option>Reward Type 1</option>
    										<option>Reward Type 2</option>
   										</select>--%>
                                        <asp:DropDownList ID="sel1" runat="server"  class="form-control custom-select">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Type 1</asp:ListItem>
                                        <asp:ListItem>Type 2</asp:ListItem>
                                        </asp:DropDownList>

			                        </div>
                                    </div>
                                    
                                    <div class="col-lg-12">
			                        <div class="form-group">
			                        	<label class="form-label" for="form-password">Activity/Challenge</label>
			                            <%--<select class="form-control custom-select" id="sel1">
    										<option>Challenge 1</option>
    										<option>Challenge 2</option>
   										</select>--%>
                                        <asp:DropDownList ID="ddlChallenge" runat="server"  class="form-control custom-select">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Challenge 1</asp:ListItem>
                                        <asp:ListItem>Challenge 2</asp:ListItem>
                                        </asp:DropDownList>
			                        </div>
                                    </div>
                                    
                                    <div class="col-lg-12">
			                        <div class="form-group">
			                    		<label class="form-label" for="form-start-noti">Start Notification</label>
			                        	<%--<input type="text" name="form-username" placeholder="Notification text comere here" class="form-username form-control" id="form-username">--%>
                                        <asp:TextBox ID="txtStartNotification" runat="server" placeholder="Notification text comere here" class="form-username form-control"></asp:TextBox>
			                        </div>
			                        </div>
                                    
 									<div class="col-lg-12">
			                        <div class="form-group">
			                    		<label class="form-label" for="form-end-noti">End Notification</label>
			                        	<%--<input type="text" name="form-username" placeholder="Notification text comere here" class="form-username form-control" id="form-username">--%>
                                        <asp:TextBox ID="txtEndNotification" runat="server" placeholder="Notification text comere here" class="form-username form-control"></asp:TextBox>
			                        </div>
			                        </div>                                    
                                                                        
                                    <div class="col-lg-6">
                                    <div class="form-group">
			                    		<label class="form-label" for="form-username">Start Date & Time</label>
			                        	<%--<input type="text" name="form-username" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class"  id="some_class_1">--%>
                                        <asp:TextBox  runat="server" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class"  id="some_class_1"></asp:TextBox>
			                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                    <div class="form-group">
                                        <%--<asp:Label ID="lblEndDate" runat="server" Text="End Date & Time" class="form-label"></asp:Label>--%>
			                    		<label class="form-label" for="form-username">End Date & Time</label>
			                        	<%--<input type="text" name="form-username" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class" id="some_class_2">--%>
                                        <asp:TextBox  runat="server" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class"  id="some_class_2"></asp:TextBox>
			                        </div>
                                    </div>
                                    
                                    
                                  
                                   <div class="row">
                                      <div class="col-lg-4"></div>
			                         <div class="col-lg-4"><%--<button type="submit" class="btn">Submit</button>--%>
                                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-lg btn-info" />
                                      </div>
                                     <div class="col-lg-4"><%--<button type="submit" class="btn">Cancel</button>--%>
                                     <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-lg btn-white" />
                                     </div>
			                      </div>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>

  			
    </form>

    <script src="js/jquery.min.js"></script>
           <script src="js/index.js"></script>
           
           <script src="js/jquery.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
             <script type="text/javascript">
                 $('#datetimepicker').datetimepicker({
                     dayOfWeekStart: 1,
                     lang: 'en',
                     disabledDates: ['1986/01/08', '1986/01/09', '1986/01/10'],
                     startDate: '1986/01/05'
                 });
                 $('#datetimepicker').datetimepicker({ value: '2015/04/15 05:03', step: 10 });

                 $('.some_class').datetimepicker();

        </script>
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
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
</html>
