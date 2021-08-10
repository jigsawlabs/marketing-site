
var f = ["Pandas.", "machine learning.", "neural networks.", "Python."];
var v = 0;

setInterval(function() {
  var t = document.querySelector("span.typed");
  if (t) {
    document.querySelector("span.typed").innerHTML = "".concat(f[v]);
    v === f.length - 1 ? v = 0 : v++
  }
}, 1500);



