const db = require("../models");
const Orderproduct = db.orderproduct;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.orderall = (req, res) => {
  Orderproduct.findAll().then((orderproducts) => {
    res.json(orderproducts);
  });
};

exports.updateorder_quantity = (req, res) => {
  Orderproduct.update(
    {
      quantity: req.body.quantity,
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

exports.updateorder_status = (req, res) => {
  Orderproduct.update(
    {
      status: req.body.status,
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

exports.deleteorder = async (req, res) => {
  await Orderproduct.destroy({
    where: {
      id: req.params.id,
    },
  }).then(() => {
    pool_db.connect(function (err, client, done) {
      if (err) {
        return console.error("error", err);
      }
      client.query(
        `delete from orderdetails where orderdetails."orderId"=null`,
        function (err, result) {
          done();
          if (err) {
            res.end();
            return console.error("error running query", err);
          }
         res.send({ message: "delete successfully!" });
        }
      );
    });
  });
};

exports.addcart = (req, res) => {
  Orderproduct.create({
    orderate: req.body.orderate,
    totalprice: req.body.totalprice,
    quantity: req.body.quantity,
    status: req.body.status,
    userId: req.body.userId,
  })
    .then((order) => {
      pool_db.connect(function (err, client, done) {
        if (err) {
          return console.error("error", err);
        }
        client.query(
          `INSERT INTO orderdetails VALUES ( ${req.body.productId}, ${order.dataValues.id})`,
          function (err, result) {
            done();

            if (err) {
              res.end();
              return console.error("error running query", err);
            } else {
              res.send({ message: "cart successfully!" });
            }
          }
        );
      });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.orderdetail_user = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `select orderdetails.*,orderproducts."orderate",orderproducts."totalprice",orderproducts."quantity",orderproducts."status",products."productname",products."imageurl",products."price"
         from orderdetails inner join products on orderdetails."productId" = products."id" inner join orderproducts on orderdetails."orderId"= orderproducts."id" where orderproducts."userId" = ${id}`,
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

exports.order_list = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      client.query(`SELECT orderproducts.*,users."id" as userid,users."username",users."address",users."phone"
                   FROM orderproducts inner join users on orderproducts."userId" = users."id" ORDER BY id ASC`, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }else{

            res.render("./order.ejs", { order_list: result });
            //  res.json(result.rows);
          }
          // res.json(result.rows);
         
      });
  });
};


exports.order_detail = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      var id = req.params.id;
      client.query(`SELECT orderdetails.*, orderproducts."id" as orderid,orderproducts."orderate",orderproducts."totalprice",orderproducts."status",products."id" as proid,products."productname",products."imageurl",products."price"
                   FROM orderdetails inner join orderproducts on orderdetails."orderId" = orderproducts."id" inner join products on orderdetails."productId" = products."id" where orderproducts."id" = ${id}`, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }
          else {
              var  product= result;
              pool_db.connect(function (err, client, done) {
                  if (err) {
                      return console.error('error', err);
                  }
                  client.query(`SELECT orderproducts.*,users."id" as userid,users."username",users."address",users."phone"
                              FROM orderproducts inner join users on orderproducts."userId" = users."id" where orderproducts."id" = ${id}`, function (err, result) {
                      done();

                      if (err) {
                          res.end();
                          return console.error('error running query', err);
                      }
                      
                      res.render("./orderdetail.ejs", { ls_product: product.rows[0], order: result.rows[0] });
                  });
              });
          }
      });
  });
};

exports.delete_order = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      var id = req.params.id;
      client.query(`delete from orderproducts where orderproducts."id"=${id} `, function (err, result) {
          done();
          if (err) {
              res.end();
              return console.error('error running query', err);
          }
          else {

              pool_db.connect(function (err, client, done) {
                  if (err) {
                      return console.error('error', err);
                  }
                  client.query(`delete from orderdetails where orderdetails."orderId"=${id}`, function (err, result) {
                      done();
                      if (err) {
                          res.end();
                          return console.error('error running query', err);
                      }
                      res.redirect("../../order/list");

                  });
              });
          }


      });
  });
};

exports.update_status = (req, res) => {
  Orderproduct.update(
    {
      status: req.body.status,
    },
    {
      where: {
        id: req.params.id,
      },
    }
  )
    .then(() => {
      res.redirect("../../order/list");
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};