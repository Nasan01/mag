const connection = require("../config/db");

const addDiscussion = (discussion, cb) => {
    connection.query(
        "INSERT INTO discussion SET ?",
        discussion,
        function (err, results, rows) {
            if(err) throw err;
            cb(null, [results, rows]);
        }
    );
}

const getDiscussion = (oplg, client, cb) => {
    connection.query(
        "SELECT * FROM discussion WHERE sender = ? AND receiver = ?",
        [oplg, client],
        function (err, results, rows) {
            if(err) throw err;
            cb(null, [results, rows]);
        }
    )
}

module.exports = {
    addDiscussion,
    getDiscussion
}