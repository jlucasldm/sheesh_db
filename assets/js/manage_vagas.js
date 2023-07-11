var request = new XMLHttpRequest();

const urlSearchParams = new URLSearchParams(window.location.search);
const params = Object.fromEntries(urlSearchParams.entries());

request.open("POST", "inc/ajax/manage.php");
// turn this in a for each later to add all queries
if (typeof params["page"] == "undefined") {
  // if page isn't selected
  request.send(
    JSON.stringify({
      page: 1,
      db: "sheesh_db",
    })
  );
} else {
  // page is selected
  request.send(
    JSON.stringify({
      page: params["page"],
      db: "sheesh_db",
    })
  );
}

request.onreadystatechange = () => {
  if (request.readyState == XMLHttpRequest.DONE) {
    data = request.responseText;
    data = JSON.parse(data);
    console.log(data);
    manage_vagas(data["results"]);
    pagination(data["page"], data["number_of_pages"], "manage_vagas.php");
  }
};

function manage_vagas(data) {
  const container = document.getElementById("manage_vagas");
  previews_return = "";
  data.forEach((obj) => {
    console.log(obj);
    previews_return += `
        <div class='vaga-block' id=${obj["id"]}>
            <div class='vaga-block__title'>${obj["title"]}</div>
            <div class='vaga-block__text'> ${obj["text"]}</div>
            <div class='vaga-block__metadata'>Requisitos: ${obj["requisitos"]}</div>
            <div class='vaga-block__metadata'>Prazo: ${obj["prazo"]} até ${obj["final"]}</div>
            <button class='delete-btn' onclick="delete_ajax(${obj["id"]}, 'vaga')">DELETAR</button>
        </div> `;
    container.innerHTML = previews_return;
    return previews_return;
  });
}
