#= require jquery.fitvids

$ ->
  $(".guide-nav a[href='" + window.location.pathname + "']").parent().addClass('active')
  $(".video").fitVids()