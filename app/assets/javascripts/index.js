
var f = ["machine learning.", "data acquisition.", "statistics.", "business analytics.", "data storytelling.", "probability."];
var v = 0;

setInterval(function() {
  var t = document.querySelector("span.typed");
  if (t) {
    document.querySelector("span.typed").innerHTML = "".concat(f[v]);
    v === f.length - 1 ? v = 0 : v++
  }
}, 1e3);



