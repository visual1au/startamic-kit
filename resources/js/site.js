import 'flowbite';
import {initFlowbite} from 'flowbite';
import Alpine from 'alpinejs';

window.Alpine = Alpine;
Alpine.start();

// Initialize Flowbite components based on data attribute selectors
initFlowbite();

// Flowbite elements event listeners.
// Details on JS for Flowbite elements in docs https://flowbite.com/docs/getting-started/javascript/#instance-manager
window.addEventListener('load', function() {
    /* Carousel */
    // Carousel pause cycling on mouseenter and resume on mouseleave.
    // NB: need to set data attribute to static initially in view (data-carousel="static") then start the cycle in JS.
    const carousel = FlowbiteInstances.getInstance('Carousel', 'default-carousel');
    const carouselContainer = document.getElementById('carousel-container');
    const carouselItems = document.querySelectorAll('[data-carousel-item]');
    let startX = 0;
    let startY = 0;

    // Set slide interval to 5 seconds
    carousel._options.interval = 5000; // options is only used for re-creation
    carousel._intervalDuration = 5000; // this one changes it live

    carousel.cycle(); // start cycling
    carouselContainer.addEventListener('mouseenter', () => {
        carousel.pause();
    });
    carouselContainer.addEventListener('mouseleave', () => {
        carousel.cycle();
    });
    // Detect swipe on touch devices
    carouselItems.forEach(item => {
        item.addEventListener('touchstart', function(e) {
            // Store the initial touch coordinates
            startX = e.touches[0].clientX;
            startY = e.touches[0].clientY;
        });
        item.addEventListener('touchend', function(e) {
            // Get the final touch coordinates
            const endX = e.changedTouches[0].clientX;
            const endY = e.changedTouches[0].clientY;

            // Calculate the difference between start and end points
            const diffX = startX - endX;
            const diffY = startY - endY;

            // Determine if the swipe was more horizontal or vertical
            if (Math.abs(diffX) > Math.abs(diffY)) {
                // Horizontal swipe
                if (diffX > 0) {
                    carousel.next(); // Swiped left
                } else {
                    carousel.prev(); // Swiped right
                }
            } else {
                // Vertical swipe
                if (diffY > 0) {
                    // Swiped up
                } else {
                    // Swiped down
                }
            }
        });
    });

    /* Navbar */
    // Navbar collapse on mouseleave or click of a nav item.
    const collapse = FlowbiteInstances.getInstance('Collapse', 'navbar-sticky');
    const navbar = document.getElementById('navbar-sticky');
    const navHamburger = document.querySelector('button.nav-hamburger');
    // Flowbite code needs the hamburger click event as well, otherwise it needs 2 clicks next time.
    // Doesn't seem to register with the collapse or toggle API methods or by toggling the 'hidden' class.
    navbar.addEventListener('mouseleave', () => {
        collapse.collapse();
        navHamburger.click();
    });
    // Click on any menu items to collapse the menu. We don't need the hamburger click here, the container mouseleave
    // event will handle (stopPropagation didn't seem to work then it happens twice which keeps it open).
    const navItems = document.querySelectorAll('.nav-item');
    navItems.forEach((item) => {
        item.addEventListener('click', () => {
            collapse.collapse();
        });
    });
});

// If form errors, scroll to form
document.addEventListener('DOMContentLoaded', function () {
    let errorElement = document.getElementById('form-errors');
    let requestForm = document.getElementById('contact');
    if (errorElement) {
        requestForm.scrollIntoView({ behavior: 'instant' });
    }
});
