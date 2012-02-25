# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	user_id = $("#current_user_id").val()
	current_user_id = $("#user_id").val()

	if (user_id == current_user_id)
		$("#agendas").sortable()
