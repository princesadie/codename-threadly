$( document ).on('turbolinks:load', function() {
    console.log('inside settings.js');
    $("#newAvatarButton").on('click', function() {
      $("#user_avatar").click();
    });
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#user_avatar_container').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    }
    $("#user_avatar").change(function() {
      readURL(this);
    });

    $(".settings-btn").on('click', function() {
      let target = $(this).attr('data-target');
      $("#sidebar li").removeClass('active');
      $(this).addClass('active');
      $(".settings-section").fadeOut('fast', function() {
        $('#' + target).fadeIn('fast');
      });
    });
});
