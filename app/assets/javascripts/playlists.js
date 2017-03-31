// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.querySelector('.list-group').addEventListener('click', function(e){
    document.querySelectorAll('.list-group .list-group-item .glyphicon').forEach(function(element){
        if(e.target === element){
            console.log("click")
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    response = JSON.parse(xhttp.responseText)
                    console.log('test')
                }
            };
            xhttp.open('PUT', '/tracks/' + element.parentElement.id, true);
            xhttp.setRequestHeader('X-CSRF-Token', document.querySelector('meta[name="csrf-token"]').getAttribute('content'))
            xhttp.send();
        }
    })
})



