const { authJwt } = require("../middleware");
const controller = require("../controllers/productimage.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/image/all", controller.imageall);
  //add
  app.post("/api/image/addimage", controller.addimage);
  //update
  app.post("/api/image/updateimage/:id", controller.updateimage);
  //delete
  app.delete("/api/image/deleteimage/:id",controller.deleteimage)

};