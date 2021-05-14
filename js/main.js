if(typeof isMainMenuOpen == 'undefined') {
    isMainMenuOpen = false;
}

if(typeof isSubMenuOpen == 'undefined') {
    isSubMenuOpen = false;
}

document.body.onresize = function(){
    if(window.innerWidth >= 768) {
        isMainMenuOpen ? toggleMainMenu() : null;
        isSubMenuOpen ? toggleSubMenu() : null;
        
        isMainMenuOpen = false;
        isSubMenuOpen = false;
    }
};

function toggleMainMenu() {
    const burger = document.querySelector(".hamburger");
    const nav = document.querySelector(".navigation-container");

    isMainMenuOpen ? burger.classList.remove("is-active") : burger.classList.add("is-active");
    isMainMenuOpen ? nav.classList.remove("is-active") : nav.classList.add("is-active");
    isMainMenuOpen ? document.body.classList.remove("remove-scroll") : document.body.classList.add("remove-scroll");
    isSubMenuOpen ? toggleSubMenu() : null;

    isMainMenuOpen ? isMainMenuOpen = false : isMainMenuOpen = true;
}

function toggleSubMenu() {
    const lisubmenu = document.querySelector(".portfolio-li");
    const submenu = document.querySelector(".portfolio-submenu");
    const overlay = document.querySelector(".overlay-menu");
    
    isSubMenuOpen ? submenu.classList.remove("menuopened") : submenu.classList.add("menuopened");
    isSubMenuOpen ? lisubmenu.classList.remove("is-active") : lisubmenu.classList.add("is-active");
    isSubMenuOpen ? overlay.classList.remove("show") : overlay.classList.add("show");

    isSubMenuOpen ? isSubMenuOpen = false : isSubMenuOpen = true;
}

document.querySelector(".overlay-menu").onclick = () => {
    toggleSubMenu();
};

window.onscroll = function() {
    checkScroll();
};

function checkScroll() {
    const navbar = document.getElementById('navbar');

    if(window.scrollY >= navbar.offsetHeight) {
        navbar.classList.add("sticky");
    } else {
        navbar.classList.remove("sticky");
    }
}

document.addEventListener('swup:animationInStart', (event) => {
    document.getElementById('navbar').classList.remove("sticky");
    document.body.classList.remove("remove-scroll");
    isMainMenuOpen ? toggleSubMenu() : null;
    isSubMenuOpen ? toggleSubMenu() : null;
    isMainMenuOpen = false;
    isSubMenuOpen = false;
});

document.addEventListener('swup:animationOutDone', (event) => {
    window.scrollTo(0,0)
});
