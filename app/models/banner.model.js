module.exports = (sequelize, Sequelize) => {
    const Banner = sequelize.define("banners", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
          },
        bannername: {
            type: Sequelize.TEXT
        },
        bannerlink: {
            type: Sequelize.TEXT
        },
        bannerimg: {
            type: Sequelize.TEXT
        },

      
    });
  
    return Banner;
  };