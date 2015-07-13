# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready -> 
  $('[data-toggle="tooltip"]').tooltip()
  
  $('#accept_new_knowledge, #accept_edit_knowledge').click (e) ->
    currentForm = $(this).parents('form:first');
    
    $(this).prop("disabled", true)
    $(this).addClass("m-progress")
    
    currentForm.submit()
    return
  
  $('.btn-file :file').on 'fileselect', (event, label) ->
    input = $(this).parents('.input-group').find(':text')
    input.val(label)
    return
    
  return
  
$(document).on  'change', '.btn-file :file', ->
	input = $(this)
	label = input.val().replace(/\\/g, '/').replace(/.*\//, '')
	input.trigger 'fileselect', [label]
  