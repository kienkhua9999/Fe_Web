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
  //byid
  app.get("/api/category/categorybyid/:id", controller.categorybyid);
  //add
  app.post("/api/category/addcategory", controller.addcategory);
  //update
  app.post("/api/category/updatecategory/:id", controller.updatecategory);
  //delete
  app.delete("/api/category/deletecategory/:id",controller.deletecategory)

};