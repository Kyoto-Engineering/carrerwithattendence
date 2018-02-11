<?php include "inc/signhead.php";?>
<?php include_once "Classes/reglog.php";?>
<?php //include_once "Classes/cvdrop.php";?>

<?php
      $user = new Signup(); 
      //$extra = new Curriculum();
?>

<?php

    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $userlog = $user->userLogin($email, $phone);
    }

?>  

                       
   <header>
             
                        
                         
                
            </header>
            <section>				
                <div id="container_demo" >
                   
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="" method="post"> 
                            <span style = "color:red">
                            <?php
                                if (isset($userlog)) {
                                    echo $userlog;
                                }
                            ?>
                            </span>
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email </label>
                                    <input id="username" name="email" required="required" type="email" placeholder="ex :- yourmail@gmail.com"/>
                                </p>

                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your Password </label>
                                    <input id="password" name="phone" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>


                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" name="login" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>



<?php
    $u_ip = $_SERVER["REMOTE_ADDR"];
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $userReg = $user->userRegistration($_POST, $u_ip);
    }

?>         

                        <div id="register" class="animate form">
                            <form  action="" method="post"> 
                            <?php
                                if (isset($userReg)) {
                                    echo $userReg;
                                }
                            ?>
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Name</label>

                                    <input id="usernamesignup" name="userName" required="required" type="text" placeholder="Your Name" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" >Email</label>

                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="uname" data-icon="p">Phone</label>
                                    <input id="passwordsignup" name="phone" required="required" type="text" placeholder="Your Phone"/>
                                </p>
                              <p>
                                    <label for="usernamesignup" class="date" >Date Of Birth</label>
                                    <input id="usernamesignup" name="dob" required="required" type="date"/>
                                </p>
                                <p>
                                     <label for="sel1">Specialization</label>
                                       <select class="form-control" id="sellect" name="spId">
                                         <option>Select Specialization</option>
                                                <?php
                                                 $getsp =  $user->getspecilization();
                                                    if ($getsp) {
                                                    while ($value = $getsp->fetch_assoc()) {
                                                 ?>
                                <option value="<?php echo $value['spId'];?>" ><?php echo $value['specialization'];?></option>
                                        <?php } } ?>
                    </select>
                                </p>
                                  
                                <p class="signin button"> 
									<input type="submit" name= "submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
		<?php include "inc/signfoot.php";?>			