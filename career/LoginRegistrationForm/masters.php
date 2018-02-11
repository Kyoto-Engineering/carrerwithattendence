<?php include_once "inc/header.php";?>
<?php include_once "Classes/address.php";?>

<?php 
  $add = new Address();
   if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $insertAdd = $add->addressInsert($_POST);
    }
 
?>

    <div class="container-fluid">
        
        <header> <h2> Primary Schooling Information </h2> </header>
        
        <form class="container-fluid">
            
            <p>
                <label>Name of Institution</label>
                <input class="w3-input" type="text" placeholder="Institution Name; Ex: Ideal School & College" >

            </p>
            <br>
            
            <p>
                <label>Passing Year</label>
                <input class="w3-input" type="number" placeholder="Institution Name; Ex: Ideal School & College" >

            </p>
            <br>
            
            <p>
                <label>Achieved Grade</label>
                <input class="w3-input" type="text" placeholder="Institution Name; Ex: Ideal School & College" >

            </p>
            <br>
            
            <p>
                <button class="w3-button w3-block w3-section w3-blue w3-ripple w3-padding">Submit</button>
                
            </p>
            
        </form>
    </div>























<?php include_once "inc/footer.php";?>