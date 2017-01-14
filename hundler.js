$(document).ready(function(){

    
    $.ajax({
            url:'http://kakorin.korolev.life/data.json',
            type:'GET',
            success: function(data) {
                console.log(data);
                
                for(i=0;i<data["arr"].length;++i){
                    console.log(data["arr"][i]);
                    var opt = $(document.createElement('option'));
                    opt.append(data["arr"][i]);    
                    $('#subject').append(opt);
                }
            },
            error: function(res,res2,res3){
                console.log(res3);
            },
            dataType: 'json'
        });

	$('#testForm').submit(function(event){
		var formData = {
            "subject":$("#subject").val(),
            "name":$("#name").val(),
            "last_name":$("#last_name").val(),
            "phoneNumber":$("#phoneNumber").val()
        };
        alert("На сервер отправлены ваши данные в json: "+
        	JSON.stringify(formData));
        $.ajax({
            url:'server.js',
            type:'POST',
            data:'jsonData=' + JSON.stringify(formData),
            success: function(res) {
                alert(res);
            }
        });
	});

});