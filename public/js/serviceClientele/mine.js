var base_url = "http://localhost:5000";
$(document).ready(function () {
    $(".clk").on("click", function (e) {
        var curr = $(this);
        var check = curr.children().children().children().text();
        switch (check) {
            case "Livrer":
                $.post(base_url+"/livraisons/byStatus", {status: "livre"}, function (data) {
                    $(".addTab").empty().append(data);
                });
                break;
            case "En Attente":
                $.post(base_url+"/livraisons/byStatus", {status: "en_attente"}, function (data) {
                    $(".addTab").empty().append(data);
                });
                break;
            case "Reporter":
                $.post(base_url+"/livraisons/byStatus", {status: "reporte"}, function (data) {
                    $(".addTab").empty().append(data);
                });
                break;
            case "Annuler":
                $.post(base_url+"/livraisons/byStatus", {status: "annule"}, function (data) {
                    $(".addTab").empty().append(data);
                });
                break;
            default:
                break;
        }
    });
    $("#status").on("change", function () {
        var chk = $(this);
        if(chk.val() == "livre") {
            $('#date_livraison_reporte').attr("disabled", "disabled");
            $("#motif").attr("disabled", "disabled");
        } else if(chk.val() == "annule") {
            $('#date_livraison_reporte').attr("disabled", "disabled");
            $("#motif").removeAttr("disabled");
        } else {
            $('#date_livraison_reporte').removeAttr("disabled");
            $("#motif").removeAttr("disabled");
        }
    });
});