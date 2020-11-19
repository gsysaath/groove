
$('.button').click(function(){
    var clickedButton = $(this);
    this.remove();
    $('.button-wrap').prepend(clickedButton);
  });
