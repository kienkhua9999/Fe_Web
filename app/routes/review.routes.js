const { authJwt } = require("../middleware");
const controller = require("../controllers/review.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/review/all", controller.reviewall);
   //byid
   app.get("/api/review/reviewbyid/:id", controller.reviewbyid);
  //add
  app.post("/api/review/addreview", controller.addreview);
  //update
  app.post("/api/review/updatereview/:id", controller.updatereview);
  //delete
  app.delete("/api/review/deletereview/:id",controller.deletereview);
    // view

    app.get("/review/list", controller.review_list);
};