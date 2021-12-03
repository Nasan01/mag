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
    $(".envoyer").on("click", function (e) {
        e.preventDefault();
        let code = $("#code option:selected").val();
        let receiver = $("#receiver").val();
        let content = $("#content").val();
        $.post(base_url+"/discussions/add", {
            code: code,
            receiver: receiver,
            content: content
        }, function (status) {
            
        });
        $.get(base_url+"/discussions/"+receiver, function (data) {
            $(".discussion").empty().append(data);
        });
    });
    $(".addProduit").on("click", function (e) {
        e.preventDefault();
        let com_livr = $("#com_livr").val();
        let code_produit = $("#code_produit").val();
        let quantite = $("#quantite").val();
        $.post(base_url+"/commandes/addProduitCommande", {
            com_livr: com_livr,
            code_produit: code_produit,
            quantite, quantite
        }, function (data) {
            if(data){
                $("#modalConfirm").modal();
            }
        });
    });
    $('.okAdded').on('click', function(e){
        $("#code_produit").val("");
        $("#quantite").val("");
        $("#nom_prouit").val("");
    });

    $('.conclu').on("click", function (e) {
        e.preventDefault();
        let com_livr = $("#com_livr").val();
        let code_client = $('#code_client').val();
        let heure_debut = $("#heure_debut").val();
        let heure_fin = $("#heure_fin").val();
        let date_livraison = $("#date_livraison").val();
        let endroit = $("#endroit").val();
        let remarque = $("#remarque").val();
        $.post(base_url+"/commandes/addCommande", {
            com_livr: com_livr,
            code_client: code_client
        }, function (data) {
            if(data){
                console.log("commande added");
            }
        });
        $.post(base_url+"/livraisons/addLivraison", {
            com_livr:com_livr,
            heure_debut: heure_debut,
            heure_fin: heure_fin,
            date_livraison: date_livraison,
            endroit: endroit,
            remarque: remarque
        }, function (data) {
            if(data) console.log("livraison added");
        });
    });
});