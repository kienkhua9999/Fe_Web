const db = require("../models");
const Productimage = db.productimage;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.imageall = (req, res) => {
    Productimage.findAll().then((productimages) => {
    res.json(productimages);
  });
};


// post

exports.addimage = (req, res) => {

  Productimage.create({
    Imageurl: req.body.Imageurl,
    productId: req.body.productId
   
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updateimage = async (req, res) => {

  await Productimage.update(
    { 
        Imageurl: req.body.Imageurl,
        productId: req.body.productId
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
exports.deleteimage = async (req, res) => {
  await Productimage.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};
