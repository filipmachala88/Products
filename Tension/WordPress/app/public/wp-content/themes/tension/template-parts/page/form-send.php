<?
    if(isset($_POST["sent"])){          
        $forename = $_POST["forename"];
        $surname = $_POST["surname"];
        $email = $_POST["email"];
        $descr = $_POST["description"];
/*      
        // === form connection CHECK ===
        echo $forename . $surname . $email . $descr;
*/                         
        // possible to use isset (if $value is set) or empty (if $value is empty value)
        if($forename && $surname && $email && $descr){
            // database connection - Host, Username, Password, Database name
            $connection = mysqli_connect("localhost","root","root","local");
/*          
            // database connection CHECK
            if ($connection){
                echo 'Jsme propojeni s databází';
            }
            else{
                die('Nejsme propojeni s databází');
            }
*/          
            // if not working - try another value name (some words can mean commands)
            $query = "INSERT INTO contact_form(forename,surname,email,descr) VALUES('$forename','$surname','$email','$descr')";
            $result = mysqli_query($connection,$query) or die("<br>Dotaz selhal<br>".mysqli_error($connection));
            echo '
                <div class="intern-container">
                    <div class="contact-fixed">
                        <div class="contact-sent">
                            <p class="contact-special">
                            Vaše zpráva byla odeslána.</p>
                            <p>Brzy se Vám ozveme.</p>

                            <img src="http://tension.local/wp-content/themes/tension/assets/img/logo-trans-hover.png" alt="icon">
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
                        
                        <img src="http://tension.local/wp-content/themes/tension/assets/img/logo-trans-dark.png" alt="icon">
                    </div>
                </div>
            </div>';
        }
    }
?>