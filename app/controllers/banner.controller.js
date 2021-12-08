const db = require("../models");
const Banner = db.banner;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.bannerall = (req, res) => {
  Banner.findAll().then((banneres) => {
    res.json(banneres);
  });
};

exports.banerbyid = (req, res) => {
  Banner.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((banners) => {
    res.json(banners);
  });
}
// post

exports.addbanner = (req, res) => {

  Banner.create({
    bannername: req.body.bannername,
    bannerlink: req.body.bannerlink,
    bannerimg: req.body.bannerimg
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updatebanner = async (req, res) => {
  await Banner.update(
    { 
        bannername: req.body.bannername,
        bannerlink: req.body.bannerlink,
        bannerimg: req.body.bannerimg,  
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
exports.deletebanner = async (req, res) => {
  await Banner.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};


exports.bannerright = async (req, res) => {
  await Banner.findAll(
    {
      where:{
        bannername:"banner phai"
      }
    }
  ).then((banneres) => {
    res.json(banneres);
  });
};

exports.bannerleft = (req, res) => {
  pool_db.connect(function (err, client, done) {
    if (err) {
      return console.error("error", err);
    }
    client.query(
      `SELECT * FROM banners limit 8`,
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