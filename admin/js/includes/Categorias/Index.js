$(function () {
    // Price Slider
    if ($('.price-sliderdd').length > 0) {
        $('.price-slider').slider({
            min: 30,
            max: 10000,
            step: 10,
            value: [650 , 1500],
            handle: "square"
        });
    }
});