const { authJwt } = require("../middleware");
const controller = require("../controllers/order.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/order/all", controller.orderall);
    //byid
  
  //update
  app.post("/api/order/updateorder_quantity/:id", controller.updateorder_quantity);
  //update
  app.post("/api/order/updateorder_status/:id", controller.updateorder_status);
  //delete
  app.delete("/api/order/deleteorder/:id",controller.deleteorder);
  

  //cart
  app.post("/api/order/addcart",controller.addcart);

  //detail user
  app.get("/api/order/cart_user/:id",controller.orderdetail_user);

  //view 
  app.get("/order/list",controller.order_list);
  app.get("/order/byid/:id",controller.order_detail);
  app.get("/order/delete_order/:id",controller.delete_order);
  app.post("/order/update_status/:id", controller.update_status);
};