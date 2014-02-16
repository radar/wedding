# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


fetch_table = (num) ->
  $.get '/table/' + num, (data) ->
    $('#table_info').html(data)

$(document).ready ->
  table_number = $('#person_table_number')
  table_number.change (e) ->
    fetch_table(table_number.val())
  
  if table_number.val() != ""
    fetch_table(table_number.val())