
var f = ["Pandas.", "machine learning.", "neural networks.", "Python."];
var v = 0;

setInterval(function() {
  var t = document.querySelector("span.typed");
  if (t) {
    document.querySelector("span.typed").innerHTML = "".concat(f[v]);
    v === f.length - 1 ? v = 0 : v++
  }
}, 1500);

$(document).on("turbolinks:load", () => {
  let button = document.querySelector('.gtag_target')
  button.addEventListener('click', event => {
    gtag_report_conversion()
  });
});




