$(document).ready(function(){
  loadData();
});

let ctx = document.getElementById("chart");

function loadData() {
  $.getJSON("/api/v1/categories", function (categories) {
    createChart(ctx, categories);
    createTimeline(categories);
  });
}
