$(function(){
  $.ajax({
    type: 'post',
    url: '/OhMyGoal/admin/getBoardList',
    data: 'pg=' + $('#pg').val(),
    dataType: 'json',
    success: function(data){
      console.log(JSON.stringify(data));
      $.each(data.boardList, function(index, items){
        var logtime = new Date(items.logtime).toLocaleString();
        $('<tr/>').append($('<td>', {
          align: 'center',
          text: items.seq
        })).append($('<td>', {
          align: 'center',
          text: items.id
        })).append($('<td>', {
          align: 'center',
          text: items.subject
        })).append($('<td>', {
          align: 'center',
          text: items.category
        })).append($('<td>', {
          align: 'center',  
          text: items.members
        })).append($('<td>', {
          align: 'center',
          text: logtime
        })).append($('<td>').append($('<a>', {
          class: 'btn btn-outline-primary',
          href: '#',
          role: 'button',
          text: '삭제'
        }))).appendTo($('#userListTable'));
      });
      $('#boardPagingDiv').html(data.boardPaging.pagingHTML);
    },
    error: function(err){
      console.log(err.responseText);
    }
  });
});