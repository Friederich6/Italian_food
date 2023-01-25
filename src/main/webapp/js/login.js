window.addEventListener("load", function ()
{
    document.getElementById("login").addEventListener("click", accedi);
});

function accedi(){
    var email = document.querySelector("#email").value;
    var password = document.querySelector("#pass").value;
    if((email==="") || (password==="") || (email===" ") || (password===" "))
    {
        error("Attenzione! Compila tutti i campi");
        return;
    }
    $.ajax(
        {
            url:"/doLogin",
            error:error("Controlla che i dati siano corretti!")
        })
}

function error(s){
    var messageContainer = document.createElement("div");
    messageContainer.id = "message_container";
    messageContainer.className = "alert alert-danger d-flex align-items-center mb-3";
    $(messageContainer).attr("role", "alert");

    var icon = document.createElement("i");
    icon.className = "bi bi-info-circle-fill me-2";
    $(icon).attr("role", "img");

    var message = document.createElement("div");
    message.id = "message";
    $(message).text(s);
    messageContainer.append(icon, message);
    $("#login_form").before(messageContainer);

    setTimeout(function () {
        $("#message_container").fadeOut();
    }, 2000);
    setTimeout(function () {
        $("#message_container").remove();
    }, 2300);


}

