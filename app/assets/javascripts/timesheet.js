$(document).on('page:load', function() {
  timesheetSelectEmployee();
});

$(document).ready(function() {
  timesheetSelectEmployee();
});

var timesheetSelectEmployee = function(){
  $("select#employee-select-for-timesheet").change(function(){
    var id = $(this).val();

    $.ajax({
      url: "/timesheets/employee_timesheets/" + id,
      dataType: "script"
    });

  });
}