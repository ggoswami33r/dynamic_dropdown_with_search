<html>
<head>
<title>AJAX in Servlet using JQuery and JSON</title>
<script src="https://code.jquery.com/jquery-1.11.1.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/js/bootstrap.min.js"></script>
    <!-- <script src="../js/select2.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
   <!--  <link href="../css/select2.min.css" rel="stylesheet">
    <link href="../css/select2-bootstrap.min.css" rel="stylesheet"> -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/css/select2.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-css/1.4.6/select2-bootstrap.min.css" rel="stylesheet">
<script>
$(document).ready(function() {

$('#sports').change(function(event) {
        var sports = $("select#sports").val();
        $.get('JsonServlet', {
                sportsName : sports
        }, function(response) {
        var select = $('#player');        
        select.find('option').remove();
          $.each(response, function(index, value) {
          $('<option>').val(value).text(value).appendTo(select);
      });
        });
        });
});
</script>
<script>
   function validate(){
	   
	   var sportsIndex = document.getElementById("sports");
	   var sports = sportsIndex.options[sportsIndex.selectedIndex].value; 	   
	   var playerIndex = document.getElementById("player");
	   var player = playerIndex.options[playerIndex.selectedIndex].value;
	   
	   var flag = true;
	   
	    if ("Select Sports"==sports && "Select Player"==player){	    	
	    	flag  = false;	   
	    	//document.getElementById('error-id').innerHTML= "Please select any of the selection">;
	    	alert('Please select any of the selection');
	    }	    
	    return flag;	   
   }


</script>

</head>
<body>
<h3>AJAX in Servlet using JQuery and JSON</h3>
<form action = "resultServlet" method = "get" onsubmit="return validate()">
<div class = "container">
        Select Favorite Sports:
        <select class = "form-control" id="sports" name = "sports" style = "width:15%">
                <option value = "Select Sports">  --Select Sports-- </option>
                <option value="Football">Football</option>
                <option value="Cricket">Cricket</option>
                <option value="Chess">Chess</option>
        </select>        
        Select Favorite Player:
        <select id="player" class = "form-control" name = "player" style = "width:15%">
                <option value = "Select Player">  --Select Player-- </option>
        </select>
        </div>
        <input type = "submit" value = "Submit"/>
        </form>
        <p id = "error-id"></p>
</body>
<script>
        $('select').select2();
</script>
</html>


