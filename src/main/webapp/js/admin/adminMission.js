$(function(){
	
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/admin/getBoardList',
		data: 'pg=' + $('#pg').val(),
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			console.log(data.list[0].name);
			
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td>' ,{
					align: 'center',
					text: items.id
				})).append($('<td>' ,{
					align: 'center',
					text: items.subject
				})).append($('<td>' ,{
					align: 'center',
					text: items.members
				})).appendTo($('#userListTable'));
			});//each
			
			//페이징 처리
			//$('#boardPagingDiv').html(data.boardPaging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
	});

});
