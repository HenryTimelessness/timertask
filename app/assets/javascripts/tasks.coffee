# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.timer-btn-start').click ->
    $this = $(this)
    $this.prop( "disabled", true)
    taskId = $this.data('task')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch().stopwatch('start')
  $('.timer-btn-stop').click ->
    $this = $(this)
    taskId = $this.data('task')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch('stop')
    $this.parents('tr').find('.timer-btn-start[data-task="'+taskId+'"]').prop( "disabled", false)
  $('.timer-btn-reset').click ->
    $this = $(this)
    taskId = $this.data('task')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').stopwatch('reset')
    $this.parents('tr').find('.timer[data-task="'+taskId+'"]').text('00:00:00')