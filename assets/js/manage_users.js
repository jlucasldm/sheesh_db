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
      db: "users",
    })
  );
} else {
  // page is selected
  request.send(
    JSON.stringify({
      page: params["page"],
      db: "users",
    })
  );
}

request.onreadystatechange = () => {
  if (request.readyState == XMLHttpRequest.DONE) {
    data = request.responseText;
    data = JSON.parse(data);
    manage_users(data["results"]);
    pagination(data["page"], data["number_of_pages"], "manage_users.php");
  }
};

function manage_users(data) {
  const container = document.getElementById("manage_users");
  previews_return = "";
  data.forEach((obj) => {
    if (obj["id"] == "1") {
      // This is the administrator block who can't delete himself
      previews_return += `
          <div class='user-block' id=${obj["id"]}>
              <div class='user-block__user'>${obj["user"]}</div>
              <div>Email: ${obj["email"]}</div>
              <div>Level: ${obj["level"]}</div>
              <div>Telefone: ${obj["tel"]}</div>
              <button class='user-block__adm-btn'>ADMINISTRATOR</button>
          </div> 
          `;
    } else {
      // everyone else
      previews_return += `
        <div class='user-block' id=${obj["id"]}>
            <div class='user-block__user'>${obj["user"]}</div>
            <div>Email: ${obj["email"]}</div>
            <div>Level: ${obj["level"]}</div>
            <div>Telefone: ${obj["tel"]}</div>
            <button class='delete-btn' onclick="delete_ajax(${obj["id"]}, 'users')">DELETAR</button>
        </div> 
        `;
    }
    container.innerHTML = previews_return;
    return previews_return;
  });
}
