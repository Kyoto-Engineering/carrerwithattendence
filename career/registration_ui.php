<!DOCTYPE html>
<html>
    <head>
        <title>Kyoto : Recruitment</title>
        
        <meta charset="UTF-8" />
        <meta name="viewport" content="Kyoto Engineering and Automation Ltd.">
        <meta name="description" content="Kyoto recruitment" />
        <meta name="keywords" content="Kyoto recruitment login" />
        <meta name="tauhidtonmoy@gmail.com" content="Kyoto" />
        
        
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
        <div id="register" class="animate form">
            <form action="registrationFormHandler.php" method="post" enctype="multipart/form-data" name="myForm" onsubmit="return validateForm();">
                <div class="section"> <span></span>Please fill up this form to register:</div><br/><br/><br/>
                
                <p>
                    <label for="usernamesignup" class="name">User Name:</label>
                    <input id="user_name" name="user_name" required="required" type="text" placeholder="Your User Name" />
                </p>
                
                <p>
                    <label for="usernamesignup" class="name">Email:</label>
                    <input id="user_email" name="user_email" required="required" type="email" placeholder="Your email address" />
                </p>
                
                <p>
                    <label for="usernamesignup" class="name">Phone Number:</label>
                    <input id="user_phone" name="user_phone" required="required" type="phone" placeholder="Your phone Number" />
                </p>
                
                <p>
                    <label for="usernamesignup" class="name">Date of Birth:</label>
                    <input id="dob" name="dob" required="required" type="date" placeholder="Your phone Number" />
                </p>
                
                <p>
                    <label for="usernamesignup" class="name">Specialization:</label>
                    <select id="specials" name="specials"></select><!-- this point needs php code-->
                </p>
                
                <p>
                    <label for="usernamesignup" class="name">Highest Education Level:</label>
                    <select id="hEduLevel" name="hEduLevel"></select><!-- this point needs php code-->
                </p>
                
                <p>
                    <input type="submit" value="Sign up" name="btn-upload" />
                </p>

                
            </form>
        </div>   
    </body>
</html>