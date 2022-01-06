/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define('category_item', {
      id: {
        type: DataTypes.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      name: {
        type: DataTypes.STRING(50),
        allowNull: false
      },
      category_id: {
          type: DataTypes.INTEGER(11),
          allowNull: true
      },
      state: {
          type: DataTypes.INTEGER(2),
          allowNull: true
      },
      category_item_img: {
        type: DataTypes.STRING(255),
        allowNull: false
      },
      update_time: {
        type: DataTypes.DATE,
      },
      create_time: {
        type: DataTypes.DATE,
      }
    }, {
      tableName: 'category_item'
    });
  };
  