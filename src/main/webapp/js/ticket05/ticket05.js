var card = document.getElementById('card');
var lis = card.getElementsByTagName('li');
var prev = 0;
var message = document.getElementById('message');
var lis1 = message.getElementsByTagName('li');
for (var i = 0; i < lis.length; i++) {
	lis[i].index = i;
	lis[i].onclick = function() {
		lis1[prev].className = '';
		lis[prev].className = '';
		this.className = 'xinyong';
		lis1[this.index].className = 'show';
		prev = this.index;
	}
};