# _framework/scripting/nav.coffee
# Control the slide-down behavior of the nav drawer

################################################################################
# Initialization
$ ->

	$('header .nav-icon-wrap, header .nav-clickout').on 'click', (e) ->
		$('header').toggleClass('nav-open')
