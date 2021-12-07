const db = require("../models");
const Product = db.product;
const Category = db.category;
const Producer = db.producer;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.productall = (req, res) => {
  Product.findAll().then((products) => {
    res.json(products);
  });
};

exports.productbyid = (req, res) => {
  Product.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((products) => {
    res.json(products);
  });
}
// post

exports.addproduct = async (req, res) => {

  await Product.create({
      productname:req.body.productname,
      description:req.body.description,
      parameter:req.body.parameter,
      guarantee:req.body.guarantee,
      datepost:req.body.datepost,
      price:req.body.price,
      quantity:req.body.quantity,
      saleoff:req.body.saleoff,
      imageurl:req.body.imageurl,
      status:req.body.status,
      categoryId:req.body.categoryId,
      producerId:req.body.producerId
    
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updateproduct = async (req, res) => {
  await Product.update(
    { 
      productname:req.body.productname,
      description:req.body.description,
      parameter:req.body.parameter,
      guarantee:req.body.guarantee,
      datepost:req.body.datepost,
      price:req.body.price,
      quantity:req.body.quantity,
      saleoff:req.body.saleoff,
      imageurl:req.body.imageurl,
      status:req.body.status,
      categoryId:req.body.categoryId,
      producerId:req.body.producerId  
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
exports.deleteproduct = async (req, res) => {
  await Product.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};
