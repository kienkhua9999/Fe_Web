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
  app.post("/product/add_product", controller.add_product);
  //update
  app.post("/api/product/updateproduct/:id", controller.updateproduct);
  app.post("/product/update_product/:id", controller.update_product);
  //delete
  app.delete("/api/product/deleteproduct/:id",controller.deleteproduct);
  app.get("/product/delete_product/:id",controller.delete_product);

// view
  app.get("/product/list", controller.product_list);
  app.get("/api/product/deleteproduct/:id",controller.deleteproduct);
};