function drawCircle(posx,posy,size,color){
	var canvas = document.getElementById("micanvas");
	var context = canvas.getContext('2d');
	context.beginPath();
	context.fillStyle = color;
	context.strokeStyle="black";
	context.arc(posx, posy, size, 0, 2 * Math.PI, false);
	context.fill();
	context.stroke();

}

function MakeRandom(color){
	posx = Math.floor(Math.random() * 600);
	posy= Math.floor(Math.random() * 600);
	size=Math.floor(Math.random() * 20);
	if(posx>0||posy>0){
		drawCircle(posx,posy,size,color);
		}
}

function itsWork(){
	MakeRandom("red");
	MakeRandom("blue");
	MakeRandom("yellow");
	MakeRandom("lime");
	MakeRandom("pink");
	MakeRandom("violet");
	MakeRandom("skyblue");
	MakeRandom("white");
	MakeRandom("silver");
	MakeRandom("green");
	MakeRandom("navy");
}

window.setInterval("itsWork()",10);
