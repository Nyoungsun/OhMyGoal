$(function(){
  $.ajax({
    type: 'post',
    url: '/OhMyGoal/admin/getBoardList',
    data: {
    	pg: $('#pg').val(),
    	tag: $('#tag').val(),
    	word: $('#word').val()
    },
    dataType: 'json',
    success: function(data){
      //console.log(JSON.stringify(data));
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
          href: '/OhMyGoal/board/boardDel?seq='+items.seq,
          text: '삭제',
          class: 'delBtn',
          css: {'border': '1px solid #0d6efd', 'color': '#0d6efd', 'border-radius': '5px', 'font-size': '16px', 'padding': '6px 12px'}
        }))).appendTo($('#userListTable'));
      });
      $('#boardPagingDiv').html(data.boardPaging.pagingHTML);
    },
    error: function(err){
      console.log(err.responseText);
    }
  });
});