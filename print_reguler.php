<!-- Javascript -->    
<script type="text/javascript">
 
 /*--This JavaScript method for Print command--*/
  
 function PrintDoc() {
  
 var toPrint = document.getElementById('tabel');
 var popupWin = window.open('');
  
 popupWin.document.open();
  
 popupWin.document.write('<html><title>::Print Data::</title><link rel="stylesheet" type="text/css" href="css/print.css" /></head><body onload="window.print()">')
 popupWin.document.write(toPrint.outerHTML);
 popupWin.document.write('</html>');
 popupWin.document.close();
 }
 </script>  