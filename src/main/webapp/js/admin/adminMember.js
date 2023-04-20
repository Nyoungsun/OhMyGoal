$(function(){
  $.ajax({
    type: 'post',
    url: '/OhMyGoal/admin/getMemberList',
    data: 'pg=' + $('#pg').val(),
    dataType: 'json',
    success: function(data){
      console.log(JSON.stringify(data));
      $.each(data.list, function(index, items){
        var logtime = new Date(items.logtime).toLocaleString();
        $('<tr/>').append($('<td>', {
          align: 'center',
          text: items.seq
        })).append($('<td>', {
          align: 'center',
          text: items.name
        })).append($('<td>', {
          align: 'center',
          text: items.id
        })).append($('<td>', {
          align: 'center',
          text: items.pwd
        })).append($('<td>', {
          align: 'center',
          text: items.grade
        })).append($('<td>', {
          align: 'center',
          text: items.boards
        })).append($('<td>', {
          align: 'center',
          text: logtime
        })).appendTo($('#userListTable'));
      });
      $('#memberPagingDiv').html(data.memberPaging.pagingHTML);
    },
    error: function(err){
      console.log(err.responseText);
    }
  });
});
