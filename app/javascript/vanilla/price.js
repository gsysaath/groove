const price = () => {
  const priceTotal = document.querySelector(".price-total");
  const priceDay = document.querySelector(".price-per-day");
  const rentStart = document.querySelector(".rent_start_date");
  const rentEnd = document.querySelector(".rent_end_date");

  if (rentStart) {
    rentStart.addEventListener("change", (event) => {
      let options = document.querySelectorAll('option:checked');
      let year1 = parseInt(options[0].value);
      let month1 = parseInt(options[1].value);
      let day1 = parseInt(options[2].value);
      let year2 = parseInt(options[3].value);
      let month2 = parseInt(options[4].value);
      let day2 = parseInt(options[5].value);

      let date1 = new Date(year1, month1, day1);
      let date2 = new Date(year2, month2, day2);
      let difDays = Math.round((date2 - date1) / 86400000);
      parseFloat(priceDay.innerText) * (difDays + 1) >= 0 ?
      priceTotal.innerText = (parseFloat(priceDay.innerText) * (difDays + 1)).toFixed(2) :
      priceTotal.innerText = 0;
    })
  }

  if (rentEnd) {
    rentEnd.addEventListener("change", (event) => {
      let options = document.querySelectorAll('option:checked');
      let year1 = parseInt(options[0].value);
      let month1 = parseInt(options[1].value);
      let day1 = parseInt(options[2].value);
      let year2 = parseInt(options[3].value);
      let month2 = parseInt(options[4].value);
      let day2 = parseInt(options[5].value);

      let date1 = new Date(year1, month1, day1);
      let date2 = new Date(year2, month2, day2);
      let difDays = Math.round((date2 - date1) / 86400000);
      parseFloat(priceDay.innerText) * (difDays + 1) >= 0 ?
      priceTotal.innerText = (parseFloat(priceDay.innerText) * (difDays + 1)).toFixed(2) :
      priceTotal.innerText = 0;
    })
  }
}

export { price }
