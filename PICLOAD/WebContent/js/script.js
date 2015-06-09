$(function(){
    $('#nav li').click(function() {
        $(this).addClass('current').siblings().removeClass('current');
    });
    $('.up').click(function() {
       // if ($(this).hasClass('fa-thumbs-up')) {
        	//$(this).removeClass('fa-thumbs-up').addClass('fa-thumbs-o-up');
            //x = parseInt($(this).next().html()) - 1;
            //$(this).next().html(x);
        //} else {
            //$(this).removeClass('fa-thumbs-o-up').addClass('fa-thumbs-up');
            x = parseInt($(this).next().html()) + 1;
            $(this).next().html(x);       // }
            id = $(this).attr("id");
           // alert(id);
            /*var f = document.createElement("form");
            document.body.appendChild(f);
            var i = document.createElement("input");
            i.type = "hidden";
            f.appendChild(i);
            i.value = x.toString();
            i.name = "favor";
            f.action = "/PIC/servlets/IncreaFavor";
            f.submit();*/
            
            $.ajax({                                                  //调用jquery的ajax方法       
                type: "POST",                                      //设置ajax方法提交数据的形式       
                url: "/PIC/servlets/IncreaFavor",                                       //把数据提交到ok.php       
                data: "favor="+x.toString()+"&id="+id, //输入框writer中的值作为提交的数据       
               // success: function(msg){                  //提交成功后的回调，msg变量是ok.php输出的内容。       
                  //alert("数据提交成功");                      //如果有必要，可以把msg变量的值显示到某个DIV元素中       
                //}       
              }); 
    });
    $('.right').click(function() {
		x = parseInt($('.img-roll').css('left'));
        if (x == -800) {
            x = 0;
        } else {
            x = x -400;
        }
        $('.img-roll').css('left', x + 'px');
    });
    $('.left').click(function() {
		x = parseInt($('.img-roll').css('left'));
        if (x == 0) {
            x = -800;
        } else {
            x = x + 400;
        }
        $('.img-roll').css('left', x + 'px');
    });
});