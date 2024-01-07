<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <title>Register</title>
</head>
<?php 
   session_start();

   include("config.php");
   if(!isset($_SESSION['valid'])){
    header("Location: index.php");
   }
?>
<body style="background-color: black;">
      <div class="container" style="background-color: skyblue;">
        <div class="box form-box" style="background-color: skyblue;">
        
       <!-- Brick -->
        
        <!-- Vrick -->

        <?php 

         include("config.php");
         if(isset($_POST['submit'])){
            $Fullname = $_POST['Fullname'];
            $Destination = $_POST['Destination'];
            $Contact = $_POST['Contact'];
            $Quantity = $_POST['Quantity'];

         //verifying the unique email
         $verify_query = mysqli_query($con,"SELECT id FROM orders WHERE Contact='$Contact'");

         if(mysqli_num_rows($verify_query) !=0 ){
            echo "<div class='message'>
                      <p>This Number is used, Try another One Please!</p>
                  </div> <br>";
            echo "<a href='javascript:self.history.back()'><button class='btn'>Go Back</button>";
         }
        
         else{

            mysqli_query($con,"INSERT INTO orders (Fullname,Addresss,Contact,Quantity) 
            VALUES('$Fullname','$Destination','$Contact', '$Quantity')") or die("Error Occured");

            mysqli_query($con,"INSERT INTO history (Fullname,Addresss,Contact,Quantity) 
            VALUES('$Fullname','$Destination','$Contact', '$Quantity')") or die("Error Occured");
            
            echo "<div class='message'>
                      <p>Transaction Complete!</p>

                      
                  </div> <br>";
            echo "<a href='home.php'><button class='btn'>Home</button>";
            
            
         }

        //  brick
         }else{
            $id = $_SESSION['id'];
                $query = mysqli_query($con,"SELECT*FROM accounts WHERE Id=$id ");

                while($result = mysqli_fetch_assoc($query)){
                    $Fullname = $result['Fullname'];
                    $Username = $result['Username'];
                    $Email = $result['Email'];
                    $Destination = $result['Destination'];
                    $Contact = $result['Contact'];
                }
        // brick

        ?>
            <header>Fill the form for your order/s</header>
            <form action="" method="post">

                <div class="field input">
                    <label for="Fullname">Fullname</label>
                    <input type="text" name="Fullname" id="username" value="<?php echo $Fullname; ?>" autocomplete="off" required>
                </div>

                <!-- <div class="field input">
                    <label for="Fullname">Fullname</label>
                    <input type="text" name="Fullname" id="Username" autocomplete="off" required>
                </div> -->



                <div class="field input">
                    <label for="Destination">Address</label>
                    <input type="text" name="Destination" id="age" value="<?php echo $Destination; ?>" autocomplete="off" required>
                </div>
                

                <div class="field input">
                    <label for="Contact">Contact</label>
                    <input type="number" name="Contact" id="age" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="Quantity">Quantity</label>
                    <input type="number" name="Quantity" id="age" autocomplete="off" required>
                </div>
                <br>
                <div class="field">
                    <input type="submit" class="btn" name="submit" value="Place Order" required>
                </div>

                
                <div class="field">
                    <a style="text-align: center;" href="home.php">Cancel</a>
                </div>

            </form>
        </div>
        <?php } ?>
      </div>


      
</body>
</html>