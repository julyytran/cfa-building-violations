$(document).ready(function(){
  loadData();
});

let ctx = document.getElementById("chart");

function loadData() {
  $.getJSON("/api/v1/categories", function (categories) {
    createChart(ctx, categories);
  });
}

function createChart(ctx, categories) {
  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: categoryNames(categories),
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)'
        ],
        borderColor: [
          'rgba(255,99,132,1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)'
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero:true
          }
        }]
      }
    }
  });
}

function categoryNames(categories) {
  let names = [];
  for (var i = 0; i < categories.length; i++) {
    names.push(categories[i].name);
  }
  return names;
}
