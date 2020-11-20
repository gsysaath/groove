const cardify = () => {
  $('.button').click(function(){
    var clickedButton = $(this);
    var parent_col = this.parentNode;
    // element.classList.add("clicked");
    console.log(clickedButton)
    this.remove();
    $(parent_col).prepend(clickedButton);
    // element.classList.remove("clicked");
  });
}

export { cardify }
