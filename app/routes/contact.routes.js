const { authJwt } = require("../middleware");
const controller = require("../controllers/contact.controller");

module.exports = function(app) {
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    });
  //select
  app.get("/api/contact/all", controller.contactall);
    //byid
    app.get("/api/contact/contactbyid/:id", controller.contactbyid);
  //add
  app.post("/api/contact/addcontact", controller.addcontact);
  //update
  app.post("/api/contact/updatecontact/:id", controller.updatecontact);
  //delete
  app.delete("/api/contact/deletecontact/:id",controller.deletecontact)

};