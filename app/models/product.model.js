module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("products", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      productname: {
        type: Sequelize.TEXT
      },
      description: {
        type: Sequelize.TEXT
      },
      parameter: {
        type: Sequelize.TEXT
      },
      guarantee: {
        type: Sequelize.TEXT
      },
      datepost: {
        type: Sequelize.DATE
      },
      price: {
        type: Sequelize.FLOAT
      },
      quantity: {
        type: Sequelize.INTEGER
      },
      saleoff: {
        type: Sequelize.FLOAT
      },
      imageurl: {
        type: Sequelize.TEXT
      },
      status: {
        type: Sequelize.TEXT
      },
     

    });
  
    return Product;
  };