module.exports = (sequelize, Sequelize) => {
    const ProductImage = sequelize.define("productimages", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
        Imageurl  : {
        type: Sequelize.TEXT
      }
     
    });
  
    return ProductImage;
  };