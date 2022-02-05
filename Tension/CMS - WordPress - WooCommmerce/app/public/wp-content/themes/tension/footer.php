<? 
    $conn = mysqli_connect("localhost","root","root","local");
    $sql = "SELECT tag, class, content, link, icon, title FROM footer";
    $result = mysqli_query($conn, $sql);
    $datas = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>
    <!-- footer -->
    <div class="extern-container footer-container">
        <div class="footer-dark">
            <div class="intern-container">
                <div class="footer">
                    <div class="footer-responsive">
                        <!-- owner -->
                        <div class="footer-column column-one">
                            <!-- logo -->
                            <div class="owner-info">
                                <div class="logo-box-footer">
                                    <?  foreach ($datas as $data){
                                            if ($data['tag'] == 'logo-link'){ ?>
                                                <a href="<? echo $data['link']; ?>" title="<? echo $data['title']; ?>">
                                        <?  }
                                            if ($data['tag'] == 'logo-image'){ ?>
                                                <div class="logo-contain <? echo $data['class'] ?>">
                                                    <img src="<? echo $data['link']; ?>" alt="<? echo $data['title']; ?>">
                                                </div>
                                    <?  }}  ?>
                                                </a>
                                </div>
                                <?  foreach ($datas as $data){
                                        if ($data['tag'] == 'logo-text'){ ?>
                                            <span>
                                                <? echo $data['content']; ?>
                                            </span>
                                <?  }}  ?>
                            </div>
                            <!-- theme -->
                            <div class="theme-change">
                                <div class="theme-box">
                                    <?  foreach ($datas as $data){
                                            if ($data['tag'] == 'theme'){?>
                                                <div class="<? echo $data['class']; ?>" title="<? echo $data['title']; ?>">
                                                    <? echo $data['icon']; ?>
                                                </div>
                                    <? }} ?>
                                    <div class="ball"></div>
                                </div>
                            </div>                                
                        </div>
                        <!-- navigation -->
                        <div class="footer-column column-two">
                            <?  foreach ($datas as $data){
                                    if ($data['tag'] == 'nav-topic'){ ?>
                                        <h2>
                                            <? echo $data['content']; ?>
                                        </h2>
                            <?  }}  ?>
                            <ul>
                                <?
                                    wp_nav_menu(
                                        array(
                                            'menu' => 'footer_menu',
                                        )
                                    );
                                ?>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-responsive">
                        <!-- social sites -->
                        <div class="footer-column column-three">
                            <?  foreach ($datas as $data){
                                    if ($data['tag'] == 'sites-topic'){ ?>
                                        <h2>
                                            <? echo $data['content']; ?>
                                        </h2>
                            <?  }}  ?>
                            <div class="social-sites">
                                <?  foreach ($datas as $data){
                                        if ($data['tag'] == 'sites-text'){ ?>
                                            <p>
                                                <? echo $data['content']; ?>
                                            </p>
                                <?  }}  ?>
                                <div class="social-icon-flex">
                                    <?  foreach ($datas as $data){
                                            if ($data['tag'] == 'site'){ ?>
                                                <a href="<? echo $data['link']; ?>" title="<? echo $data['title']; ?>">
                                                    <div class="icon-hover">
                                                        <? echo $data['icon']; ?>
                                                    </div>
                                                </a>
                                    <? }} ?>
                                </div>
                            </div>
                        </div>
                        <!-- creator -->
                        <div class="footer-column column-four">
                            <div class="shot-out">
                                <p class="shot-out-text">Powered by</p>
                                <?  foreach ($datas as $data){
                                        if ($data['tag'] == 'creator'){ ?> 
                                            <a href="<? echo $data['link']; ?>">
                                                <? echo $data['content']; ?>
                                            </a>
                                <?  }}  ?>
                            </div>
                            <?  foreach ($datas as $data){
                                    if ($data['tag'] == 'copy'){ ?>
                                        <p class="shot-out-special">
                                            <? echo $data['content']; ?>
                                        </p>
                            <?  }}  ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- scripts -->
    <div class="scripts">
        <!-- JS-Cookie import link (extern) -->
        <script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.1/dist/js.cookie.min.js"></script>
        <!-- Custom script import link (intern) -->
        <script src="http://tension.local/wp-content/themes/tension/assets/js/script.js"></script>
        <!-- Bootstrap script import link (extern) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
        crossorigin="anonymous"></script>
    </div>
</body>

</html>