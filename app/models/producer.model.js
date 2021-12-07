module.exports = (sequelize, Sequelize) => {
    const Producer = sequelize.define("producers", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
        producername  : {
        type: Sequelize.TEXT
      },
      address: {
        type: Sequelize.TEXT
      },
      producerimg: {
        type: Sequelize.TEXT
      },
     
    });
  
    return Producer;
  };