const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const Order = Sequelize.import('../schema/order');
const OrderProduct = Sequelize.import('../schema/order_product');
const Op = require('sequelize').Op;
const Product = Sequelize.import('../schema/product')
const User=Sequelize.import('../schema/user')
Order.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)
Order.belongsTo(User, {
    foreignKey: 'user_id',
    targetKey: 'id'
});
Order.hasMany(OrderProduct, {
    foreignKey: 'order_id',
    sourceKey: 'id'
});

OrderProduct.belongsTo(Product, {
    foreignKey: 'product_id',
    targetKey: 'id'
});

class OrderModel {
    //点击查看详情，传入id
    static async getOne(data){
        let id=data.id
        console.log(id);
        
        return await Order.findOne({
                where:{
                    id:id
                },
                include:[
                    {
                        model: OrderProduct,
                        attributes: {exclude:[] },
                        include:[
                            {
                                model: Product,
                                attributes: {exclude:[] }
                            }
                        ]
                    },
                ]

        })
    }
    //删除订单传入id
    static async getDel(data){
        let id=data.id
        await OrderProduct.destroy({
            where:{
                order_id:id
            }
        })
        return await Order.destroy({
            where:{id:id}
        })
    }
    //获取所有的订单
    static async getAll(data){
        const limit = data.limit;  
        return await Order.findAndCountAll({
            where:{
                order_no: {
                    // 模糊查询
                    [Op.like]:'%' +data.name + '%'
                  }},
                  include:[
                    {
                        model: User,
                        attributes: {exclude:['password'] }
                    },
                
                ],  
                limit: Number(limit), // 每页多少条
                offset:(data.page-1)*limit // 跳过当前多少条
          
        
        
        })
    }

    static async getOrderList(id) {
        return await Order.findAll({
            where: { user_id: id }
        });
    }

    static async getOrderOne(id) {
        return await Order.findOne({
            include: [
                {
                    model: OrderProduct,
                    attributes: {
                        exclude: ['order_id', 'delete_time', 'update_time']
                    },
                    include: [
                        {
                            model: Product,
                            attributes: {
                                exclude: ['delete_time', 'category_id', 'from', 'update_time', 'create_time', 'img_id']
                            }
                        }
                    ]
                },
            ],
            where: {
                id: id
            }
        });
    }

    static async addOrderList(data) {
        return await Order.create(
            data
        );
    }

    static async addOrderProduct(data) {
        return await OrderProduct.bulkCreate(
            data
        );
    }
}

module.exports = OrderModel;