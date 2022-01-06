const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const Category = Sequelize.import('../schema/category');
const Image = Sequelize.import('../schema/image');
const Product = Sequelize.import('../schema/product');
const Category_item = Sequelize.import('../schema/category_item')

const spl = require('sequelize');
const Op = spl.Op;

Category.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

Category.belongsTo(Image, {
    foreignKey: 'topic_img_id',
    targetKey: 'id',
    as: 'img'
});
Category_item.belongsTo(Category, {
    foreignKey: 'category_id',
    targetKey: 'id',
   
});

Category.hasMany(Category_item, {
    foreignKey: 'category_id',
    sourceKey: 'id'
});

Category_item.hasMany(Product,{
    foreignKey: 'category_id',
    sourceKey: 'id'
})


class CategoryModel {
    //传入id删除子分类
    static async getDelCategoryItem(data){
        return await Category_item.destroy({where:{id:data.id}})
    }
    //处理添加的数据子分类
    static async toeditOneCategoryItem(data){
        return await Category_item.update({
            name:data.name,
            category_item_img:data.image,
            category_id:data.category_id
          },{where:{id:data.id}
            }
         ) 
    }
    //处理添加的数据子分类
    static async addOneCategoryItem(data){
        return await Category_item.create({
            name:data.name,
            category_item_img:data.image,
            category_id:data.category_id
          }) 
    }
   //传入个id获取一个子分类的总分类
   static async getOneCategoryItem(data){
       let id=data.id
       return await Category_item.findOne({
           where:{
               id:id
           },
         
       })
   }
    //获取所有子分类
    static async getAllCategoryItem(data){
        const limit = data.limit;  
        return await Category_item.findAndCountAll({
            where:{
                name: {
                    // 模糊查询
                    [Op.like]:'%' +data.name + '%'
                  }},
            include: [
                {
                    model:Category ,
                    attributes: ['name','id']
                },
               
            ],
            limit: Number(limit), // 每页多少条
            offset:(data.page-1)*limit,   // 跳过当前多少条
            attributes: {
                exclude: []
            }
        });
      }
    //删除总分类传入id
    static async getDelCategory(data){
        let id= data.id
        let topic_img_id=await Category.findOne({where:{id:id}});
      
        await Image.destroy({
            where:{id:topic_img_id.dataValues.topic_img_id}
        })
        return await Category.destroy({
            where:{id:id}
        })
    }
    //处理修改的数据
    static async toEditCategory(data){
        let description=data.description
        let topic_img_id = data.topic_img_id
        let url=data.url
        let id=await Image.update({
            url:url
        },{where:{
            id:topic_img_id
        }})
        // console.log(id);
        let name=data.name
        return await Category.update({
            description:description,
            name:name,
            topic_img_id:topic_img_id
           
        },{where:{id:data.id}})
    }
    //查询一个分类的内容
    static async getCategoryOne(data){
        return await Category.findOne({
            include: [
                {
                    model: Image,
                    as: 'img',
                    attributes: ['url']
                }],
           where:{id:data.id}
        })
    }
    //添加总分类
    static async addCategory(data){
        let description=data.description
        let url=data.url
        let id=await Image.create({
            url:url
        })
        console.log(id);
        
        let name=data.name
        return await Category.create({
            description:description,
            name:name,
            topic_img_id:id.dataValues.id
        })
    }
  //获取所有的总分类传入分类的页数
  static async getCategoryAllList(data){
    const limit = data.limit;  
    return await Category.findAndCountAll({
        where:{
            name: {
                // 模糊查询
                [Op.like]:'%' +data.name + '%'
              }},
        include: [
            {
                model: Image,
                as: 'img',
                attributes: ['url']
            },
           
        ],
      
                limit: Number(limit), // 每页多少条
                offset:(data.page-1)*limit,   // 跳过当前多少条
        attributes: {
            exclude: ['topic_img_id', 'update_time', 'delete_time']
        }
    });
  }
   
    static async getCategoryItemAll(){
        return await Category_item.findAll({});
    }
    static async getAll() {
        return await Category.findAll({
            include: [
                {
                    model: Image,
                    as: 'img',
                    attributes: ['url']
                },
                {
                    model: Category_item,
                }
            ],
            attributes: {
                exclude: ['topic_img_id', 'update_time', 'delete_time']
            }
        });
    }

    static async searchProduct(product_name) {
        return await Product.findAll({
            where: {
                name: {
                    [Op.like]:'%' +product_name + '%'
                }
            },
            //过滤不需要的数据
            attributes: {
                exclude: ['img_id', 'delete_time', 'update_time']
            }
        });
    }

    static async getCategoryProduct(id) {
        return await Category_item.findOne({
            include: [
                {
                    model: Product,
                    attributes: {
                        exclude: []
                    }
                },
            ],
            attributes: {
                exclude: []
            },
            where: {
                id
            }
        });
    }

    static async getAllCategoryProduct(id) {
        return await Category_item.findAll({
            include: [
                {
                    model: Product,
                },
            ],
            where: {
                category_id: id
            }
        });
    }
}

module.exports = CategoryModel;
