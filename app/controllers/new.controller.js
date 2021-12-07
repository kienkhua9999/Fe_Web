const db = require("../models");
const New = db.new;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.newall = (req, res) => {
  New.findAll().then((news) => {
    res.json(news);
  });
};

exports.newbyid = (req, res) => {
  New.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((news) => {
    res.json(news);
  });
}
// post

exports.addnew = (req, res) => {

  New.create({
    title: req.body.title,
    content: req.body.content,
    datepost: req.body.datepost,
    newimg:req.body.newimg
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updatenew = async (req, res) => {
  await New.update(
    { 
        title: req.body.title,
        content: req.body.content,
        datepost: req.body.datepost,
        newimg:req.body.newimg 
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
exports.deletenew = async (req, res) => {
  await New.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};
