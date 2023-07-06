// ajax code
function delete_ajax(id, db){
    let request = new XMLHttpRequest();
    request.open("POST", 'inc/ajax/delete.php')
    request.send(JSON.stringify({
        'id': id,
        'db':db
    }));

    document.getElementById(String(id)).remove()
}