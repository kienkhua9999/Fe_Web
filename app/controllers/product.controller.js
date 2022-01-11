const db = require("../models");
const Product = db.product;
const Category = db.category;
const Producer = db.producer;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

const getPagination = (page, size) => {
  const limit = size ? +size : 10;
  const offset = page ? page * limit : 0;

  return { limit, offset };
};

const getPagingData = (data, page, limit) => {
  const { count: totalItems, rows: tutorials } = data;
  const currentPage = page ? +page : 0;
  const totalPages = Math.ceil(totalItems / limit);

  return { totalItems, tutorials, totalPages, currentPage };
};

exports.productPagination = (req, res) => {

  const { page, size, productname } = req.query;
  var condition = productname ? { productname: { [Op.like]: `%${productname}%` } } : null;

  const { limit, offset } = getPagination(page, size);

  Product.findAndCountAll({ where: condition, limit, offset })
    .then(data => {
      const response = getPagingData(data, page, limit);
      res.send(response);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

exports.product_seach = (req, res) => {

  const  {productname} = req.body;
  var condition = productname ? { productname: { [Op.like]: `%${productname}%` } } : null;

 

  Product.findAndCountAll({ where: condition })
    .then(data => {
     
      res.json(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Lỗi"
      });
    });
};

exports.productPaginationPublished = (req, res) => {
  const { page, size } = req.query;
  const { limit, offset } = getPagination(page, size);

  Product.findAndCountAll({ where: { status: true }, limit, offset })
    .then(data => {
      const response = getPagingData(data, page, limit);
      res.send(response);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

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

// theo theo id danh mục
exports.product_byidcategory = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE categories."id"=${id}`,
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

// theo từng thương hiệu 
//dien thoại
exports.product_iphone = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=1`,
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
exports.product_oppo = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=4`,
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
exports.product_samsung = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=5`,
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
exports.product_xiaome = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=6`,
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
exports.product_vivo = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=7`,
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

//may tính
exports.product_macbook = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=8`,
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
exports.product_dell = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=9`,
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
exports.product_ausu = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=10`,
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
exports.product_lenovo = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=11`,
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
exports.product_hp = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=12`,
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
//may tính bảng
exports.product_ipad = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=13`,
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
exports.product_samsung_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=5 and products."categoryId" = 6 `,
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
exports.product_xiaome_tb = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=6 and products."categoryId" = 6`,
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
exports.product_huawai = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }

    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE products."producerId"=14`,
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

// giá

exports.product_lowprice = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      var id = req.params.id;
      client.query(`SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
      FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" where categories."id"=${id} ORDER BY price ASC LIMIT 20 `, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }
          res.json(result.rows);  
      });
  });
};
exports.product_highprice = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      var id = req.params.id;
      client.query(`SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
      FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" where categories."id"=${id} ORDER BY price DESC LIMIT 20`, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }
          res.json(result.rows);  
      });
  });
};

// giảm giá

exports.product_saleGG = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    var id = req.params.id;
    client.query(
      `SELECT products.*,categories."id" as cateid,categories."categoryname",producers."id" as prodid,producers."producername",producers."address" 
                  FROM products inner join categories on products."categoryId" = categories."id" inner join producers on products."producerId" = producers."id" WHERE categories."id"=${id} and products."saleoff">0 LIMIT 20`,
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
