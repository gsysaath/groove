// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const priceTotal = document.querySelector(".price-total");
const priceDay = document.querySelector(".price-per-day");
const rentStart = document.querySelector(".rent_start_date");
const rentEnd = document.querySelector(".rent_end_date");

if (rentStart) {
  rentStart.addEventListener("change", (event) => {
    let options = document.querySelectorAll('option:checked');
    year1 = parseInt(options[0].value);
    month1 = parseInt(options[1].value);
    day1 = parseInt(options[2].value);
    year2 = parseInt(options[3].value);
    month2 = parseInt(options[4].value);
    day2 = parseInt(options[5].value);

    let date1 = new Date(year1, month1, day1);
    let date2 = new Date(year2, month2, day2);
    let difDays = Math.round((date2 - date1) / 86400000);
    priceTotal.innerText = parseFloat(priceDay.innerText) * difDays;
  })
}

if (rentEnd) {
  rentEnd.addEventListener("change", (event) => {
    let options = document.querySelectorAll('option:checked');
    year1 = parseInt(options[0].value);
    month1 = parseInt(options[1].value);
    day1 = parseInt(options[2].value);
    year2 = parseInt(options[3].value);
    month2 = parseInt(options[4].value);
    day2 = parseInt(options[5].value);

    let date1 = new Date(year1, month1, day1);
    let date2 = new Date(year2, month2, day2);
    let difDays = Math.round((date2 - date1) / 86400000);
    priceTotal.innerText = parseFloat(priceDay.innerText) * (difDays + 1);
  })
};
