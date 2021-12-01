const discussionModel = require("../models/discussionModel");

const add_discussion = (req, res) => {
    const {
        code,
        receiver,
        content
    } = req.body;

    let code_insert = parseInt(code);
    discussionModel.addDiscussion({
        sender: req.session.matricule,
        receiver: receiver,
        content: content,
        send_at: new Date(),
        send_time_at: new Date(),
        code: code_insert
    }, function (err, discussion) {
        if(err) throw err;
        console.log("discussion added!");
    });
}

const getDiscussionBetween = (req, res) => {
    const {
        client
    } = req.params;
    let oplg = req.session.matricule;
    discussionModel.getDiscussion(oplg, client, function (err, discussion) {
        if(err) throw err;
        const [rows] = discussion
        res.render("tache/contentDiscussion", {
            contents: rows
        });
    });
}

module.exports = {
    add_discussion,
    getDiscussionBetween
}