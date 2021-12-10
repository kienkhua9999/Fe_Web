const db = require("../models");
const Category = db.category;
const Op = db.Sequelize.Op;
var pool_db = require("../config/crdb.config").pool_db;
const config = require("../config/auth.config");

exports.categoryall = (req, res) => {
  Category.findAll().then((categories) => {
    res.json(categories);
  });
};

exports.categorybyid = (req, res) => {
  Category.findOne(
    {
      where :{
          id:req.params.id
      }
    }
  ).then((categories) => {
    res.json(categories);
  });
}

// exports.categoryall2 = (req, res) => {
//     Category.findAll({
//         where: {
//             categoryLevel: 1
//         },
//         where: {
//             parentId: 0
//         },
//     }).then(category_parent => {
//         Category.findAll({
//             where: {
//                 categoryLevel: 2
//             },
//         }).then(categories => {
//             res.render('./listcategory.ejs', { ds_category_parent: category_parent, ds_category: categories });

//         });
//     });
// };
// post

exports.addcategory = (req, res) => {
  var categorylevel;
  if (req.body.parentid == 0) {
    categorylevel = 1;
  } else {
    categorylevel = 2;
  }
  Category.create({
    categoryname: req.body.categoryname,
    parentid: req.body.parentid,
    categorylevel: categorylevel,
  })
    .then(() => {
      res.send({ message: "Insert successfully!" });
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};


exports.updatecategory = async (req, res) => {
  await Category.update({ categoryname: req.body.categoryname },
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
exports.deletecategory = async (req, res) => {
  await Category.destroy({
    where: {
      id: req.params.id,
    },
  });
  await res.send({ message: "delete successfully!" });
};

// view trang admin

exports.listcategory = (req,res)=>{

    Category.findAll({
        where: {
            categorylevel: 1
        },
        where: {
            parentid: 0
        },
    }).then(category_parent => {
        Category.findAll({
            where: {
                categorylevel: 2
            },
        }).then(categories => {
            res.render('./categories.ejs', { ds_category_parent: category_parent, ds_category: categories });

        });
    });
}

exports.add_category = (req, res) => {
  var categorylevel;
  if (req.body.parentid == 0) {
    categorylevel = 1;
  } else {
    categorylevel = 2;
  }
  Category.create({
    categoryname: req.body.categoryname,
    parentid: req.body.parentid,
    categorylevel: categorylevel,
  }).then(() => {
            res.redirect("../category/list");
          })
        
};


exports.update_category = async (req, res) => {
  console.log(req.body.categoryname);
  await Category.update({ categoryname: req.body.categoryname },
    {
      where: {
        id: req.params.id,
      },
    })
    .then(() => {
      res.redirect("../../category/list");
    })
    .catch((err) => {
      res.status(500).send({ message: err.message });
    });
};


exports.delete_category = async (req, res) => {
  await Category.destroy({
    where: {
      id: req.params.id,
    },
  }).then(() => {
    res.redirect("../../category/list");
  })
  .catch((err) => {
    res.status(500).send({ message: err.message });
  });
};