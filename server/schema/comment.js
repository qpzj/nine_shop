/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define('comment', {
      id: {
        type: DataTypes.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      user_id: {
        type: DataTypes.INTEGER(11),
        allowNull: false
      },
      product_id: {
        type: DataTypes.INTEGER(11),
        allowNull: false
      },
      content: {
        type: DataTypes.TEXT,
        allowNull: true
      },
      stars: {
        type: DataTypes.INTEGER(1),
        allowNull: true
      },
      create_time: {
        type: DataTypes.DATE,
      },
      update_time: {
        type: DataTypes.DATE,
      }
    }, {
      tableName: 'comment'
    });
  };
  