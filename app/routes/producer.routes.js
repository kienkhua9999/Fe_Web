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
  //byid
  app.get("/api/producer/producerbyid/:id", controller.producerbyid);
  //add
  app.post("/api/producer/addproducer", controller.addproducer);
  //update
  app.post("/api/producer/updateproducer/:id", controller.updateproducer);
  //delete
  app.delete("/api/producer/deleteproducer/:id",controller.deleteproducer)

};