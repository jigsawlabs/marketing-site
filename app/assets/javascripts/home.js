
var r = {};

function e(n) {
  if (r[n]) {
    return r[n].exports
  }
  var i = r[n] = {
    i: n,
    l: false,
    exports: {}
  };
  t[n].call(i.exports, i, i.exports, e);
  i.l = true;
  return i.exports
}
e.c = r;
e.d = function(t, r, n) {
  if (!e.o(t, r)) {
    Object.defineProperty(t, r, {
      enumerable: true,
      get: n
    })
  }
};
function m(t, r, e) {
  return function(n) {
    var i = (r[1] - r[0]) / (t[1] - t[0]);
    var o = r[0] + i * (n - t[0]);
    return e ? Math.min(r[1], Math.max(r[0], o)) : o
  }
}

function h(t) {
  return y(t) || d(t) || p()
}

function p() {
  throw new TypeError("Invalid attempt to spread non-iterable instance")
}

function d(t) {
  if (Symbol.iterator in Object(t) || Object.prototype.toString.call(t) === "[object Arguments]") return Array.from(t)
}

function y(t) {
  if (Array.isArray(t)) {
    for (var r = 0, e = new Array(t.length); r < t.length; r++) {
      e[r] = t[r]
    }
    return e
  }
}

document.addEventListener("DOMContentLoaded", function() {
  var t = window.__LANDING_VARIANT__;
  document.querySelectorAll(".PressList__item").forEach(function(t) {
    t.addEventListener("click", function(t) {
      var r = t.currentTarget.getAttribute("data-slug");
      document.querySelector(".PressList__item--active").classList.remove("PressList__item--active");
      t.currentTarget.classList.add("PressList__item--active");
      document.querySelector(".QuoteList__item--active").classList.remove("QuoteList__item--active");
      document.querySelector(".QuoteList__item[data-slug=".concat(r, "]")).classList.add("QuoteList__item--active")
    })
  });
  var e = document.querySelectorAll(".Persona__inner");

  function n() {
    var n = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
    h(e).forEach(function(r) {
      var e = r.querySelector(".Persona__images-container");
      var i = r.querySelector(".Persona__image-after-c");
      i.style.transition = "none";
      var o = e.getBoundingClientRect();
      var a = o.top;
      var s = o.height;
      var u = n - t;
      var c = u / 15;
      var f = n - s - c;
      var v = u / 5;
      var l = v;
      var h = m([f, l], [100, 300], true);
      var p = h(a);
      if (p > 200) {
        r.classList.add("after")
      } else {
        r.classList.remove("after")
      }
      i.style.width = "".concat(p, "%")
    })
  }
  window.addEventListener("scroll", n, {
    passive: true
  });

  function i(t) {
    t.forEach(function(t) {
      if (t.isIntersecting) {
        t.target.classList.add("mix-active")
      }
    })
  }
  var o = new window.IntersectionObserver(i, {
    threshold: .5
  });
  var a = document.querySelectorAll(".MixCard__attrs, .Persona__mixcard__attrs");
  a.forEach(function(t) {
    return o.observe(t)
  });
  var s = ["wrinkles", "dark spots", "dull skin", "fine lines", "blemishes"];
  var u = ["breakouts", "blackheads", "zits", "whiteheads", "wrinkles", "dark spots"];
  var c = ["anti_aging_1", "anti_aging_2"];
  var f = c.includes(t) ? s : u;
  var v = 0;
  setInterval(function() {
    var t = document.querySelector("span.typed");
    if (t) {
      document.querySelector("span.typed").innerHTML = "".concat(f[v], " â€”");
      v === f.length - 1 ? v = 0 : v++
    }
  }, 1e3);
})

