$ ->
  # Toggle current page in navigation
  $(".list-group-item[href='#{window.location.pathname}']").addClass('active')