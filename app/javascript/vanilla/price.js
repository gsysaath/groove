const price = () => {
  const card = document.querySelector(".card-book");
  console.log("here")

  if (card){
    const priceTotal = document.querySelector(".price-total");
    const priceDay = document.querySelector(".price-per-day");
    const rents = document.querySelectorAll(".datepicker");
    card.addEventListener("change", (event) => {
      console.log("here")
      let date1 = new Date(rents[1].value);
      console.log(date1);
      let date2 = new Date(rents[2].value);
      let difDays = Math.round((date2 - date1) / 86400000);
      console.log(difDays);
      parseFloat(priceDay.innerText) * (difDays + 1) >= 0 ?
      priceTotal.innerText = (parseFloat(priceDay.innerText) * (difDays + 1)).toFixed(2) :
      priceTotal.innerText = 0;
    })
    card.addEventListener("change", (event) => {
      console.log("here")
      let date1 = new Date(rents[1].value);
      console.log(date1);
      let date2 = new Date(rents[2].value);
      let difDays = Math.round((date2 - date1) / 86400000);
      console.log(difDays);
      parseFloat(priceDay.innerText) * (difDays + 1) >= 0 ?
      priceTotal.innerText = (parseFloat(priceDay.innerText) * (difDays + 1)).toFixed(2) :
      priceTotal.innerText = 0;
    })

  }


}

export { price }
