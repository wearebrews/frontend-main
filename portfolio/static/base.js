
var welcomeNav = document.getElementById("welcome_navbar");
var navbar = document.getElementById("navbar");
var navbar_enabled = false;

var onScroll = function(e) {
    console.log("Scroll");
    console.log(welcomeNav.getBoundingClientRect().top);
    var navbar_enabled = welcomeNav.getBoundingClientRect().top <= 0;
    if(navbar_enabled) {
        navbar.style.display = '';
        welcomeNav.style.visibility = 'hidden';
    } else {
        navbar.style.display = 'none';
        welcomeNav.style.visibility = 'visible';
    }
};
onScroll(null);
document.addEventListener("scroll", onScroll);