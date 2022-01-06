const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const Op = require('sequelize').Op;

const Product = Sequelize.import('../schema/product');
const Image = Sequelize.import('../schema/image');
const ProductImage = Sequelize.import('../schema/product_image');
const categoryItem = Sequelize.import('../schema/category_item');
Product.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

// Product-Image关联关系
Product.belongsTo(Image, {
    foreignKey: 'img_id',
    targetKey: 'id'
});
Product.belongsTo(categoryItem, {
    foreignKey: 'category_id',
    targetKey: 'id'
});
ProductImage.belongsTo(Image, {
    foreignKey: 'img_id',
    targetKey: 'id'
});
// Product-ProductImage关联关系
Product.hasMany(ProductImage, {
    foreignKey: 'product_id',
    sourceKey: 'id'
});

class ProductModel {
    //传入一些参数和id修改
    static async toEdit(data){
        return await Product.update({
            main_img_url :data.main_img_url,
            name:data.name,
            price:data.price,
            summary:data.summary,
            stock:data.stock,
            category_id:data.category_id
           },{
               where:{id:data.id}
           })
    }
    //删除商品id
    static async toDel(data){
        let id=data.id
        return await Product.destroy({
            where:{id:id}
        })
    }
    //添加商品
    static async toRAdd(data){
       
   return await Product.create({
    main_img_url :data.main_img_url,
    name:data.name,
    price:data.price,
    summary:data.summary,
    stock:data.stock,
    category_id:data.category_id
   })
    }
    static async getAllLimit(data) {
        const limit = data.limit;  

        return await Product.findAndCountAll({
            //过滤不需要的数据
            where:{
                name: {
                    // 模糊查询
                    [Op.like]:'%' +data.name + '%'
                  }
            }
           ,
            attributes: {
                exclude: ['img_id', 'delete_time', 'update_time']
            },
            include:[
                {
                    model: categoryItem,
                    attributes: {
                       
                    }
                },
            ],
            limit: Number(limit), // 每页多少条
            offset:(data.page-1)*limit // 跳过当前多少条
        });
    }

    static async getAll() {
        return await Product.findAll({
            //过滤不需要的数据
            attributes: {
                exclude: ['img_id', 'delete_time', 'update_time']
            },
            include:[
                {
                    model: categoryItem,
                    attributes: {
                       
                    }
                },
            ]
        });
    }
    static async getRecent() {
        return await Product.findAll({
            //过滤不需要的数据
            attributes: {
                exclude: ['img_id', 'delete_time', 'update_time']
            },
            limit: 10,
            order: [
                ['id','DESC']
             ]
        });
    }

    static async getProductDetail(id) {
        return await Product.findOne({
            include: [
                {
                    model: Image,
                    attributes: {
                        exclude: ['id']
                    }
                },
                {
                    model: ProductImage,
                    include: [
                        {
                            model: Image,
                            attributes: {
                                exclude: ['img_id', 'delete_time','order','update_time','create_time']
                            },
                        }
                    ],
                    attributes: {
                        exclude: ['img_id', 'delete_time','order','update_time','create_time']
                    },
                },
            ],
            attributes: {
                exclude: [ 'img_id','update_time','create_time','delete_time']
            },
            where: {
                id
            }
        });
    }
}

module.exports = ProductModel;
