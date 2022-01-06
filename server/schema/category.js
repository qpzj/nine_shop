/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('category', {
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
    topic_img_id: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    delete_time: {
      type: DataTypes.DATE,
    },
    description: {
      type: DataTypes.STRING(100),
      allowNull: true
    },
    update_time: {
      type: DataTypes.DATE,
    },
    create_time: {
      type: DataTypes.DATE,
    }
  }, {
    tableName: 'category'
  });
};
