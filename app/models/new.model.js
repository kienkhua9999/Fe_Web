module.exports = (sequelize, Sequelize) => {
    const New = sequelize.define("news", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
          },
        title: {
            type: Sequelize.TEXT
        },
        content: {
            type: Sequelize.TEXT
        },
        datepost: {
            type: Sequelize.DATE
        },
        newimg: {
            type: Sequelize.TEXT
        }

      
    });
  
    return New;
  };