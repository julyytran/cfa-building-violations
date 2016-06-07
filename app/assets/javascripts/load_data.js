$(document).ready(function(){
  loadData();
});

function loadData() {
  $.getJSON("/api/v1/violations", function (violations) {
    // debugger
  });
}
