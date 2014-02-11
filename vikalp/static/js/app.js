var FixCategoryHeight = (function () {
    function setHeight() {
        $(".category-page-category-list-wrapper").each(function () {
            var ele = $(this),
                maxHHeight = 0,
                maxPHeight = 0;

            ele.find('h4').each(function () {
                if (maxHHeight < $(this).innerHeight()) {
                    maxHHeight = $(this).innerHeight();
                }
            });
            ele.find('p').each(function () {
                if (maxPHeight < $(this).innerHeight()) {
                    maxPHeight = $(this).innerHeight();
                }
            });

            ele.find('h4').each(function () {
                $(this).css("height", maxHHeight + "px");
            });
            ele.find('p').each(function () {
                $(this).css("height", maxPHeight + "px");
            });
        });
    }

    return {
        init: function () {
            setHeight();
        }
    };
})();


var FixCarousalHeight = (function () {
    function setHeight() {
        var featureListHeight = $(".featured-list").innerHeight();
        $(".fill-image").css("height", featureListHeight);
    }

    function trigger() {
        if ($(".featured-list").offset().left > 200) {
            var numberOfImages = $(".featured-list img").length;
            $(".featured-list img").each(function () {
                $(this).load(function () {
                    numberOfImages = numberOfImages - 1;
                    if (numberOfImages === 0) {
                        setHeight();
                    }
                });
            });
        }
    }

    return{
        init: function () {
            trigger();
        }
    }
})();

var PageEventsList = (function () {
    function resizeHandler() {
        FixCarousalHeight.init();
    }

    return {
        init: function () {
            $(window).resize(function () {
                resizeHandler();
            });

        }
    }

})();

$(document).ready(function () {
    $('a#feature-article').hover(function () {
        $(this).find('p').toggle();
    });


    FixCategoryHeight.init();
    FixCarousalHeight.init();
    PageEventsList.init();
});
