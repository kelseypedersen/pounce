// $(document).ready(function(){
// 	$(".signin").leanModal();
// });
window.onload = function(e){
	if (window.location.pathname === "/"){
		  var header = document.getElementsByClassName('header')[0]
	    var nav = header.getElementsByClassName("button")
	    Array.prototype.map.call(nav, function(e){e.style.color = "white"; return e })
	    header.style.backgroundColor = "transparent"
	    header.style.position = 'absolute';
	    header.style.color = 'white';
	}
}

// window.onbeforeunload = function(e){
// 	if (window.location.pathname === "/"){
// 		  var header = document.getElementsByClassName('header')[0]
// 	    var nav = header.getElementsByClassName("button")
// 	    Array.prototype.map.call(nav, function(e){e.style.color = "white"; return e })
// 	    header.style.backgroundColor = "transparent"
// 	    header.style.position = 'absolute';
// 	    header.style.color = 'white';
// 	}
// }