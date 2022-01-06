const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const Account = Sequelize.import('../schema/account');
const User = Sequelize.import('../schema/user');
const Op=require('sequelize').Op
Account.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

class AccountModel {
    //获取所有消费
    static async getAll(data){
            
        const limit = data.limit;  
        return await Account.findAndCountAll({
            where:{
                user_name: {
                    // 模糊查询
                    [Op.like]:'%' +data.username + '%'
                  }
            }
           ,
            limit: Number(limit), // 每页多少条
            offset:(data.page-1)*limit // 跳过当前多少条
      });
      }
    static async getAccountList(user_name) {
        return await Account.findAll({
            where: {
                user_name: user_name
            },
        });
    }

    static async CreateAccount(user_name,amount,source) {
        return await Account.create({
            user_name: user_name,
            amount: amount,
            source: source
        });
    }
}

module.exports = AccountModel;
