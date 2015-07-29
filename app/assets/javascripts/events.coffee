# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->	
  $(".ui-datepicker").each ->
    $(@).datepicker
      dateFormat: "mm/dd/yy" 
  $("#communications").on "cocoon:after-insert", ->
    $(".ui-datepicker").datepicker
      dateFormat: "mm/dd/yy"