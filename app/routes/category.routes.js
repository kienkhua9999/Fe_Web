const { authJwt } = require("../middleware");
const controller = require("../controllers/category.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/category/all", controller.categoryall);
  app.get("/category/list", controller.listcategory);
  //byid
  app.get("/api/category/categorybyid/:id", controller.categorybyid);
  //add
  app.post("/api/category/addcategory", controller.addcategory);
  app.post("/category/add_category", controller.add_category);
  //update
  app.post("/api/category/updatecategory/:id", controller.updatecategory);
  app.post("/category/update_category/:id", controller.update_category);
  //delete
  app.delete("/api/category/deletecategory/:id",controller.deletecategory);
  app.get("/category/delete_category/:id",controller.delete_category);

};