module.exports = (sequelize, Sequelize) => {
    const OrderProduct = sequelize.define("orderproducts", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
        orderate  : {
        type: Sequelize.DATE
      },
      totalprice: {
        type: Sequelize.FLOAT
      },
      quantity: {
        type: Sequelize.INTEGER
      },
      status: {
        type: Sequelize.TEXT
      }
    });
  
    return OrderProduct;
  };