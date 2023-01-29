window.addEventListener("load", function ()
{
    document.getElementById("registerbtn").addEventListener("click", iscriviUtente);

});

function Utente(email,password,nome,cognome,google_id,genere)
{
    this.email = email;
    this.password =password;
    this.nome = nome;
    this.cognome = cognome;
    this.google_id=google_id;
    this.genere=genere;
}


function iscriviUtente() {
    var email = document.querySelector("#email").value;
    var password = document.querySelector("#password").value;
    var nome = document.querySelector("#nome").value;
    var cognome = document.querySelector("#cognome").value;
    var confirm_password = document.querySelector("#confirm_password").value;



    if(nome=="" || cognome=="" || email=="" || password=="" || confirm_password=="") {
        document.getElementById("registerbtn").className="btn btn-secondary btn-lg";
        error("Attenzione! Sono presenti campi vuoti");
    }
    else if(nome==" " || cognome==" " || email==" ") {
        document.getElementById("registerbtn").className="btn btn-secondary btn-lg";
        error("Attenzione! Sono presenti campi vuoti");
    }
    else if(!validaEmail(email)){
        document.getElementById("registerbtn").className="btn btn-secondary btn-lg";
        error("Attenzione! Email non valida");
    }

    else if(password!=confirm_password){
        document.getElementById("registerbtn").className="btn btn-secondary btn-lg";
        error("Attenzione! Le password non coincidono");
    }
    else if(password.length<6){
        document.getElementById("registerbtn").className="btn btn-secondary btn-lg";
        error("Attenzione! La password deve essere almeno di 6 caratteri");
    }
    else{
        document.getElementById("registerbtn").className="btn btn-primary btn-lg";
        var utente = new Utente(email, password, nome, cognome, "0");
        $.ajax(
            {
                url: "/doRegister",
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
                    $(message).text("Registrazione effettuata.")
                    messageContainer.append(icon, message);

                    var login_button = document.createElement("div");
                    login_button.className = "btn btn-primary btn-sm float-right";
                    login_button.textContent = "Login";
                    $(login_button).attr("role", "button")
                    messageContainer.append(icon, login_button);
                    $(login_button).on('click', login_button, function () {
                        window.location.href = "/login";
                    });
                    $("#registration_form").before(messageContainer);

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

function googleReg(response)
{
    const responsePayLoad=decodeJWTResponse(response.credential);
    var emaill = responsePayLoad.email;
    var nome=responsePayLoad.given_name;
    var cognome=responsePayLoad.family_name;
    var id=responsePayLoad.sub;
    var utente = new Utente(emaill,"", nome,cognome,id);
    $.ajax(
        {
            type: "POST",
            url: "/checkExistsId",
            data: id,
            contentType:"application/json",
            error:function ()
            {
                $.ajax(
                    {
                        type: "POST",
                        url:"/registerGoogleUser",
                        contentType:"application/json",
                        data: JSON.stringify(utente)
                    })
            }
        });

}
function decodeJWTResponse(data)
{
    var tokens=data.split(".");
    return JSON.parse(atob(tokens[1]));
}

function validaEmail(email) {
    var regexp = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    return regexp.test(email);
}
