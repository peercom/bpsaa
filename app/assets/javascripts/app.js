// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(function($) { // document ready
  $(function() {
    $('.morelink').cluetip(
      {
        local:true,
        activation:'hover',
        dropShadow:true,
        hideLocal:true,
        clickThrough:true
      }
    );
    $("a.about-us").live('mouseover', function(event) {
      var case_id = $(this)[0].href.split('/').reverse()[0];
      $.getJSON('/cases/' + case_id + '.json', function(data) {
        $("#case-mood").attr("src", data["case"]["mood_url"]);
        $("#mood-title").text(data["case"]["title"]);
        $("#mood-location").text(data["case"]["location"]);
        $("#mood-content").text(data['case']['content']);
      });
      return(false);
    }
    );
    $(".case-image-thumb").live('mouseover', function(event) {
      $("#main-image img").attr("src", $(this)[0].href);
    });
    $(".case-image-thumb").live('click', function(event) {
      return(false);
    });
    $("a.about-us").live('click', function(event) {
      return(false);
    });
    $("a.lightbox").fancybox({
      overlayShow: true,
      overlayColor: '#3f4954',
      overlayOpacity: 0.9,
      transitionIn: 'elastic',
      transitionOut: 'elastic',
      titleShow: false,
      hideOnContentClick: true
      });
    $(".hidden-content").hide();
    $(".news-item-toggle").live('click', function(event) {
      var news_item_id = $(this)[0].href.split('/').reverse()[0];
      $(' #news-item-'+ news_item_id+' > .hidden-content').toggle();
      if ($(' #news-item-'+ news_item_id+' > .hidden-content').is(":visible")) {
        $(this).text("ausblenden");
      } else {
        $(this).text("mehr");
      };
      return(false);
    });
    $('#willkommen').cycle({
      fx: 'fade',
      speed:    3000, 
      timeout:  2000
    });
  });
});
