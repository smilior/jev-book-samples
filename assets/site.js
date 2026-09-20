(function () {
  document.querySelectorAll("[data-copy]").forEach(function (btn) {
    btn.addEventListener("click", async function () {
      var id = btn.getAttribute("data-copy");
      var el = document.getElementById("code-" + id);
      if (!el) return;
      try {
        await navigator.clipboard.writeText(el.innerText);
      } catch (e) {
        var range = document.createRange();
        range.selectNodeContents(el);
        var sel = window.getSelection();
        sel.removeAllRanges();
        sel.addRange(range);
        document.execCommand("copy");
        sel.removeAllRanges();
      }
      var t = document.getElementById("toast");
      if (!t) return;
      t.classList.add("is-visible");
      t.style.display = "block";
      setTimeout(function () {
        t.classList.remove("is-visible");
        t.style.display = "none";
      }, 1200);
    });
  });

  if (location.hash) {
    var target = document.querySelector(location.hash);
    if (target) {
      target.scrollIntoView({ behavior: "smooth", block: "start" });
    }
  }
})();
