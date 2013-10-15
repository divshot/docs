#= require jquery

$ ->
  # Retina Images
  if window.devicePixelRatio is 2
    $('img[data-retina]').each -> $(this).attr 'src', $(this).data('retina')