function createTimeline(categories) {
  var timesheetData = createTimesheet(categories);
  new Timesheet('timesheet', 2012, 2012, timesheetData);
}

function createTimesheet (categories) {
  let timesheetContents = [];
  for (var i = 0; i < categories.length; i++) {
    if (categories[i].count === 1) {
      timesheetContents.push([categories[i].earliest_violation_month + '/2012', categories[i].name + " - Only Violation"]);
    } else {
      timesheetContents.push([categories[i].earliest_violation_month + '/2012', categories[i].name + " - Earliest Violation"]);
      timesheetContents.push([categories[i].latest_violation_month + '/2012', categories[i].name + " - Latest Violation"]);
    }
  }
  return timesheetContents;
}
