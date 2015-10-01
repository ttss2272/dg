<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBroadcastMessage.aspx.cs" Inherits="Gamification.AdminBroadcastMessage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Admin Brodcast Message</title>

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
     <form runat="server" role="form" action="" method="post" class="login-form">
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-sm-10 col-lg-5 col-lg-offset-4  col-sm-offset-1 form-box">
                          <div class="form-top-change-password">
                            <div class="form-top-left accelerator">
                        	<span class="center-block"><img src="images/dg_icon_bonus.png"></span> <span>Broadcast Message</span>
                         
                             </div>
                             <div class="form-top-right">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>
                            </div>
                            <div class="form-bottom">
                            
                       
			                   <%-- <form role="form" action="" method="post" class="login-form">--%>
                                    
                                    <div class="col-lg-12">
			                        <div class="form-group">
			                     		<%--<label class="form-label" for="form-password">Bonus Type</label>--%>
                                        <asp:Label ID="lblBonusType" runat="server" Text="Bonus Type" class="form-label" for="form-password"></asp:Label>
                                       	<%--<textarea class="form-control" rows="1" placeholder="Type message here"></textarea>--%>
                                        <asp:TextBox ID="txtBonusType" TextMode="MultiLine" Height="100%" placeholder="Type Message here" class="form-control" runat="server"></asp:TextBox>
			                        </div>
                                    </div>
                                   
                                    <div class="col-lg-12">
			                        <div class="form-group">
			                        	<%--<label class="form-label" for="form-password">Activity/Challenge</label>--%>
                                        <asp:Label ID="lblActivityChallenge" class="form-label" runat="server" for="form-password" Text="Activity/Challenge"></asp:Label>
			                            <%--<select class="form-control custom-select" id="sel1">
    										<option>Select 1</option>
    										<option>Select 2</option>
   										</select>--%>
                                        <asp:DropDownList ID="ddActivityChallenge" class="form-control custom-select" runat="server">
                                            <asp:ListItem>Select 1</asp:ListItem>
                                            <asp:ListItem>Select 2</asp:ListItem>
                                            <asp:ListItem>Select 3</asp:ListItem>
                                        </asp:DropDownList>
			                        </div>
                                    </div>
                                    
                                    <div class="col-lg-6">
                                    <div class="form-group">
			                    		<%--<label class="form-label" for="form-username">Start Date & Time</label>--%>
                                        <asp:Label ID="lblStartDate" runat="server" Text="Start Date & Time" class="form-label" for="form-username"></asp:Label>
			                        	<%--<input type="text" name="form-username" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class"  id="some_class_1">--%>
                                        <asp:TextBox ID="txtStartDateTime" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class"  runat="server"></asp:TextBox>
			                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                    <div class="form-group">
			                    		<%--<label class="form-label" for="form-username">End Date & Time</label>--%>
                                        <asp:Label ID="lblEndDate" runat="server" Text="End Date & Time" class="form-label" for="form-username"></asp:Label>
			                        	<%--<input type="text" name="form-username" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class" id="some_class_2">--%>
                                        <asp:TextBox ID="txtEndDateTime" placeholder="09/11/2015 14:00:38" class="form-username form-control some_class" runat="server"></asp:TextBox>
			                        </div>
                                    </div>
                                   
                                    
                                     <div class="col-lg-4"></div>
			                         <div class="col-lg-4"><%--<button type="submit" class="btn">Submit</button>--%> 
                                         <asp:Button ID="BtnSubmit" class="btn btn-lg btn-info" runat="server" type="submit" Text="Submit" /></div>
                                    
                                     <div class="col-lg-4"><%--<button type="submit" class="btn">Cancel</button>--%> 
                                         <asp:Button ID="BtnCancel" class="btn btn-lg btn-info" type="submit" runat="server" Text="Cancel" /></div>
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
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery.datetimepicker.js" type="text/javascript"></script>
         
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
