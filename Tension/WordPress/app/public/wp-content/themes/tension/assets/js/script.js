// intro
function moveToPage(){
    setTimeout( () =>{
        $( ".tension-banner" ).fadeOut( 500 );
    }, 1000 );
}
moveToPage();
function windowOut(){
    setTimeout( () => {
        $( ".contact-fixed" ).fadeOut( 500 );
    }, 4000 );
}
windowOut();
// cookie
function cookieWindow(){
    var closeButton = document.querySelector( ".cookie-alert-close" );
    if ( closeButton ){
        closeButton.addEventListener( "click", () => {   
            // 6 months expiration (Google Cookie Rules)
            Cookies.set( "cookie-window", "false", { expires: 7 } );
            $( ".cookie-alert" ).slideUp( 200 );
        });
    }
}
cookieWindow();

function windowClose(){
    var cookieWindow = document.querySelector( ".cookie-alert" );
    if ( cookieWindow ){
        var cookieWindowStatus = Cookies.get( "cookie-window" );
        console.log(cookieWindowStatus);
        if ( cookieWindowStatus === "false" ){
            cookieWindow.style = 'display: none';
        }
    }
}
windowClose();

// === HEADER SCRIPTS ===

// scroll navgation
function navScroll(){
    var header = document.querySelector( 'header' );
    if ( header ){
        window.addEventListener( 'scroll', check );
    }
    function check (){
        var top = ( window.pageYOffset || document.documentElement.scrollTop ) - ( document.documentElement.clientTop || 0 );
        if ( top > 0 ){
            header.classList.add( 'nav-active' );
        } else {
            header.classList.remove( 'nav-active' );
        }
    }
}
navScroll();
// hhamburger animation
function openMenu(){
    const menuBtnTwo = document.querySelector( '.hamburger-div2' );
    let menuOpenTwo = false;
    var navULTwo = document.querySelector( ".header-menu-responsive" );
    menuBtnTwo.addEventListener( 'click', () => {
        if ( !menuOpenTwo ){
            menuBtnTwo.classList.add( 'open2' );
            menuOpenTwo = true;
            navULTwo.classList.add( 'window-active' );
        } else {
            menuBtnTwo.classList.remove( 'open2' );
            menuOpenTwo = false;
            navULTwo.classList.remove( 'window-active' );
        }
    } );
}
openMenu();
// header show search input
function openSearch(){
    let openButton = document.querySelector( ".searchBox" );
    let openButtonResp = document.querySelector( ".searchBox-resp" );

    let closeButton = document.querySelector( ".search-cross" );
    let navHeader = document.querySelector( "header" );

    openButton.addEventListener( 'click', () => {
        $( ".nav-sidebar" ).slideDown( 100 );
        navHeader.classList.add( "sidebar-active" );

    });
    openButtonResp.addEventListener( 'click', () => {
        $( ".nav-sidebar" ).slideDown( 100 );
        navHeader.classList.add( "sidebar-active" );

    });
    closeButton.addEventListener( 'click', () => {
        $( ".nav-sidebar" ).slideUp( 100 );
        navHeader.classList.remove( "sidebar-active" );
    } );
}
openSearch();
// single shop product-image hover
function shopImage(){
    let imgBox = document.querySelector( ".single-column-img" );

    if ( imgBox ){
        let imageOne = document.querySelector( ".img-one" );
        let imageTwo = document.querySelector( ".img-two" );

        let imgCounter = document.querySelector( ".img-counter" );
        let imgNumber = imgCounter.querySelector( "span" );

        imgBox.addEventListener( 'mouseover', () => {
            imageOne.style = 'display: none';
            imageTwo.style = 'display: flex';
            imgNumber.textContent = '2/2';
        });
        imgBox.addEventListener( 'mouseout', () => {
            imageOne.style = 'display: flex';
            imageTwo.style = 'display: none';
            imgNumber.textContent = '1/2';
        });
    }
}
shopImage();
// header logo hover
function logoImage(){
    let logoBox = document.querySelector( ".logo-box" );

    if ( logoBox ){
        let logoOne = document.querySelector( ".logo-base" );
        let logoTwo = document.querySelector( ".logo-hover" );

        logoBox.addEventListener( 'mouseover', () => {
            logoOne.style = 'display: none';
            logoTwo.style = 'display: flex';
        });
        logoBox.addEventListener( 'mouseout', () => {
            logoOne.style = 'display: flex';
            logoTwo.style = 'display: none';
        });
    }
}
logoImage();
// footer logo hover
function logoImageFooter(){
    let logoBox = document.querySelector( ".logo-box-footer" );

    if ( logoBox ){
        let logoOne = document.querySelector( ".logo-base-footer" );
        let logoTwo = document.querySelector( ".logo-hover-footer" );

        logoBox.addEventListener( 'mouseover', () => {
            logoOne.style = 'display: none';
            logoTwo.style = 'display: flex';
        });
        logoBox.addEventListener( 'mouseout', () => {
            logoOne.style = 'display: flex';
            logoTwo.style = 'display: none';
        });
    }
}
logoImageFooter();
// merch - sizes
function sizeWindow(){
    $( ".sizes-open-button" ).click( function (){
        $( ".merch-sizes" ).fadeIn( 200 );
    });
    $( ".sizes-close-button" ).click( function (){
        $( ".merch-sizes" ).fadeOut( 200 );
    });
}
sizeWindow();
// theme change
function darkMode(){
    var ball = document.querySelector(".ball");
    var theme = 'dark-theme';
    // === index ===
    // chookie
    var cookieBox = document.querySelector( ".cookie-alert" );
    // slider - indicator
    var indicatorBox = document.querySelector( ".carousel-indicators" );
    // about ( index - contact )
    var aboutPart = document.querySelector( ".index-about" );
    // note image one
    var noteBoxOne = document.querySelector( ".background-effect-one" );
    // note image two
    var noteBoxTwo = document.querySelector( ".background-effect-two" );
    // galery
    var galeryPart = document.querySelector( ".galery" );
    // === events ===
    var eventPart = document.querySelector( ".single-page" );
    // === contact ===
    var contactPage = document.querySelector( ".contact" );
    // === cart ===
    var cartPage = document.querySelector( ".cart" );
    // == profile ==
    var profilePage = document.querySelector( ".profile" );
    // == text page ==
    var textPage = document.querySelector( ".text-page" );
    // == category ==
    var categoryPage = document.querySelector( ".category" );

    document.body.style.backgroundColor = "#191919";
    ball.style = "transform: translateX(35px)";

    if ( cookieBox ){
        cookieBox.classList.add( theme );
        indicatorBox.classList.add( theme );
        noteBoxOne.classList.add( theme );
        noteBoxTwo.classList.add( theme );
        galeryPart.classList.add( theme );
    }
    if ( aboutPart ){
        aboutPart.classList.add( theme );
    }
    if ( eventPart ){
        eventPart.classList.add( theme );
    }
    if ( contactPage ){
        contactPage.classList.add( theme );
        noteBoxOne.classList.add( theme );
    }
    if ( cartPage ){
        cartPage.classList.add( theme );
    }
    if ( profilePage ){
        profilePage.classList.add( theme );
    }
    if ( textPage ){
        textPage.classList.add( theme );
    }
    if ( categoryPage ){
        categoryPage.classList.add( theme );
    }
}
function lightMode(){
    var ball = document.querySelector(".ball");
    var theme = 'dark-theme';
    // === index ===
    // chookie
    var cookieBox = document.querySelector( ".cookie-alert" );
    // slider - indicator
    var indicatorBox = document.querySelector( ".carousel-indicators" );
    // about ( index - contact )
    var aboutPart = document.querySelector( ".index-about" );
    // note image one
    var noteBoxOne = document.querySelector( ".background-effect-one" );
    // note image two
    var noteBoxTwo = document.querySelector( ".background-effect-two" );
    // galery
    var galeryPart = document.querySelector( ".galery" );
    // === events ===
    var eventPart = document.querySelector( ".single-page" );
    // === contact ===
    var contactPage = document.querySelector( ".contact" );
    // === cart ===
    var cartPage = document.querySelector( ".cart" );
    // == profile ==
    var profilePage = document.querySelector( ".profile" );
    // == text page ==
    var textPage = document.querySelector( ".text-page" );
    // == category ==
    var categoryPage = document.querySelector( ".category" );

    document.body.style.backgroundColor = "#f0f0f0";
    ball.style = "transform: translateX(0px)";

    if ( cookieBox ){
        cookieBox.classList.remove( theme );
        indicatorBox.classList.remove( theme );
        noteBoxOne.classList.remove( theme );
        noteBoxTwo.classList.remove( theme );
        galeryPart.classList.remove( theme );
    }
    if ( aboutPart ){
        aboutPart.classList.remove( theme );
    }
    if ( eventPart ){
        eventPart.classList.remove( theme );
    }
    if ( contactPage ){
        contactPage.classList.remove( theme );
        noteBoxOne.classList.remove( theme );
    }
    if ( cartPage ){
        cartPage.classList.remove( theme );
    }
    if ( profilePage ){
        profilePage.classList.remove( theme );
    }
    if ( textPage ){
        textPage.classList.remove( theme );
    }
    if ( categoryPage ){
        categoryPage.classList.remove( theme );
    }
}
// local storage
function themeSwap(){
    var themeStatus = localStorage.getItem("theme");

    if ( themeStatus === "dark" ){
        darkMode();
    }
    if ( themeStatus === "light" ){
        lightMode();
    }   
}
themeSwap();
// theme button
function themeButton(){
    var buttonLight = document.querySelector(".theme-light");
    var buttonDark = document.querySelector(".theme-dark");
    
    buttonLight.addEventListener("click", () => {
        localStorage.setItem("theme","light");
        lightMode();
    })
    buttonDark.addEventListener("click", () => {
        localStorage.setItem("theme","dark");
        darkMode();
    })
}
themeButton();
