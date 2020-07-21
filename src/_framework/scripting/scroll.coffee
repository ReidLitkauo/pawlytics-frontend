# _framework/scripting/scroll.coffee
# Handle scrolling logic

################################################################################
# Initialization
$ ->

	window.addEventListener 'scroll', debounce(scroll_update), {passive:true}
	scroll_update()

################################################################################
# scroll_update
# Update the document data attribute with the window's scroll position,
# allowing the use of CSS selectors like html[data-top='true']
# This function is debounced above

window.scroll_update = ->
	document.documentElement.dataset.top = window.scrollY < 6
