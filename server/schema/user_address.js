/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('user_address', {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    name: {
      type: DataTypes.STRING(30),
      allowNull: false
    },
    mobile: {
      type: DataTypes.STRING(20),
      allowNull: false
    },
    province: {
      type: DataTypes.STRING(20),
      allowNull: true
    },
    city: {
      type: DataTypes.STRING(20),
      allowNull: true
    },
    country: {
      type: DataTypes.STRING(20),
      allowNull: true
    },
    detail: {
      type: DataTypes.STRING(100),
      allowNull: true
    },
    delete_time: {
      type: DataTypes.DATE,
    },
    user_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
    },
    address_flag: {
      type: DataTypes.INTEGER(1),
      allowNull: true,
    },
    update_time: {
      type: DataTypes.DATE,
    },
    create_time: {
      type: DataTypes.DATE,
    }
  }, {
    tableName: 'user_address'
  });
};
