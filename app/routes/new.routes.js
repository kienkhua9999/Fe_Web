const { authJwt } = require("../middleware");
const controller = require("../controllers/new.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/new/all", controller.newall);
  //byid
  app.get("/api/new/newbyid/:id", controller.newbyid);
  //add
  app.post("/api/new/addnew", controller.addnew);
  //update
  app.post("/api/new/updatenew/:id", controller.updatenew);
  //delete
  app.delete("/api/new/deletenew/:id",controller.deletenew);

  //view
  app.get("/new/list", controller.new_list);
  app.post("/new/add_new", controller.add_news);
  //update
  app.post("/new/update_new/:id", controller.update_news);
  //delete
  app.get("/new/delete_new/:id",controller.delete_new);
};