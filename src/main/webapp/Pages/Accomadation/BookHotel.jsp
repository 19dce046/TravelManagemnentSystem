<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = 	"<%=path+"/hotelconfirm"%>";				
document.mainform.submit();
return true;
}
else
{alert(strErrMsg);return false}
}
function doValidations()
{
var ddIndex;
var strTemp;
var strFld;
var frmDoc;
var strErrMsg;
strErrMsg = "";
frmDoc = document.mainform;			
if(frmDoc.syy.value<=frmDoc.dyy.value)
{
if(frmDoc.smm.value<=frmDoc.dmm.value)
{
if(frmDoc.sdd.value>frmDoc.ddd.value)
strErrMsg = strErrMsg + " Date is Incorrect\n";
}
else
strErrMsg = strErrMsg + " Date is Incorrect\n";
}
else
strErrMsg = strErrMsg + " Date is Incorrect\n";
strFld = frmDoc.cardno
if (strFld.value == ""|| strFld.value.length<4 || strFld.value.length >4 ) 		
strErrMsg = strErrMsg + " Credit Crad No. is Invalid\n";
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Hotel Booking or Lodging</center></B><BR></TD></TABLE>
	<table cellspacing=0 cellpadding=4><FORM name=mainform method=post onsubmit="return doSubmit()">
		<TR>
			<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" id="loginid" value="<%=user%>" class=input>
		</TR>
		<TR>
			<td align=right>Type of Accomodation&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="type" id="type" class=select>
					<option value="GH">Guest house</option>
					<option value="1S">1 Star Hotel</option>
					<option value="23S">2/3 Star Hotel</option>
					<option value="5S">5 Star Hotel</option>
					<option value="PG">P.G Accomodation</option>
				</select>
			</TD></TR>
		<TR>
			<td align=right>Check In Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="sdd" class="select">
<option value="1">01</option>
<option value="2">02</option>
<option value="3">03</option>
<option value="4">04</option>
<option value="5">05</option>
<option value="6">06</option>
<option value="7">07</option>
<option value="8">08</option>
<option value="9">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21" selected>21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="smm" id="select2">
<option value="01">JAN</option>
<option value="02">FEB</option>
<option value="03">MAR</option>
<option value="04">APR</option>
<option value="05">MAY</option>
<option value="06">JUN</option>
<option value="07">JUL</option>
<option value="08">AUG</option>
<option value="09">SEP</option>
<option value="10">OCT</option>
<option value="11" selected>NOV</option>
<option value="12">DEC</option>
</select>
<select name="syy" id="select3">
<option value="04" selected>2008</option>
<option value="05">2009</option>
</select></td>
</tr>
<TR><td align=right>Check Out Date&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
<td><select name="ddd" id="ddd">
<option value="1">01</option>
<option value="2">02</option>
<option value="3">03</option>
<option value="4">04</option>
<option value="5">05</option>
<option value="6">06</option>
<option value="7">07</option>
<option value="8">08</option>
<option value="9">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21" selected>21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="dmm" id="select5">
<option value="01">JAN</option>
<option value="02">FEB</option>
<option value="03">MAR</option>
<option value="04">APR</option>
<option value="05">MAY</option>
<option value="06">JUN</option>
<option value="07">JUL</option>
<option value="08">AUG</option>
<option value="09">SEP</option>
<option value="10">OCT</option>
<option value="11" selected>NOV</option>
<option value="12">DEC</option>
</select>
<select name="dyy" id="select6">
<option value="04" selected>2008</option>
<option value="05">2009</option>
</select></td>
</tr>
<TR><td align=right>Hotel Destination&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
<td><select name="dest" id="dest">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="BG">Banglore</option>
<option value="AG">Agra</option>
<option value="AH">Ahmedabad</option>
<option value="HD">Hydrebad</option>
<option value="ID">Indore</option>
<option value="RC">Ranchi</option>
</select></td>
</tr>
<TR><td align=right>No.of Rooms&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
<td><select name="rooms" id="rooms">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select></td>
</tr>
<TR><td align=right>No.of Children&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
<td><input type=text name="children" id="children">
</td></tr>
<TR><td align=right>Last 4 digits of Your Credit Card No.&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
<TD><input name="cardno" type="password" id="cardno" size="8" maxlength="4" class=input></tD></TR>
<TR><Td colspan=2 align=center><button type=submit>Book Now</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.jpg"%>")</SCRIPT>


