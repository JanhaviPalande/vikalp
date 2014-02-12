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
        if ($(".featured-list").length >0 && $(".featured-list").offset().left > 200) {
            setHeight();
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

var LoadMoreCallback = (function(){
    function callback(){
         $.endlessPaginate({
            onCompleted:function(){
                FixCategoryHeight.init();
            }
        });
        $.endlessPaginate();
    }
    return{
        init: function(){
            callback();
        }
    };
})();

var CategoryHeightFix = (function(){
    function setHeight(){
        var maxLIHeight = 0;
        $("#category-list li").each(function () {
            if (maxLIHeight < $(this).innerHeight()) {
                maxLIHeight = $(this).innerHeight();
            }
        });
        $("#category-list li").each(function () {
            $(this).css("height", maxLIHeight + "px");
        });
    }
    return{
        init : function(){
            setHeight();
        }
    }
})();

var SetPageSeparatorBar  = (function(){
    function setIt(){
        if($(".right-section").length > 0 && $(".right-section").offset().top > 200 )
            return;
        if($(".left-section").innerHeight() < $(".right-section").innerHeight()){
            $(".left-section").removeClass("right-border-separator");
            $(".right-section").addClass("left-border-separator");
        }
        else{
            $(".left-section").addClass("right-border-separator");
            $(".right-section").removeClass("left-border-separator");
        }
    }
    return{
        init: function(){
            setIt();
        }
    }
})();


$(document).ready(function () {
    $('a#feature-article').hover(function () {
        $(this).find('p').toggle();
    });

    PageEventsList.init();
    LoadMoreCallback.init();
});

$(window).load(function () {
    $('a#feature-article').hover(function () {
        $(this).find('p').toggle();
    });

    FixCategoryHeight.init();
    FixCarousalHeight.init();
    CategoryHeightFix.init();
    SetPageSeparatorBar.init();
});
