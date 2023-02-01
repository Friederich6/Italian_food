window.addEventListener("load", function ()
{
    document.getElementById("updateProfilo").addEventListener("click", modificaProfilo);
});

function modificaProfilo(){
    var email = document.querySelector("#account-email").value;
    var password = document.querySelector("#account-pass").value;
    var nome = document.querySelector("#account-fn").value;
    var cognome = document.querySelector("#account-ln").value;
    var confirm_password = document.querySelector("#account-confirm-pass").value;

    if(nome=="" || cognome=="" || email=="" || password=="" || confirm_password=="") {
        alert("Attenzione! Sono presenti campi vuoti");
    }
    else if(nome==" " || cognome==" " || email==" ") {
        alert("Attenzione! Sono presenti campi vuoti");
    }
    else if(!validaEmail(email)){
        alert("Attenzione! Email non valida");
    }

    else if(password!=confirm_password){
        alert("Attenzione! Le password non coincidono");
    }
    else if(password.length<6){
        alert("Attenzione! La password deve essere almeno di 6 caratteri");
    }
    else{

        var utente = new Utente(email, password, nome, cognome, "0");
        $.ajax(
            {
                url: "/doUpdate",
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify(utente),
                success: function () {
                    var messageContainer = document.createElement("div");
                    messageContainer.id = "message_container";
                    messageContainer.className = "alert alert-primary d-flex align-items-center mb-3";
                    $(messageContainer).attr("role", "alert");

                    var icon = document.createElement("i");
                    icon.className = "bi bi-info-circle-fill me-2";
                    $(icon).attr("role", "img");

                    var message = document.createElement("div");
                    message.id = "message";
                    $(message).text("Modifica effettuata.")
                    messageContainer.append(icon, message);

                    $("#update_form").before(messageContainer);

                    setTimeout(function () {
                        $("#message_container").fadeOut();
                    }, 2000);
                    setTimeout(function () {
                        $("#message_container").remove();
                    }, 2300);
                },
                error: function (){
                    var messageContainer = document.createElement("div");
                    messageContainer.id = "message_container";
                    messageContainer.className = "alert alert-danger d-flex align-items-center mb-3";
                    $(messageContainer).attr("role", "alert");

                    var icon = document.createElement("i");
                    icon.className = "bi bi-info-circle-fill me-2";
                    $(icon).attr("role", "img");

                    var message = document.createElement("div");
                    message.id = "message";
                    $(message).text("utente già registrato");
                    messageContainer.append(icon, message);
                    $("#registration_form").before(messageContainer);

                    setTimeout(function () {
                        $("#message_container").fadeOut();
                    }, 2000);
                    setTimeout(function () {
                        $("#message_container").remove();
                    }, 2300);

                },
            });
    }
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
    $("#registration_form").before(messageContainer);

    setTimeout(function () {
        $("#message_container").fadeOut();
    }, 2000);
    setTimeout(function () {
        $("#message_container").remove();
    }, 2300);

}


function validaEmail(email) {
    var regexp = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    return regexp.test(email);
}
