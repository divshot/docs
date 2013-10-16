#= require jquery

$ ->
  # Toggle current page in navigation
  $(".list-group-item[href='#{window.location.pathname}']").addClass('active')

  # Retina Images
  if window.devicePixelRatio is 2
    $('img[data-retina]').each -> $(this).attr 'src', $(this).data('retina')