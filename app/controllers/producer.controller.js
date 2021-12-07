const db = require("../models");
const Producer = db.producer;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.producerall = (req, res) => {
  Producer.findAll().then((produceres) => {
    res.json(produceres);
  });
};

exports.producerbyid = (req, res) => {
  Producer.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((producers) => {
    res.json(producers);
  });
}

exports.addproducer = (req, res) => {
  Producer.create({
    producername: req.body.producername,
    address: req.body.address,
    producerimg: req.body.producerimg
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updateproducer = async (req, res) => {
  await Producer.update({ 
    producername: req.body.producername,
    address: req.body.address,
    producerimg: req.body.producerimg
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
exports.deleteproducer = async (req, res) => {
  await Producer.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};
