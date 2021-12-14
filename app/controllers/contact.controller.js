const db = require("../models");
const Contact = db.contact;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.contactall = (req, res) => {
  Contact.findAll().then((contacts) => {
    res.json(contacts);
  });
};

exports.contactbyid = (req, res) => {
  Contact.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((contacts) => {
    res.json(contacts);
  });
}



// post

exports.addcontact = (req, res) => {

  Contact.create({
    contactdate: req.body.contactdate,
    content: req.body.content,
    userId: req.body.userId
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updatecontact = async (req, res) => {
  await Contact.update(
    { 
       contactdate: req.body.contactdate,
        content: req.body.content,
        userId: req.body.userId
    },
    {
      where: {
        id: req.params.id,
      },
    })
    .then(() => {
      res.send({ message: "update successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

//delete
exports.deletecontact = async (req, res) => {
  await Contact.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};


// view 
exports.contact_list = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      client.query(`SELECT contacts.*,users."id" as userid,users."username",users."email",users."address",users."phone" 
                   FROM contacts inner join users on contacts."userId" = users."id" ORDER BY id ASC`, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }else{
          // console.log(result.rows[0]);
          // res.json(result.rows);
          res.render("./contact.ejs", { contact_list: result });
          }
      });
  });
  
};