//= require jquery
//= require jquery_ujs
//= require_tree .
//= require select2

$(document).ready(function() {

  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
    increaseArea: '20%'
  });

  $(document).on("click","#ok_link", function() {
      $('#todo_form').submit();
  });

  $('.addTodoIcon').click(function() {
      if($('#mask').length){
  	  	$('.content').removeAttr('id');
  	  }else{
  	  	$('.content').attr('id', 'mask');
  	  }
  	  $('.todo_div').toggle('slide');
  });

  $(document).on("click","#cancel_link", function() {
      $('.todo_div').toggle('slide');
  });

  $("select").select2({minimumResultsForSearch: Infinity, width: '90%'});

  $('input').on('ifClicked', function(event){
  	$(event.target).closest('li').toggleClass('tl')
  	$(event.target).closest('form').submit();
  });
});
