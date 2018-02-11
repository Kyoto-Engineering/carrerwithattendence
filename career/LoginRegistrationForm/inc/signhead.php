<!DOCTYPE html>
 <html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
       
        <title>Login and Registration Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style3.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <link href="css/bootstrap.min.css" rel="stylesheet">


           <script>
        function validateForm() {

            var x = document.forms["myForm"]["user_email"].value;
            var atpos = x.indexOf("@");
            var dotpos = x.lastIndexOf(".");
            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
                alert("Not a valid e-mail address");
                return false;
            }
        }
        </script>
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            
          