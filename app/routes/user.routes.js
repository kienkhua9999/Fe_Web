const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function (app) {
  app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header(
      "Access-Control-Allow-Headers",
      "Origin, X-Requested-With, Content-Type, Accept"
    );
    next();
  });

  app.get("/api/test/all", controller.allAccess);

  app.get("/api/test/user", [authJwt.verifyToken], controller.userBoard);

  app.get(
    "/api/test/mod",
    [authJwt.verifyToken, authJwt.isModerator],
    controller.moderatorBoard
  );

  app.get(
    "/api/test/admin",
    [authJwt.verifyToken, authJwt.isAdmin],
    controller.adminBoard
  );
  //get
  app.get("/api/user/all", controller.userall);
  //getbyid
  app.get("/api/user/userbyid/:id",controller.userbyid);
  //post
  app.post("/api/user/adduser", controller.adduser);
  //post
  app.post("/api/user/updateuser/:id", controller.updateuser);
  //delete
  app.delete("/api/user/deleteuser/:id", controller.deleteuser);
};
