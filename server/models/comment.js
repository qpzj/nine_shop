const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const User = Sequelize.import('../schema/user');
const Comment = Sequelize.import('../schema/comment');
const Product = Sequelize.import('../schema/product');
const Op = require('sequelize').Op;

Comment.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

Comment.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id'
});
Comment.belongsTo(Product, {
    foreignKey: 'product_id',
    targetKey: 'id'
});

class CommentModel {
//处理评论修改的数据
static async getEdit(data){
    return await Comment.update({
        content:data.content,
        stars:data.stars
    },{
        where:{id:data.id}
    })
}

    //获取一个评价内容传入id
    static async getOne(data){
        return await Comment.findOne({
            where:{
                id:data.id
            }
        })
    }
    //删除评价
    static async getDel(data){
        let id=data.id
        return await Comment.destroy({
            where:{id:id}
        })
    }
    //获取所有评价内容
    static async getAll(data){
        const limit = data.limit;  
        return await Comment.findAndCountAll({
            where:{
                content: {
                    // 模糊查询
                    [Op.like]:'%' +data.username + '%'
                  }
            }
           ,  limit: Number(limit), // 每页多少条
           offset:(data.page-1)*limit, // 跳过当前多少条
             include:[{ model: User,
               attributes: {
                    exclude: ['password','email','phone','create_time','update_time','delete_time']
                }},
                { model: Product,
                    attributes: {
                        exclude: []
                    }}
            ]
        })
    }
    static async CreateComment(data) {
        return await Comment.create(data);
    }

    static async getComment(product_id,currentpage) {
        let offset =  (currentpage-1) * 4
        return await Comment.findAndCountAll({
            include: [
                {
                    model: User,
                    attributes: {
                        exclude: ['password','email','phone','create_time','update_time','delete_time']
                    }
                },
            ],
            where: {
                product_id: product_id,
            },
            limit: 4,
            offset: offset
        });
    }
}

module.exports = CommentModel;
