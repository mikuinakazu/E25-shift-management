// window.addEventListener("load", function() {
//   var h = document.getElementByClassName("myshift");
//   var element = h.parentNode;
//   element.className = "myshift-date";
// });
// window.addEventListener("load", function() {
// $(document).on('turbolinks:load', function(){
$(function(){
  var h = $(".myshift");
  h.each(function(index){
    console.log($(this).parent())
    $(this).parent().addClass("myshift-date");
  })
});

$(function(){
  $('').hide();
});

$(function(){
  $('thead tr th:nth-child(n+6)').hide();
  $('tbody tr td:nth-child(n+6)').hide();
});
