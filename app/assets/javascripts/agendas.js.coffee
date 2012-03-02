# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

	ownSortable = ->
		user_id = $("#current_user_id").val()
		current_user_id = $("#user_id").val()

		if (user_id == current_user_id)
			$("#agendas").sortable
				axis: 'y'
				update: ->
					$.post($(this).data('update-url'), $(this).sortable('serialize'))
				

	$('.agenda a').pjax('[data-pjax-container]')
	
	
