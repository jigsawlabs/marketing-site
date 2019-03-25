
$(document).on('turbolinks:load', function(){
  let form = $('form#new_application')
  var application_modal = $('#application_modal')
  application_modal.modal('show')
  $('form#new_application').on("ajax:success", function(event){
    application_modal.modal('hide')
    $('section.Solutions.application_form_2').attr('id', 'add_opacity')
  }).on('ajax:error', function(event){
  })
})
