const { authJwt } = require("../middleware");
const controller = require("../controllers/producer.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/producer/all", controller.producerall);
  app.get("/producer/list", controller.producer_list);
  //byid
  app.get("/api/producer/producerbyid/:id", controller.producerbyid);
  //add
  app.post("/api/producer/addproducer", controller.addproducer);
  app.post("/producer/add_producer", controller.add_producer);
  //update
  app.post("/api/producer/updateproducer/:id", controller.updateproducer);
  app.post("/producer/update_producer/:id", controller.update_producer);
  //delete
  app.delete("/api/producer/deleteproducer/:id",controller.deleteproducer);
  app.get("/producer/delete_producer/:id",controller.delete_producer);

};