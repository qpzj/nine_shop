const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;

const Op = require('sequelize').Op;
const User = Sequelize.import('../schema/user');
const Product = Sequelize.import('../schema/product');
const Comment = Sequelize.import('../schema/comment');
const Order = Sequelize.import('../schema/order');
const Banner = Sequelize.import('../schema/banner');
const BannerItem = Sequelize.import('../schema/banner_item');

var md5 = require('md5');
User.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

class UserModel {
    //获取前端的总数量
    static async findCountUser(data){
       return await User.findAndCountAll({
        attributes:['id']
       })
    }
    static async findCountProduct(data){
        return await Product.findAndCountAll({
         attributes:['id']
        })
     }
     static async findCountComment(data){
        return await Comment.findAndCountAll({
         attributes:['id']
        })
     }
     static async findCountOrder(data){
        return await Order.findAndCountAll({
         attributes:['id']
        })
     }
     static async findCountBanner(data){
        return await Banner.findAndCountAll({
         attributes:['id']
        })
     }
     static async findCountBannerItem(data){
        return await BannerItem.findAndCountAll({
         attributes:['id']
        })
     }
    //获取前端的总数量
/**
     * 后台登录
     * @param data
     * @returns {Promise<*>}
     */
    static async findUserRole(data) {
        return await User.findOne({
            where: {
                username: data.username,
                password: data.password,
                role:1
            },
            attributes:['id','username','nickname','email','headimgurl']
        });
    }

    /**
     * 提交修改
     * @param {*} data 
     */
    static async getEdit(data){
        return await User.update(
            {
                nickname: data.nickname,
                phone: data.phone,
                email: data.email,
                role:data.role,
                headimgurl:data.headimgurl
            },{
                where: {
                    id: data.id
                }
            })
    }

 /**
         * 查询所有用户
         * @param {
         * } ctx 
         */
        static async getAll(data) {
            
            const limit = data.limit;  
            return await User.findAndCountAll({
                where:{
                    username: {
                        // 模糊查询
                        [Op.like]:'%' +data.username + '%'
                      }
                }
               ,
               attributes: ['id', 'username',
               'nickname','headimgurl',
                'email','phone','create_time','role'
            ],
                limit: Number(limit), // 每页多少条
                offset:(data.page-1)*limit // 跳过当前多少条
          });
          }

/**
 * 删除用户
 *  */
static async deleteUser(data) {
    
    return await  User.destroy({
        where:{ id: data.id }
   });
    
}
/**
 * 添加用户
 * @param {*} data 
 */
    static async addUser(data){
        return await User.create({
            username: data.username,
            password: md5(data.password),
            email:data.email,
           
        }
            )
    }
    /**
     * 注册
     * @param data
     * @returns {Promise<*>}
     */
    static async createUser(data) {
        return await User.create({
            username: data.username,
            password: data.password
        });
    }

    /**
     * 检查用户名称是否存在
     * @param data
     * @returns {Promise<*>}
     */
    static async checkUser(data) {
        return await User.findOne({
            where: {
                username: data.username
            }
        });
    }

    /**
     * 查询用户名密码
     * @param data
     * @returns {Promise<*>}
     */
    static async findUser(data) {
        return await User.findOne({
            where: {
                username: data.username,
                password: data.password
            }
        });
    }

    /**
     * 获取用户信息
     * @param id  用户id
     * @returns {Promise<Model>}
     */
    static async userInfo(id) {
        return await User.findByPk(id);
    }

    /**
     * 修改用户信息
     * @param id  用户id
     * @param data 用户信息
     * @returns {Promise<Model>}
     */
    static async updataUserInfo(id,data) {
        return await User.update(
            data,{
                where: {
                    id: id
                }
            }
        );
    }

    /**
     * 修改用户密码
     * @param id  用户id
     * @param data 用户密码
     * @returns {Promise<Model>}
     */
    static async updataUserPassWord(id,password) {
        return await User.update(
            {
                password: password
            },{
                where: {
                    id: id
                }
            }
        );
    }

    /**
     * 更新用户信息与头像
     * @param user_id
     * @returns {Promise<Model>}
     */
    static async updateUserAvatar(url,nickname,email,phone,user_id) {
        try {
            return await User.update(
                {
                    headimgurl: url,
                    nickname: nickname,
                    email: email,
                    phone: phone
                },
                {
                    where: {
                        id: user_id
                    }
                }
            );
        } catch (err) {
            console.log(err);
        }
    }
}

module.exports = UserModel;
