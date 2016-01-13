# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.timer').stopwatch().click ->
    $(this).stopwatch 'toggle'
    return

  $('.timer-btn-start').click ->
    $this = $(this)
    $this.prop( "disabled", true)
    taskId = $this.data('task')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch().stopwatch('start')
  $('.timer-btn-stop').click ->
    $this = $(this)
    taskId = $this.data('task')
    $('.timer-btn-start[data-task="'+taskId+'"]').parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch('stop')
    $('.timer-btn-start[data-task="'+taskId+'"]').parents('tr').find('.timer-btn-start[data-task="'+taskId+'"]').prop( "disabled", false)
  $('.timer-btn-reset').click ->
    $this = $(this)
    taskId = $this.data('task')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch('reset').stopwatch({startTime: 10000000})
#  $('#demo1').stopwatch().stopwatch 'start'
#  $('#demo2').stopwatch().click ->
#    $(this).stopwatch 'toggle'
#    return
#  $('#demo3').stopwatch().click(->
#    $(this).stopwatch 'reset'
#    return
#  ).stopwatch 'start'
#  $('#demo4').stopwatch(startTime: 10000000).stopwatch 'start'
#  $('#demo5').stopwatch(updateInterval: 2000).stopwatch 'start'
#  $('#demo6').stopwatch(format: '{Minutes} and {s.}').stopwatch 'start'