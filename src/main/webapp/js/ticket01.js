//计时器
var timer1,timer2;
//图片数量
var d=1;
//克隆第一张图片并返回     $('.consimg')下面的第一个子元素
var firstImg=$('.consimg').children().eq(0).clone(true);
////克隆最后一张图片
var lastImg=$('.consimg').children().eq($('.consimg').children().length-1).clone(true);
////在末尾插入第一张图片
$('.consimg').append(firstImg);
////在第一张图片之前插入最后一张图片
lastImg.insertBefore($('.consimg').children().eq(0));
//滚动条所在位置在第二条图片的位置
$('.box').scrollLeft($('.consimg').children().eq(0).width());


function move(){			
	var start=$('.box').scrollLeft();
	var end=d*$('.consimg').children().eq(0).width();
	var change=end-start;
	var minstep=0;
	var maxstep=20;
	var everystep=change/maxstep;
	clearInterval(timer2);
	timer2=setInterval(function(){
		minstep++;
		if(minstep>=maxstep){
			clearInterval(timer2);
			$('.box').scrollLeft(d*$('.consimg').children().eq(0).width());
			return;
		};
		start+=everystep;
		$('.box').scrollLeft(start);
	},20);
}
function autoMove(){
	clearInterval(timer1);
	timer1=setInterval(function(){
		d++;
		if (d>=$('.consimg').children().length) {
			d=2;
			$('.box').scrollLeft($('.consimg').children().eq(0).width());
		};
		move();
	},2000);
}
autoMove();



