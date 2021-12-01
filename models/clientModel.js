const connection = require("../config/db")

const findWithLimit = (count, limit, cb) => {
    connection.query(
        "SELECT * FROM client LIMIT ?,?",
        [count, limit],
        function (err, res) {
            if(err) throw err;
            cb(null, res);
        }
    );
}

const countAllClient = () => {
    return new Promise((resolve, reject) => {
        connection.query(
            "SELECT count(*) as test FROM client",
            function (err, res) {
                if(err) return reject(err);
                return resolve(res[0].test);
            }
        )
    });
    
}

const findClientByLinkFb = (linkfb, cb) => {
    connection.query(
        "SELECT * FROM client WHERE lienfb_c LIKE ?",
        [linkfb],
        (err, res, rows) => {
            if(err) throw err;
            cb(null, res);
        }
    )
}

const addClient = (client, cb) => {
    connection.query(
        "INSERT INTO client SET ?",
        client, 
        function (err, results, rows) {
            if(err) throw err;
            cb(null, [results, rows]);
        }
    )
}

module.exports = {
    findWithLimit,
    addClient,
    countAllClient,
    findClientByLinkFb
}