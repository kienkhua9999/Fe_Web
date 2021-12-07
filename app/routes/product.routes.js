const { authJwt } = require("../middleware");
const controller = require("../controllers/product.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/product/all", controller.productall);
    //byid
    app.get("/api/product/productbyid/:id", controller.productbyid);
  //add
  app.post("/api/product/addproduct", controller.addproduct);
  //update
  app.post("/api/product/updateproduct/:id", controller.updateproduct);
  //delete
  app.delete("/api/product/deleteproduct/:id",controller.deleteproduct)

};