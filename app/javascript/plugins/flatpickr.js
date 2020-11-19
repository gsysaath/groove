import flatpickr from "flatpickr";

// flatpickr(".datepicker", {});

import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#rangestart", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#rangeend"})]
});
