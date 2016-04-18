# Sticky for navigation
waypoint = new Waypoint(
  element: document.getElementsByClassName('js--section-features')
  handler: (direction) ->
    if direction == 'down'
      $('nav').addClass 'sticky'
    else
      $('nav').removeClass 'sticky'
    return
  offset: '90%')

# Scroll on buttons
$('.js--btn-to-plans').click ->
  $('html, body').animate { scrollTop: $('.js--section-plans').offset().top }, 1000
  return

$('.js--btn-to-start').click ->
  $('html, body').animate { scrollTop: $('.js--section-features').offset().top }, 1000
  return
  
# Scrolling navigation
$ ->
  $('a[href*="#"]:not([href="#"])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top }, 1000
        return false
    return
  return
  
# Some Animation
waypoint = new Waypoint(
  element: document.getElementsByClassName('js--wp-features')
  handler: (direction) ->
    $('.js--wp-features').addClass 'animated bounceInDown'
    return
  offset: '50%')
  
waypoint = new Waypoint(
  element: document.getElementsByClassName('js--wp-phone')
  handler: (direction) ->
    $('.js--wp-phone').addClass 'animated bounceInLeft'
    return
  offset: '50%')
  
waypoint = new Waypoint(
  element: document.getElementsByClassName('js--wp-cities')
  handler: (direction) ->
    $('.js--wp-cities').addClass 'animated zoomInUp'
    return
  offset: '50%')
  
waypoint = new Waypoint(
  element: document.getElementsByClassName('js--wp-plans')
  handler: (direction) ->
    $('.js--wp-plans').addClass 'animated rotateIn'
    return
  offset: '50%')
  
# Mobile Navigation
$('.mobile-nav').click ->
  icon = $('.js--nav-icon i')
  nav = $('.js--ul-nav')
  
  nav.slideToggle 200
  
  if icon.hasClass('fa-bars')
    $('.mobile-nav').removeClass 'fa-bars'
    $('.mobile-nav').addClass 'fa-remove'
  else
    $('.mobile-nav').addClass 'fa-bars'
    $('.mobile-nav').removeClass 'fa-remove'
  return
