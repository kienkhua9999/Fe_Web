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
  app.get("/api/productPaginationPublished", controller.productPaginationPublished);
  app.post("/api/product/seach", controller.product_seach);
  app.get("/api/product/product_sale", controller.product_saleoff);
  app.get("/api/product/product_phonehigh", controller.product_phonehigh);
  app.get("/api/product/product_laptophigh", controller.product_laptophigh);
  app.get("/api/product/product_dhthoitrang", controller.product_dhthoitrang);
  app.get("/api/product/product_dhthongminh", controller.product_dhthongminh);

  app.get("/api/product/categoryid/:id", controller.product_byidcategory);
  // san pham theo danh muc - phan trang
  app.get("/api/product/productPagination_category/:categoryId", controller.productPagination_category);
 
//dien thaoi 
app.get("/api/product/product_iphone", controller.product_iphone);
app.get("/api/product/product_oppo", controller.product_oppo);
app.get("/api/product/product_samsung", controller.product_samsung);
app.get("/api/product/product_xiaome", controller.product_xiaome);
app.get("/api/product/product_vivo", controller.product_vivo);

// laptop
app.get("/api/product/product_macbook", controller.product_macbook);
app.get("/api/product/product_dell", controller.product_dell);
app.get("/api/product/product_ausu", controller.product_ausu);
app.get("/api/product/product_lenovo", controller.product_lenovo);
app.get("/api/product/product_hp", controller.product_hp);
//ipad
app.get("/api/product/product_ipad", controller.product_ipad);
app.get("/api/product/product_huawai", controller.product_huawai);
app.get("/api/product/product_samsung_tb", controller.product_samsung_tb);
app.get("/api/product/product_xiaome_tb", controller.product_xiaome_tb);

// tăng giảm
app.get("/api/product/product_highprice/:id", controller.product_highprice);
app.get("/api/product/product_lowprice/:id", controller.product_lowprice);
//giam gia
app.get("/api/product/product_saleGG/:id", controller.product_saleGG);

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