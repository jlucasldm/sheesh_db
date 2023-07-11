var request = new XMLHttpRequest();

const urlSearchParams = new URLSearchParams(window.location.search);
const params = Object.fromEntries(urlSearchParams.entries());
if(params['page']>0){
  query = '?page='+params['page']
}else{
  query = '?page='+ 1
}
request.open("POST", 'inc/ajax/pagination.php'+query);
// turn this in a for each later to add all queries
request.send();

request.onreadystatechange = () =>{
  if (request.readyState == XMLHttpRequest.DONE) {
      data = request.responseText
      data = JSON.parse(data, 'index.php')
      preview(data['results'])
      pagination(data['page'], data['number_of_pages'], 'index.php')
      }
  }

function preview(data){
    const container = document.getElementById('previews')
    previews_return=``
    data.forEach(obj => {
      previews_return += `<div class="col-6 col-md-4 col-lg-3 card m-4">
      <div class="card-body">
        <h2 class="card-title">${obj['title']}</h2>
        <span class="card-subtitle">${obj['requisitos']}</span>
        <div class="row my-2">
          <div class="col card-text h4">R$${obj['remuneracao']},00</div>
          <div class="col card-text h4 text-end">${obj['carga_horaria']} horas</div>
        </div>
        <a href="vaga.php?id=${obj['id']}" class="btn btn-primary">Ver vaga</a>
      </div>
    </div>`;
    container.innerHTML = previews_return;
    return previews_return
})};