<?php include "inc/signheader.php";?>

            <section>				
                <div id="container_demo" >
                   
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="" method="post"> 

                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="email" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>

                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your  </label>
                                    <input id="password" name="phone" required="required" type="text" placeholder="eg. X8df!90EO" /> 
                                </p>


                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" name="login" value="Login" /> 
								</p>
                                <!-- <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p> -->
                            </form>
                        </div>


         

                        <div id="register" class="animate form">
                            <form  action="" method="post"> 
  
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
                              
                                    <label for="usernamesignup" class="date" >Date Of Birth</label>
                                    <input id="usernamesignup" name="dob" required="required" type="date"/>
                                </p>
                                  <p>

                                    <label for="passwordsignup" class="uname">Specialization</label>
                                        <select class="form-control" id="sellect" name="spId">
                                            <option>Specialization</option>

                                              <option value=""></option>
                                        

                                            </select>
                                </p>
                                        <br>
                                  <p>

                                    <label for="passwordsignup" class="uname">Highier Education</label>
                                        <select class="form-control" id="sellect" name="HID">
                                            <option>Highier Education</option>
                                             
                                              <option value=""></option>
                                          
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

<?php include "inc/signfooter.php";?>