let transitionEffect=false;

function expandCard(number){
    var card = document.getElementById("card"+number);
    document.getElementById("card"+number+"-text").classList.remove("hide");
    card.classList.remove("col-sm-8" ,"col-md");
    if (transitionEffect == false){
        document.getElementById("card"+number+"-image").classList.remove("semiCircle");
    } else {
        document.getElementById("card"+number+"-image").classList.remove("circleTransition");
    }
    document.getElementById("card"+number+"-image").classList.add("circle");
    document.getElementById("card"+number+"-image").classList.remove("imagen");
    document.getElementById("card"+number+"-image").classList.add("half-image");
    card.setAttribute("value","1");
}

function contractCard(number){
    var card = document.getElementById("card"+number);
    document.getElementById("card"+number+"-text").classList.add("hide");
    card.classList.add("col-sm-8" ,"col-md");
    if (transitionEffect == false){
        document.getElementById("card"+number+"-image").classList.add("semiCircle");
    } else {
        document.getElementById("card"+number+"-image").classList.add("circleTransition");
    }
    document.getElementById("card"+number+"-image").classList.remove("circle");
    document.getElementById("card"+number+"-image").classList.add("imagen");
    document.getElementById("card"+number+"-image").classList.remove("half-image");
    card.setAttribute("value","0");
}




function createListeners(number) {
    var card = document.getElementById("card"+number);
    card.addEventListener("click", () =>{
        if (card.getAttribute("value")=="0"){
            for (let i = 1; i <= 3; i++) {
                expandCard(i);
            } 
            transitionEffect=true;
        } else { for (let i = 1; i <= 3; i++) {
            contractCard(i);
            } 
        }
    });
};

for (let i = 1; i <= 3; i++) {
    createListeners(i);
}

function validateForm() {
  var x = document.forms["myForm"]["fname"].value;
  if (x === "") {
    alert("No puede estar vacio");
    return false;
  }
}