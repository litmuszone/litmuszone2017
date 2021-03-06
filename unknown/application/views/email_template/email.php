<!doctype html>

 <html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="initial-scale=1.0" />
  <meta name="format-detection" content="telephone=no" />
  <title></title>
  <style type="text/css">
  
 	body {
		width: 100%;
		margin: 0;
		padding: 0;
		-webkit-font-smoothing: antialiased;
	}
	@media only screen and (max-width: 700px) {
		table[class="table-row"] {
			float: none !important;
			width: 98% !important;
			padding-left: 20px !important;
			padding-right: 20px !important;
		}
		table[class="table-row-fixed"] {
			float: none !important;
			width: 98% !important;
		}
		table[class="table-col"], table[class="table-col-border"] {
			float: none !important;
			width: 100% !important;
			padding-left: 0 !important;
			padding-right: 0 !important;
			table-layout: fixed;
		}
		td[class="table-col-td"] {
			width: 100% !important;
		}
		table[class="table-col-border"] + table[class="table-col-border"] {
			padding-top: 12px;
			margin-top: 12px;
			border-top: 1px solid #E8E8E8;
		}
		table[class="table-col"] + table[class="table-col"] {
			margin-top: 15px;
		}
		td[class="table-row-td"] {
			padding-left: 0 !important;
			padding-right: 0 !important;
		}
		table[class="navbar-row"] , td[class="navbar-row-td"] {
			width: 100% !important;
		}
		img {
			max-width: 100% !important;
			display: inline !important;
		}
		img[class="pull-right"] {
			float: right;
			margin-left: 11px;
            max-width: 125px !important;
			padding-bottom: 0 !important;
		}
		img[class="pull-left"] {
			float: left;
			margin-right: 11px;
			max-width: 125px !important;
			padding-bottom: 0 !important;
		}
		table[class="table-space"], table[class="header-row"] {
			float: none !important;
			width: 98% !important;
		}
		td[class="header-row-td"] {
			width: 100% !important;
		}
	}
	@media only screen and (max-width: 480px) {
		table[class="table-row"] {
			padding-left: 16px !important;
			padding-right: 16px !important;
		}
	}
	@media only screen and (max-width: 320px) {
		table[class="table-row"] {
			padding-left: 12px !important;
			padding-right: 12px !important;
		}
	}
	@media only screen and (max-width: 458px) {
		td[class="table-td-wrap"] {
			width: 100% !important;
		}
	}
  </style>
 </head>
 <body style="font-family: Arial, sans-serif; font-size:13px; color: #444444; min-height: 200px;" bgcolor="#E4E6E9" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
	<table width="100%" height="100%" bgcolor="#E4E6E9" cellspacing="0" cellpadding="0" border="0">
		<tr>
			<td width="100%" align="center" valign="top" bgcolor="#E4E6E9" style="background-color:#E4E6E9; min-height: 200px;">
				<table><tr><td class="table-td-wrap" align="center" width="458">
				<table class="table-space" height="18" style="height: 18px; font-size: 0px; line-height: 0; width: 700px; background-color: #e4e6e9;" width="700" bgcolor="#E4E6E9" cellspacing="0" cellpadding="0" border="0">
				<tbody><tr><td class="table-space-td" valign="middle" height="18" style="height: 18px; width: 700px; background-color: #e4e6e9;" width="700" bgcolor="#E4E6E9" align="left">&nbsp;</td></tr></tbody>
				</table>
				<table class="table-space" height="8" style="height: 8px; font-size: 0px; line-height: 0; width: 700px; background-color: #ffffff;" width="700" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="table-space-td" valign="middle" height="8" style="height: 8px; width: 700px; background-color: #ffffff;" width="700" bgcolor="#FFFFFF" align="left">&nbsp;</td></tr></tbody></table>
				<table class="table-row" width="700" bgcolor="#FFFFFF" style="table-layout: fixed; background-color: #ffffff;" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="table-row-td" style="font-family: Arial, sans-serif; line-height: 19px; color: #444444; font-size: 13px; font-weight: normal; padding-left: 36px; padding-right: 36px;" valign="top" align="left">
  				<table class="table-col" align="left" width="630" cellspacing="0" cellpadding="0" border="0" style="table-layout: fixed;">
  					<tbody>
  					<tr>
  					<td class="table-col-td" width="630" style="font-family: Arial, sans-serif; line-height: 19px; color: #444444; font-size: 13px; font-weight: normal; width: 630px;" valign="top" align="left">
    				<table class="header-row" width="630" cellspacing="0" cellpadding="0" border="0" style="table-layout: fixed;">
    					<tbody>
    						<tr>
    							<td class="header-row-td" width="630" style="font-family: Arial, sans-serif; font-weight: normal; line-height: auto; color: #009cde; margin: 0px; font-size: 28px; padding-bottom: 10px; padding-top: 15px;" valign="top" align="left">
    							<br/><!--------------message header goes here----------------->
   									<?=$message['header']?>
    				   				<!--------------end of message header goes here----------------->
								</td>
							</tr>
						</tbody>
					</table>
    				
  				</td>
  				</tr>
  				</tbody>
  				<!-----message place ------>
  				<tbody>
				<tr>
					<td style="padding:0px;font-size: 13px;color: #777777;" colspan="2" align="left" valign="top">
						<font face="Arial, Helvetica, sans-serif;" >
						<?=$message['body']?>							
						</font>
					</td>
				</tr>
				</tbody>
				<!-----message place end------>
				<!-----mail footer------>
				<tbody>
				<tr>
				<td style="padding:0px; font-size: 13px; color: #777777;" colspan="2" align="left" valign="top">
					<font face="Arial, Helvetica, sans-serif">
					<?php echo @$message['mail_footer']; ?>
					
					</font>
				</td>
				</tr>
				</tbody>
			<!-----mail footer end------>
		</table>
	</td></tr></tbody></table>
	<!-----Button link here------>
