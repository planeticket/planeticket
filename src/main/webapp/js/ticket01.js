var timer1,timer2;
var d=1;
var firstImg=$('.consimg').children().eq(0).clone(true);
var lastImg=$('.consimg').children().eq($('.consimg').children().length-1).clone(true);
$('.consimg').append(firstImg);
lastImg.insertBefore($('.consimg').children().eq(0));
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
		if (minstep>=maxstep) {
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


$('#right').click(function (){
	clearInterval(timer1);
	d++;
	if (d>=$('.consimg').children().length) {
		d=2;
		$('.box').scrollLeft($('.consimg').children().eq(0).width());
	};
	move();
	autoMove();
});

$('#left').click(function (){
	clearInterval(timer1);
	d--;
	if (d<0) {
		d=$('.consimg').children().length-3;
		$('.box').scrollLeft($('.consimg').children().eq(0).width()*(d+1));
	};
	move();
	autoMove();
});

