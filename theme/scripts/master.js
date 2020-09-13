$(document).ready(function () {
  var countDownDate = new Date("Sept 18, 2020 00:00:00").getTime();

  setInterval(function () {
    var now = new Date().getTime();

    var distance = countDownDate - now;

    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor(
      (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
    );
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    $(".days").text(days);
    $(".hours").text(hours);
    $(".minutes").text(minutes);
    $(".seconds").text(seconds);

    if (distance < 0) {
      clearInterval(x);
    }
  }, 1000);

  $(document).on("click", ".toggle-menu", function () {
    console.log("clicked");
    $("nav").toggleClass("show");
    $("header").addClass("scroll");
  });

  $(".splash-banner .slider").slick({
    arrows: false,
    autoplay: true,
    autoplaySpeed: 5000,
    speed: 500,
    adaptiveHeight: true,
    fade: true,
    cssEase: "linear",
  });

  $(".press-release .slider").slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    centerPadding: "40px",
    prevArrow:
      '<a type="button" class="slick-prev"><i class="icon-back"></i></a>',
    nextArrow:
      '<a type="button" class="slick-next"><i class="icon-next"></i></a>',
    responsive: [
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });

  $(".partnerships .slider").slick({
    infinite: true,
    slidesToShow: 6,
    slidesToScroll: 1,
    centerPadding: "40px",
    arrows: true,
    prevArrow:
      '<a type="button" class="slick-prev"><i class="icon-back"></i></a>',
    nextArrow:
      '<a type="button" class="slick-next"><i class="icon-next"></i></a>',
    responsive: [
      {
        breakpoint: 1441,
        settings: {
          slidesToShow: 5,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 1025,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 769,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });

  $(".implementation .slider").slick({
    dots: false,
    vertical: true,
    verticalSwiping: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: true,
    autoPlay: true,
    dots: true,
    centerMode: true,
    adaptiveHeight: true,
    prevArrow:
      '<a type="button" class="slick-prev"><i class="icon-up"></i></a>',
    nextArrow:
      '<a type="button" class="slick-next"><i class="icon-down"></i></a>',
    responsive: [
      {
        breakpoint: 600,
        settings: {
          dots: false,
        },
      },
    ],
  });

  $(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll > 150) {
      $("header").addClass("scroll");
    } else {
      $("header").removeClass("scroll");
    }
  });
});
