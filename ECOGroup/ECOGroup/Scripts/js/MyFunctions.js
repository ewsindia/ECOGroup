
function loadURL(url)
{
	window.location = url ;
}

var newwindow = ''
function popitup(url) {
if (newwindow.location && !newwindow.closed) {
    newwindow.location.href = url;
    newwindow.focus(); }
else {
    newwindow=window.open( url , "popwindow1", settings = "width=640, left=50, scrollbars=no, location=no, directories=no, status=no, menubar=no, toolbar=no, resizable=no, dependent=no titelvar=no");
	}
	
	
}



 
 function getInfo(str,btnId)
 {


 if (str=="")
   {
   document.getElementById("txtHint").innerHTML="";
   return;
   } 
 if (window.XMLHttpRequest)
   {// code for IE7+, Firefox, Chrome, Opera, Safari
   xmlhttp=new XMLHttpRequest();
   }
 else
   {// code for IE6, IE5
   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
 xmlhttp.onreadystatechange=function()
   {
   if (xmlhttp.readyState==4 && xmlhttp.status==200)
     {
     document.getElementById(btnId).innerHTML=xmlhttp.responseText;
     }
   }
 xmlhttp.open("GET","ajax_GetInfo.php?id="+str,true);
 xmlhttp.send();
 
 
 }


 function getRegisterInfo(year,rid)
 {

	year=document.getElementById(year).value;
	rid=document.getElementById(rid).value;
	//var srall=document.getElementById("srall").checked;
	//	alert(rid+'Value::'+srall);
 if (rid=="")
   {
   		rid="0";
		
   } 
 if (window.XMLHttpRequest)
   {// code for IE7+, Firefox, Chrome, Opera, Safari
   xmlhttp=new XMLHttpRequest();
   }
 else
   {// code for IE6, IE5
   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
   }
 xmlhttp.onreadystatechange=function()
   {
   if (xmlhttp.readyState==4 && xmlhttp.status==200)
     {
     document.getElementById("resultdiv").innerHTML=xmlhttp.responseText;
     }
   }
 xmlhttp.open("GET","getRegisterInfo.php?year="+year+"&rid="+rid,true);
 xmlhttp.send();
 
 
 }