<?php
if(isset($message['button_link'])){
?>
     
<table class="table-row" width="700px" bgcolor="#FFFFFF" style="table-layout: fixed; background-color: #ffffff;" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="table-row-td" style="font-family: Arial, sans-serif; line-height: 19px; color: #444444; font-size: 13px; font-weight: normal; padding-left: 36px; padding-right: 36px;" valign="top" align="left">
  <table class="table-col" align="left" width="630" cellspacing="0" cellpadding="0" border="0" style="table-layout: fixed;"><tbody><tr><td class="table-col-td" width="630" style="font-family: Arial, sans-serif; line-height: 19px; color: #444444; font-size: 13px; font-weight: normal; width: 630px;" valign="top" align="left">
    <div style="font-family: Arial, sans-serif; line-height: 19px; color: #444444; font-size: 13px; text-align: left;">
      
      <a href="<?=$message['button_link']?>" style="color: #ffffff; text-decoration: none; margin: 0px; text-align: center; vertical-align: baseline; border: 4px solid #009cde; font-size: 15px; line-height: 21px; background-color: #009cde;">&nbsp; <?=$message['button_content']?> &nbsp;</a><br/>
       
    </div>
    <br/>
    <table class="table-space" height="16" style="height: 16px; font-size: 0px; line-height: 0; width: 630px; background-color: #ffffff;" width="630" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="table-space-td" valign="middle" height="16" style="height: 16px; width: 630px; background-color: #ffffff;" width="630" bgcolor="#FFFFFF" align="left">&nbsp;</td></tr></tbody></table>
  </td></tr></tbody></table>
</td></tr></tbody></table>

  <!-----Button link end------>
<?php
 }
?>
<table class="table-space" height="6" style="height: 6px; font-size: 0px; line-height: 0; width: 700px; background-color: #ffffff;" width="700" bgcolor="#FFFFFF" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="table-space-td" valign="middle" height="6" style="height: 6px; width: 700px; background-color: #ffffff;" width="700" bgcolor="#FFFFFF" align="left">&nbsp;</td></tr></tbody></table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
 
