<?
    if(isset($_POST["sent"])){
                            
    $forename = $_POST["forename"];
    $surname = $_POST["surname"];
    $email = $_POST["email"];
    $descr = $_POST["description"];
/*
    // === form connection CHECK ===
    
    echo $forename;
    echo "<br>";
    echo $surname;
    echo "<br>";
    echo $email;
    echo "<br>";
    echo $descr;
    echo "<br>";
*/                    
                    
        if($forename && $surname && $email && $descr){
            // possible to use isset (if $value is set) or empty (if $value is empty value)
            
            // === database connection ===
            
            $connection = mysqli_connect("localhost","root","root","local");
            // Host, Username, Password, Database name
    /*
            // === database connection CHECK ===
            if($connection){
                echo "<br>Jsme propojeni s databází";
            }else{
                die("<br>Nejsme propojeni s databází");
            }
    */          
            $query = "INSERT INTO contact_form(forename,surname,email,descr) VALUES('$forename','$surname','$email','$descr')";
            // if not working - try another value name (some words can mean commands)
            
            $result = mysqli_query($connection,$query) or die("<br>Dotaz selhal<br>".mysqli_error($connection));

            echo '
                <div class="intern-container">
                    <div class="contact-fixed">
                        <div class="contact-sent">
                            <p class="contact-special">
                            Vaše zpráva byla odeslána.</p>
                            <p>Brzy se Vám ozveme.</p>

                            <img src="http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png">
                        </div>
                    </div>
                </div>';
        }
        else{
            echo '
            <div class="intern-container">
                <div class="contact-fixed">
                    <div class="contact-sent">
                        <p class="contact-special">
                        Vaše zpráva nebyla odeslána.</p>
                        <p>Prosím vyplňte všechna pole.</p>
                        
                        <img src="http://tension.local/wp-content/themes/tension/assets/img/logo-trans-dark.png">
                    </div>
                </div>
            </div>';
        }
    }
?>