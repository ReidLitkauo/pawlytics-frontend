# _framework/scripting/junk.coffee
# My junk drawer

################################################################################
# Miscellaneous initialization

$ ->

	true

################################################################################
# Debouncing
# Call with a function you wish to have debounced
# https://css-tricks.com/styling-based-on-scroll-position/

window.debounce = (fn) ->

	# The requestAnimationFrame reference, for potential future cancellation
	if (!frame)
		frame = null

	# An instance of this anonymous function is returned
	# The above frame var is stored in this fn
	# so calling it again will clear the animation frame call and reset it
	(params...) ->

		# Cancel the earlier frame if it's been set up
		if frame
			cancelAnimationFrame frame

		# Queue the fn call for the next frame, call it with provided args
		frame = requestAnimationFrame () ->
			fn params...
