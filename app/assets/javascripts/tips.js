function configure_tips() {
  $('.tip-container form').each(function(index, form) {
    console.log('attaching ajax listener.');
    $(form).on('ajax:before', function() {
      $(form).find(".teams").prepend("<div class='loading'></div>");
      console.log("loading");
    });
    $(form).on('ajax:success', function(data, status, xhr) {
      console.log("success");
    });
    $(form).on('ajax:error', function() {
      console.log("failure");
      $('body').prepend($("<div class='alert alert-danger'>Tip not recorded. An error has occurred.</div>"));
      //reset to old value and animate
    });
    $(form).on('ajax:complete', function() {
      $(form).find('.loading').remove();
      $(form).find(".btn-primary").removeClass("active");
      $(form).find("input[type=radio]:checked").parents(".btn-primary").addClass("active");
    });
  });

  $('.tip-container .btn-primary').each(function(index, input) {
    $(input).click(function(event) {
      var selected = $(event.target).parents("form").find("input[type=radio]:checked").val();
      var intended = $(event.target).closest(".btn-primary").find("input[type=radio]").val();
      if(selected != intended) {
        $(event.target).closest(".btn-primary").find("input[type=radio]").first().prop("checked", true);
        $(event.target).parents('form').trigger("submit.rails");
      }
    });
  });
}
