<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
<style>
body{
background-image: url('images1/admin.jpg');
}
.select2-container .select2-selection--single{
    height:34px !important;
}
.select2-container--default .select2-selection--single{
         border: 1px solid #ccc !important; 
     border-radius: 0px !important; 
}
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
#custom-search-input {
        margin:0;
        margin-top: 10px;
         margin-top: -1px;
    padding: 6px 20px;
        padding: 0;
    }
 
    #custom-search-input .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 30px;
        border-radius: 50px;
    }
 
    #custom-search-input button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        color:#D9230F;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }




</style>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->
<br>
	        <br>
	        <br>
	        <br>
	        <br>
	        <br>
<span><div class="container">
	 <div class="row">
	   <form class="col-xl-12" action="DonorsNearby" method="post">
	  <h1> Enter the required blood group: </h1>   <select name="bloodGroup" class="form-control select2"  required>
	           <option value="-1"  >Search your required blood group</option> 
	           <option value="apositive">A+</option> 
	           <option value="bpositive">B+</option> 
	           <option value="abpositive">AB+</option> 
	           <option value="opositive">O+</option> 
	           <option value="anegative">A-</option> 
	           <option value="bnegative">B-</option> 
	           <option value="abnegative">AB-</option> 
	           <option value="onegative">O-</option> 
	           
	        </select>
	        <br>
	        <br>
	        <br>
	        <br>
	        <br>
	        <br>
	        <br>
	        <br>
	        
	         <h1>Enter the city you want to search:</h1> <font size="6"><input type="text" name="location" required></font><br/>
	         <br>
	         <br>
	         
                       <font size="6"><center><input type="submit" value="search"></center></font>
	    </form>
	  <div class="btn-group" role="group">
	 
 	</div>
</div></span>
<script>
    $('.select2').select2();
</script>
                
	

</body>
</html>
