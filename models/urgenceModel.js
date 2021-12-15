const connection = require('../config/db');

const findUrgenceByStatus = (status, cb) => {
    connection.query(
        "SELECT * FROM urgence WHERE status = ?",
        [status],
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const updateUrgence = (traite, traite_at, traite_time_at, status, id_urgence, cb) => {
    connection.query(
        "UPDATE urgence SET traiter_urgence = ?, traiter_at = ?, traite_time_at = ?, status = ? WHERE id_urgence = ?", 
        [traite, traite_at, traite_time_at, status, id_urgence],
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const createUrgence = (urgence, cb) => {
    connection.query(
        "INSERT INTO urgence SET ?",
        urgence,
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

module.exports = {
    findUrgenceByStatus,
    createUrgence,
    updateUrgence
}