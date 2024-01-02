let resumeBtn = document.getElementById("resumeButton");
resumeBtn.addEventListener("click", showPrice);

function showPrice() {
    let communicationAlert = document.getElementById("payResume");
    let discountSelect = document.getElementById("ticket-category");
    let discount = discountSelect.value;
    let amountInput = document.getElementById("ticket-amount");
    let amount = amountInput.value;
    if (((amount % 1) != 0) || (amount < 1)) {
        amount=NaN;
    }
    let realPrice = amount*(200 - (200*discount));
    if (Number.isNaN(realPrice)) {
    communicationAlert.textContent = `Total a Pagar: $`;
    } else {
    communicationAlert.textContent = `Total a Pagar: $${realPrice}`;
    }
}
function validateForm() {
  var x = document.forms["myForm"]["fname"].value;
  if (x == "") {
    alert("No puede estar vacio");
    return false;
  }
}

function update(){
    document.getElementById("update").submit();
}