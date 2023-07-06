function pagination(page, totalPages,link){
  console.log(link)
  // selecting required element
  const element = document.querySelector(".pagination");
  // let totalPages = 6; to debug
  // let page = 4; to debug

  //calling function with passing parameters and adding inside element which is ul tag
  element.innerHTML = createPagination(totalPages, page);


  function createPagination(totalPages, page){
    let liTag = '';
    let active;
    let beforePage = page - 1;
    let afterPage = page + 1;
    if(page > 1){ //show the next button if the page value is greater than 1
      liTag += `<a class="btn prev" href='${link}?page=${page -1}'><i class="fas fa-angle-left"></i> Prev</a>`;
      
    }

    if(page > 2){ //if page value is less than 2 then add 1 after the previous button
      liTag += `<a class="first numb" onclick="createPagination(totalPages, 1)">1</a>`;
      
      if(page > 3){ //if page value is greater than 3 then add this (...) after the first li or page
        liTag += `<a class="dots">...</a>`;
        
      }
    }

    // how many pages or li show before the current li
    if (page == totalPages) {
      beforePage = beforePage - 2;
      
    } else if (page == totalPages - 1) {
      beforePage = beforePage - 1;
      
    }
    // how many pages or li show after the current li
    if (page == 1) {
      afterPage = afterPage + 2;
      
    } else if (page == 2) {
      afterPage  = afterPage + 1;
      
    }
    if(beforePage<1){
      beforePage=1
    }
    for (var plength = beforePage; plength <= afterPage; plength++) {
      if (plength > totalPages) { //if plength is greater than totalPage length then continue
        
        continue;
      }
      if (plength == 0) { //if plength is 0 than add +1 in plength value
        plength = plength + 1;
        
      }
      if(page == plength){ //if page is equal to plength than assign active string in the active variable
        active = "active";
      }else{ //else leave empty to the active variable
        active = "";
      }
      liTag += `<a class="numb ${active}" href='${link}?page=${plength}' onclick="createPagination(totalPages, ${plength})">${plength}</a>`;
    }

    if(page < totalPages - 1 && totalPages!=3 && totalPages!=4){ //if page value is less than totalPage value by -1 then show the last li or page
      if(page < totalPages - 2){ //if page value is less than totalPage value by -2 then add this (...) before the last li or page
        liTag += `<a class="dots">...</a>`;
      }
      liTag += `<a class="last numb" onclick="createPagination(totalPages, ${totalPages})">${totalPages}</a>`;
    }

    if (page < totalPages) { //show the next button if the page value is less than totalPage(20)
      liTag += `<a class="btn next" href='${link}?page=${page + 1}'>Next <i class="fas fa-angle-right"></i></a>`;
    }
    element.innerHTML = liTag; //add li tag inside ul tag
    return liTag; //reurn the li tag
  }
}
