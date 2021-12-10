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
  Product.findOne({
    where: {
      id: req.params.id,
    },
  }).then((products) => {
    res.json(products);
  });
};
// post

exports.addproduct = async (req, res) => {
  await Product.create({
    productname: req.body.productname,
    description: req.body.description,
    parameter: req.body.parameter,
    guarantee: req.body.guarantee,
    datepost: req.body.datepost,
    price: req.body.price,
    quantity: req.body.quantity,
    saleoff: req.body.saleoff,
    imageurl: req.body.imageurl,
    status: req.body.status,
    categoryId: req.body.categoryId,
    producerId: req.body.producerId,
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
      productname: req.body.productname,
      description: req.body.description,
      parameter: req.body.parameter,
      guarantee: req.body.guarantee,
      datepost: req.body.datepost,
      price: req.body.price,
      quantity: req.body.quantity,
      saleoff: req.body.saleoff,
      imageurl: req.body.imageurl,
      status: req.body.status,
      categoryId: req.body.categoryId,
      producerId: req.body.producerId,
    },
    {
      where: {
        id: req.params.id,
      },
    }
  )
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

exports.product_saleoff = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."saleoff">5`,
      function (err, result) {
        done();

        if (err) {
          res.end();
          return console.error("error running query", err);
        }
        res.json(result.rows);
      }
    );
  });
};

exports.product_phonehigh = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">10 and products."categoryId"<16 ORDER BY RANDOM() LIMIT 10`,
      function (err, result) {
        done();

        if (err) {
          res.end();
          return console.error("error running query", err);
        }
        res.json(result.rows);
      }
    );
  });
};

exports.product_laptophigh = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">15 and products."categoryId"<26 ORDER BY RANDOM() LIMIT 15`,
      function (err, result) {
        done();

        if (err) {
          res.end();
          return console.error("error running query", err);
        }
        res.json(result.rows);
      }
    );
  });
};

exports.product_dhthongminh = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=7`,
      function (err, result) {
        done();

        if (err) {
          res.end();
          return console.error("error running query", err);
        }
        res.json(result.rows);
      }
    );
  });
};

exports.product_dhthoitrang = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=8`,
      function (err, result) {
        done();

        if (err) {
          res.end();
          return console.error("error running query", err);
        }
        res.json(result.rows);
      }
    );
  });
};

// view

exports.product_list = async (req, res) => {
  await pool_db.connect(function (err, client, done) {
    if (err) {
        return console.error('error', err);
    }
    client.query(`SELECT products.*,categories."id" as cateid,categories."categoryname",categories."parentid",producers."id" as prodid,producers."producername",producers."address" 
                FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" ORDER BY id ASC`, function (err, result) {
        done();

        if (err) {
            res.end();
            return console.error('error running query', err);
        }else{
          // res.json(result.rows);
          res.render('./product',{product_list:result});
        }
      
    });
});
  // Product.findAll({
  //   include: {
  //     model: Category,
  //   },
  // }).then((products) => {

  //   res.render('./product',{product_list:products});
  // });
};

// post

exports.add_product = async (req, res) => {
  await Product.create({
    productname: req.body.productname,
    description: req.body.description,
    parameter: req.body.parameter,
    guarantee: req.body.guarantee,
    datepost: req.body.datepost,
    price: req.body.price,
    quantity: req.body.quantity,
    saleoff: req.body.saleoff,
    imageurl: req.body.imageurl,
    status: req.body.status,
    categoryId: req.body.categoryId,
    producerId: req.body.producerId
    
  })
    .then(() => {
      res.redirect("../product/list");
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.update_product = async (req, res) => {
  await Product.update(
    {
      productname: req.body.productname,
      description: req.body.description,
      parameter: req.body.parameter,
      guarantee: req.body.guarantee,
      datepost: req.body.datepost,
      price: req.body.price,
      quantity: req.body.quantity,
      saleoff: req.body.saleoff,
      imageurl: req.body.imageurl,
      status: req.body.status,
      categoryId: req.body.categoryId,
      producerId: req.body.producerId
    },
    {
      where: {
        id: req.params.id,
      },
    }
  )
    .then(() => {
      res.redirect("../../product/list");
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

//delete
exports.delete_product = async (req, res) => {
  await Product.destroy({
    where: {
      id: req.params.id,
    },
  })
    .then(() => {
      res.redirect("../../product/list");
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};
