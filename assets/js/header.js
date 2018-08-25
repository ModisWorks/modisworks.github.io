$(function () {
    $('<img>').on('load', function () {
        $('header.page-header .background').addClass("visible");
    }).attr('src', function () {
        var imgUrl = $('header.page-header .background').css('background-image');
        imgUrl = imgUrl.substring(5, imgUrl.length - 2);
        return imgUrl;
    }).each(function () {
        if (!$(this).complete) {
            $('header.page-header .background').removeClass("visible");
        }
    });

    $('img').on('load', function () {
        $(this).addClass("visible");
    }).each(function () {
        if (this.complete) {
            $(this).trigger('load');
        }
    });
});