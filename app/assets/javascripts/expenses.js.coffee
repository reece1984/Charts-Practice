# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  Morris.Line
    element: 'expenses_chart'
    data: $('#expenses_chart').data('expenses')
    xkey: 'created_at'
    ykeys: ['amount']
    labels: ['Amount']


  Morris.Bar
    element: 'expenses_chart1'
    data: $('#expenses_chart1').data('expenses')
    xkey: 'created_at'
    ykeys: ['amount']
    labels: ['Amount']
