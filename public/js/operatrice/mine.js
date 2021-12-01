var base_url = "http://localhost:5000";
$(document).ready(function () {
    $(".checkClientModal").on('click', (e) => {
        e.preventDefault();
        $("#checkClientModal").modal();
    });
    /*$(".verifier").on('click', function (e) {
        e.preventDefault();
        let lienfb_c = $("#linkfb").val();
        $.post(base_url + "/clients/check", {
            lienfb_c: lienfb_c
        }, function(data) {
            
        });
    })*/
    $(".client").on("click", function (e) {
        globalToSend = "client";
    });
    $(".oplg").on("click", function (e) {
        globalToSend = "oplg";
    });
});