/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('user', {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },
    username: {
      type: DataTypes.STRING(50),
      allowNull: false
    },
    password: {
        type: DataTypes.STRING(50),
        allowNull: false
    },
    nickname: {
      type: DataTypes.STRING(50),
      allowNull: true
    },
    headimgurl: {
        type: DataTypes.STRING(255),
        allowNull: true
    },
    email: {
      type: DataTypes.STRING(50),
      allowNull: true
    },
    role:{
      type: DataTypes.INTEGER(1),
      allowNull: true
    },
    phone: {
      type: DataTypes.STRING(11),
      allowNull: true
    },
    delete_time: {
      type: DataTypes.DATE,
    },
    create_time: {
      type: DataTypes.DATE,
    },
    update_time: {
      type: DataTypes.DATE,
    }
  }, {
    tableName: 'user'
  });
};
