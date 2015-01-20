$(document).on('nested:fieldAdded', function(event){
  // this field was just inserted into your form
  var field = event.field; 
  // it's a jQuery object already! Now you can find date input
  var dateField = field.find('.date');
  $(".select2-option").select2();
  $(".select2-tags").select2({
    tags:["red", "green", "blue"],
    tokenSeparators: [",", " "]}
  );
  $(".filestyle:file").filestyle({classButton: 'btn btn-default', classInput: 'form-control inline input-s'});
})