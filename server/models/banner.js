const db = require('../config/db'); // 引入配置文件
const Sequelize = db.sequelize;
const BannerItem = Sequelize.import('../schema/banner_item');
const Banner = Sequelize.import('../schema/banner');
const Product = Sequelize.import('../schema/product');
const Image = Sequelize.import('../schema/image');
const Op =require('sequelize').Op
const sillyDatetime=require('silly-datetime')
BannerItem.sync({ force: false }); // 自动创建表 (加force:true, 会先删掉表后再建表)

// 定义BannerItem-Image关联关系
BannerItem.belongsTo(Image, {
    foreignKey: 'img_id',
    targetKey: 'id',
    as: 'img'
});
BannerItem.belongsTo(Product, {
    foreignKey: 'key_word',
    targetKey: 'id',
    as: 'product'
});
BannerItem.belongsTo(Banner, {
    foreignKey: 'banner_id',
    targetKey: 'id',
    as: 'banner'
});

class BannerModel {
    //获取id删除bannerItem表以及img表里对应的数据
    static async toDelBannerItem(data){
        let id = data.id
        let img_id=data.img_id
       let del =  await Image.destroy({
            where:{id:img_id}
        })
       return await BannerItem.destroy({where:{id:id}})
    }
       //获取post提交的数据以及修改
       static async toEditBannerItem(data){
       let url= data.url
        let img_id = data.img_id;
        let type = data.type
        let banner_id = data.banner_id
        let key_word =data.key_word
        let id = data.id
        await BannerItem.update({
            key_word:key_word,
            type:type,
            banner_id:banner_id
        },{where:{id:id}})
      return  await Image.update({
            url:url
        },{where:{id:img_id}})
       }
      //获取post传的值，添加到banneritem以及img表
      static async toAddBannerItem(data){
        let url = data.url;
        let type = data.type
        let banner_id = data.banner_id
        let key_word =data.key_word
        
        let id = await Image.create({url:url})
        return await BannerItem.create({
           type:type,
           banner_id:banner_id,
           key_word:key_word,
           img_id:id.dataValues.id
        })
    }
     //s获取所有BannerItem表数据
     static async findAllBannerItem(){
        return await BannerItem.findAll()
    }
    //s获取所有Banner表数据
    static async findAllBanner(){
        return await Banner.findAll()
    }
    //获取id，查询bannerItem表里面关联的banner_id和img_id以及key_word
    static async findOneBannerItem(data){
        let id = data.id
        return await BannerItem.findOne(
            {
                    where:{id:id},
            include:[
                {
                    model: Image,
                    as: 'img',
                        attributes: ['url']
                   },
                   {
                    model: Banner,
                    as: 'banner',
                        attributes: ['name']
                   },
                {
                    model: Product,
                    attributes: ['id'],
                    as:'product'
                },
            ]
        },
      
        )
    }
    //获取id删除banner
    static async toDelBanner(data){
        let id = data.id
        await BannerItem.destroy({
            where:{banner_id:id}
        })
        return await Banner.destroy({
           where:{id:id} 
        })
    }
    //处理banner提交添加的的
    static async toEditBanner(data){
        let name=data.name
        let description=data.description
        let id=data.id
        
        return await Banner.update({
            name:name,
            description:description,
        },{
            where:{id:id}
        })
    }
    //添加数据到banner表
    static async toAddBanner(data){
        let name=data.name
        let description=data.description
        return await Banner.create({
            name:name,
            description:description,
        })
    }
    //获取所有banner表的数据
    static async getAllBanner(data){
        const limit = data.limit;  
        return await Banner.findAndCountAll({
            where:{
                name: {
                    // 模糊查询
                    [Op.like]:'%' +data.username + '%'
                  }
            }  ,
            limit: Number(limit), // 每页多少条
            offset:(data.page-1)*limit // 跳过当前多少条
      });
      }

    //获取所有banner_item表的数据
    static async getAllBannerItem(data){
        const limit = data.limit;  
        
        return await BannerItem.findAndCountAll({
          
            include:[
                {
                    model: Image,
                    as: 'img',
                        attributes: ['url']
                   },
                   {
                    model: Banner,
                    as: 'banner',
                        attributes: ['name']
                  
                   },
                {
                    model: Product,
                    attributes: {
                    },
                     where:{
                        summary: {
                            // 模糊查询
                            [Op.like]:'%' +data.username + '%'
                          }
                    }  ,
                    as:'product'
                },
            ],
            limit: Number(limit), // 每页多少条
            offset:(data.page-1)*limit // 跳过当前多少条
      });
    }
    static async getBannerInfo(id) {
        return await Banner.findOne({
            where: {
                id
            },
            attributes: ['name', 'description','id', ['id', 'banner_id']] //将id属性重命名为banenr_id
        });
    }

    static async getBannerItems(banner_id) {
        return await BannerItem.findAll({
            where: {
                banner_id
            },
            //声明要包含的模型，之前声明的关系将在这里发挥作用
            include: [
                {
                    model: Image,
                    as: 'img',
                    attributes: ['url']
                }
            ],
            //过滤不需要的数据
            attributes: {
                include: ['key_word'],
                exclude: ['img_id', 'id', 'delete_time', 'update_time']
            }
        });
    }
}

module.exports = BannerModel;
