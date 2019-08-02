//= require jquery
//= require jquery_ujs

$(document).ready(function() {

  $(document).on("click","#ok_link", function() {
      $('#todo_form').submit();
  });

  $('.addTodoIcon').click(function() {
  	  $('.todo_div').toggle('slide');
  });

  $(document).on("click","#cancel_link", function() {
      $('.todo_div').toggle('slide');
  });
});
