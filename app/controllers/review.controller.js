const db = require("../models");
const Review = db.review;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.reviewall = (req, res) => {
  Review.findAll().then((reviews) => {
    res.json(reviews);
  });
};

exports.reviewbyid = (req, res) => {
  Product.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((reviews) => {
    res.json(reviews);
  });
}
// post

exports.addreview = (req, res) => {

    Review.create({
        reviewdate: req.body.reviewdate,
        reviewcontent: req.body.reviewcontent,
        numberstar: req.body.numberstar,
        reviewimg:req.body.reviewimg,
        userId:req.body.userId,
        productId:req.body.productId
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};

exports.updatereview = async (req, res) => {
  await Review.update(
    { 
        reviewdate: req.body.reviewdate,
        reviewcontent: req.body.reviewcontent,
        numberstar: req.body.numberstar,
        reviewimg:req.body.reviewimg,
        userId:req.body.userId,
        productId:req.body.productId
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
exports.deletereview = async (req, res) => {
  await Review.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};


// view 

exports.review_list = (req, res) => {
  pool_db.connect(function (err, client, done) {
      if (err) {
          return console.error('error', err);
      }
      client.query(`SELECT reviews.*,users."id" as userid,users."username",users."email",users."address",users."phone",products."id" as proid,products."productname",products."imageurl"
                   FROM reviews inner join users on reviews."userId" = users."id" inner join products on reviews."productId" = products."id" ORDER BY id ASC`, function (err, result) {
          done();

          if (err) {
              res.end();
              return console.error('error running query', err);
          }
          res.render("./review.ejs", { review_list: result });
      });
  });

};
