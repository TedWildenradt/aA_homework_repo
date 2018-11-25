document.addEventListener("DOMContentLoaded", function(){

});

var canvas = document.getElementById('myCanvas'); 
var ctx = canvas.getContext('2d');

ctx.fillStyle = 'rgb(200,0,0)'; // sets the color to fill in the rectangle with
ctx.fillRect(10, 10, 500, 500);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50
ctx.beginPath();
ctx.arc(100, 75, 50, 0, 2 * Math.PI);

ctx.stroke();