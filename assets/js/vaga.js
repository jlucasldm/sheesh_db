// ajax code
const urlSearchParams = new URLSearchParams(window.location.search);
const params = Object.fromEntries(urlSearchParams.entries());
if (typeof params["id"] !== "undefined") {
  let request = new XMLHttpRequest();
  request.open("POST", "inc/ajax/vaga.php" + "?id=" + params["id"]);
  request.send();
  request.onreadystatechange = () => {
    if (request.readyState == XMLHttpRequest.DONE) {
      obj = request.responseText;

      obj = JSON.parse(obj);
      console.log(obj);
      vaga(obj[0]);
    }
  };
} else {
  vaga({
    title: "error 404 - page not found: INVALID ID",
    text: "",
    img: "",
    author: "",
    date: "",
  });
}

// this is what gonna be added
function vaga(obj) {
  const container = document.getElementById("vaga");
  console.log(obj);
  previews_return = `
  <div class="container">
    <div class='h1'>
      ${obj["title"]}
    </div>
    <div class='h2'>
      Contratante: ${obj["nomeFantasia"]}
    </div>
    <div class='fs-3'>
      Carga horária: ${obj["carga_horaria"]} horas
    </div>
    <div class='fs-3'>
      Remuneração: R$ ${obj["remuneracao"]},00
    </div>
    <div class='fs-3'>
      Beneficios: ${obj["beneficios"]}
    </div>
    <div class='fs-3'>
      Requisitos: ${obj["requisitos"]}
    </div>
    <div class='fs-3'>
      Prazo: ${obj["prazo"]}
    </div>
    <div class='fs-3'>
      Final: ${obj["final"] == 1 ? 'Sim' : 'Não'}
    </div>
    <div class='fs-3'>
      Descrição: ${obj["text"]}
    </div>
    <div class="text-center m-5"> 
      <a href="index.php" class="btn btn-primary btn-lg">Voltar</a>
    </div>
  </div>`;
  console.log(previews_return);
  container.innerHTML = previews_return;
  return previews_return;
}
