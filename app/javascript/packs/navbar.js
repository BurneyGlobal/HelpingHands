
// // When the user scrolls the page, execute myFunction
// window.onscroll = function() {myFunction()};

// // Get the navbar
// var navbar = document.getElementById("navbar");

// // Get the offset position of the navbar
// var sticky = navbar.offsetTop;

// // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
// function myFunction() {
//   if (window.pageYOffset >= sticky) {
//     navbar.classList.add("sticky")
//   } else {
//     navbar.classList.remove("sticky");
//   }
// }



// <<<<<<<<<<<<<<<<<<

// (function($) {
//     "use strict";

//     var $navbar = $("#navbar"),
//         y_pos = $navbar.offset().top,
//         height = $navbar.height();

//     $(document).scroll(function() {
//         var scrollTop = $(this).scrollTop();

//         if (scrollTop > y_pos + height) {
//             $navbar.addClass("navbar-fixed").animate({
//                 top: 0
//             });
//         } else if (scrollTop <= y_pos) {
//             $navbar.removeClass("navbar-fixed").clearQueue().animate({
//                 top: "-48px"
//             }, 0);
//         }
//     });

// })(jQuery, undefined);





// $('.navTrigger').click(function () {
//     $(this).toggleClass('active');
//     console.log("Clicked menu");
//     $("#mainListDiv").toggleClass("show_list");
//     $("#mainListDiv").fadeIn();

// });
