module.exports = (sequelize, Sequelize) => {
    const Category = sequelize.define("categories", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      parentid: {
        type: Sequelize.INTEGER
      },
      categoryname: {
        type: Sequelize.STRING
      },
      categorylevel: {
        type: Sequelize.INTEGER,
        defaultValue: 1
    },
  
    });
  
    return Category;
  };
  
  