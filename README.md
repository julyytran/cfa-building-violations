This app visualizes some summary data from a csv file of building code violations that [I got from Code for America](http://forever.codeforamerica.org/fellowship-2015-tech-interview/Violations-2012.csv)

It calculates number of violations in each category, visualizes it in a bar chart using Chart.js, and visualizes the earliest and latest violation date for each category using Timesheet.js.

If you want to run locally, import the data from csv by running
`rake import:data`
