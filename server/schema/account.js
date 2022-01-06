/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define('account', {
      id: {
        type: DataTypes.INTEGER(11),
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      user_name: {
        type: DataTypes.STRING(50),
        allowNull: true,
      },
      amount: {
        type: DataTypes.DOUBLE(),
        allowNull: true
      },
      source: {
        type: DataTypes.STRING(255),
        allowNull: true
      },
      create_time: {
        type: DataTypes.DATE,
      },
      update_time: {
        type: DataTypes.DATE,
      }
    }, {
      tableName: 'account'
    });
  };
  