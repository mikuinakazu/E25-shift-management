// window.addEventListener("load", function() {
//   var h = document.getElementByClassName("myshift");
//   var element = h.parentNode;
//   element.className = "myshift-date";
// });
window.addEventListener("load", function() {
  var h = $(".myshift");
  h.each(function(index){
    console.log($(this).parent())
    $(this).parent().addClass("myshift-date");
  })
  // var element = h.parentNode;
  // element.className = "myshift-date";
});
