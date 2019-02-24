var modal1 = document.getElementById('myModal1');
var modal2 = document.getElementById('myModal2');
var modal3 = document.getElementById('myModal3');
var modal4 = document.getElementById('myModal4');
var btn1 = document.getElementById("contact-trigger");
var btn2 = document.getElementById("passchange-trigger");
var btn3 = document.getElementById("accountd-trigger");
var btn4 = document.getElementById("resetr-trigger");
var span1 = document.getElementsByClassName("close1")[0];
var span2 = document.getElementsByClassName("close2")[0];
var span3 = document.getElementsByClassName("close3")[0];
var span4 = document.getElementsByClassName("close4")[0];

btn1.onclick = function() {
  modal1.style.display = "block";
}
btn2.onclick = function() {
    modal2.style.display = "block";
  }
btn3.onclick = function() {
    modal3.style.display = "block";
  }
btn4.onclick = function() {
    modal4.style.display = "block";
  }
span1.onclick = function() {
  modal1.style.display = "none";
}
span2.onclick = function() {
    modal2.style.display = "none";
  }
span3.onclick = function() {
    modal3.style.display = "none";
  }
span4.onclick = function() {
    modal4.style.display = "none";
  }

