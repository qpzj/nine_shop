/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('order', {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    order_no: {
      type: DataTypes.STRING(20),
      allowNull: false,
      unique: true
    },
    user_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    total_price: {
      type: DataTypes.DECIMAL,
      allowNull: false
    },
    status: {
      type: DataTypes.INTEGER(4),
      allowNull: false,
      defaultValue: '1'
    },
    total_count: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      defaultValue: '0'
    },
    address: {
      type: DataTypes.STRING(255),
      allowNull: true,
      defaultValue: '0'
    },
    delete_time: {
      type: DataTypes.DATE,
    },
    update_time: {
      type: DataTypes.DATE,
    },
    create_time: {
      type: DataTypes.DATE,
    }
  }, {
    tableName: 'order'
  });
};
