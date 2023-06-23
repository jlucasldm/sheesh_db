const form = document.querySelector("form");
form.addEventListener("submit", (e) => {
  // TODO: front end validation
  e.preventDefault(); //stop form from submitting

  let formData = new FormData(form);
  var request = new XMLHttpRequest();

  request.open("POST", form.getAttribute("action"));
  request.send(formData);
});
