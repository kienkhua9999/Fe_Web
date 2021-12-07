const { authJwt } = require("../middleware");
const controller = require("../controllers/banner.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //get
  app.get("/api/banner/all", controller.bannerall);
  //byid
  app.get("/api/banner/bannerbyid/:id", controller.banerbyid);
  //add
  app.post("/api/banner/addbanner", controller.addbanner);
  //update
  app.post("/api/banner/updatebanner/:id", controller.updatebanner);
  //delete
  app.delete("/api/banner/deletebanner/:id",controller.deletebanner)

};