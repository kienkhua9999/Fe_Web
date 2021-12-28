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
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."saleoff">5 LIMIT 10`,
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
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">15 and products."categoryId"<26 ORDER BY RANDOM() LIMIT 10`,
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
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=7 LIMIT 10`,
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
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=8 LIMIT 10`,
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

// theo điện thoai
exports.product_allPhone = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">10 and products."categoryId"<16`,
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

exports.product_IPhone_dt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=11`,
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

exports.product_Samsung_dt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=12`,
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

exports.product_Oppo_dt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=13`,
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

exports.product_Vivo_dt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=14`,
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

exports.product_Xiaome_dt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=15`,
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

// máy tinh 

exports.product_allLaptop = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">15 and products."categoryId"<21`,
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

exports.product_Macbook_mt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=16`,
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

exports.product_Dell_mt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=17`,
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

exports.product_Asus_mt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=18`,
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

exports.product_Lenovo_mt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=19`,
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

exports.product_HP_mt = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=20`,
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

// Tablet 

exports.product_allTablet = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId">20 and products."categoryId"<26`,
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

exports.product_Ipad_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=21`,
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

exports.product_Samsung_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=22`,
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

exports.product_Xiaome_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=23`,
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

exports.product_Huawei_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=24`,
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

exports.product_Lenove_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."categoryId"=25`,
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
