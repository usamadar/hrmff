jQuery(function($) {
  // when the #country field changes
  $("#employee_airline_id").change(function() {
    // make a POST call and replace the content
    var airline = $('select#employee_airline_id :selected').val();
    if(airline == "") airline="0";
    jQuery.get('/employees/show_for_company/' + airline, function(data){
        $("#related_employee_name").html(data);
    })
    return false;
  });

})