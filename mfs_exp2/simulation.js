
// manual button data 
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

// data button

// Get the modal
var modal1 = document.getElementById('myModal-1');

// Get the button that opens the modal
var btn1 = document.getElementById("myBtn-1");

// Get the <span> element that closes the modal
var span1 = document.getElementsByClassName("close-1")[0];

// When the user clicks the button, open the modal 
btn1.onclick = function() {
    modal1.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span1.onclick = function() {
    modal1.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal1.style.display = "none";
    }
}

var id;
function changeImage(id) {
	console.log(this.src);
	if(id == "images/red_button.png") {
		// $("#graph1").attr("src","images/graph_1.png");
		document.getElementById("graph1").setAttribute("src", "images/graph_1.png");
		// document.getElementById("red_button").style.borderColor="blue";
	}
	else if(id == "images/green_button.png") {
	    // $("#graph1").attr("src","images/graph_2.png");
		document.getElementById("graph1").setAttribute("src", "images/graph_2.png");
	}

}

function moveFlask() {
	document.getElementById("flask").style.visibility = "visible";
	alert("hello");
}

// $("#flask").click(function(){
// 	document.getElementById("flask").style.visibility = "visible";
// 	alert("hello");
//     $("#flask").animate({top: "30px"});
// }); 