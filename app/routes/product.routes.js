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
  app.get("/api/product/product_sale", controller.product_saleoff);
  app.get("/api/product/product_phonehigh", controller.product_phonehigh);
  app.get("/api/product/product_laptophigh", controller.product_laptophigh);
  app.get("/api/product/product_dhthoitrang", controller.product_dhthoitrang);
  app.get("/api/product/product_dhthongminh", controller.product_dhthongminh);
    //byid
    app.get("/api/product/productbyid/:id", controller.productbyid);
  //add
  app.post("/api/product/addproduct", controller.addproduct);
  //update
  app.post("/api/product/updateproduct/:id", controller.updateproduct);
  //delete
  app.delete("/api/product/deleteproduct/:id",controller.deleteproduct)

};