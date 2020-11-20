const cardify = () => {
  $('.button').click(function(){
    console.log('it works')
    var clickedButton = $(this);
    this.remove();
    $('.button-wrap').prepend(clickedButton);
  });

}

export { cardify }
