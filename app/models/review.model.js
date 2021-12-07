module.exports = (sequelize, Sequelize) => {
    const Review = sequelize.define("reviews", {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
          },
        reviewdate: {
            type: Sequelize.DATE
        },
        reviewcontent: {
            type: Sequelize.TEXT
        },
        numberstar: {
            type: Sequelize.INTEGER
        },
        reviewimg: {
            type: Sequelize.TEXT
        },
    });

    return Review;
};