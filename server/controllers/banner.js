const BannerModel = require("../models/banner");
const ProductModel = require("../models/product");

class BannerController {
    //获取id删除bannerItem里面的数据
    static async toDelBannerItem(ctx){
        let id = ctx.query.id

        let img_id =await BannerModel.findOneBannerItem({id:id})
        
      let result =   await BannerModel.toDelBannerItem({id:id,img_id:img_id.img_id})
        
        let data={
            code:result
    }
    if(result==1){
        data={
            msg:'删除成功'
        }
    }else{
        data={
            msg:'删除失败，请刷新'
        }
    }
    ctx.body=data
    }
    //获取post提交的数据以及修改
    static async toEditBannerItem(ctx){
        let data = ctx.request.body
        let url=data.url
        let img_id = data.img_id;
        let type = data.type
        let banner_id = data.banner_id
        let key_word =data.key_word
        let id = data.id
        await BannerModel.toEditBannerItem({
             url:url,
             img_id:img_id,
             type:type,
             banner_id:banner_id,
             key_word:key_word,
             id:id
        })
        ctx.redirect('/bannerItem')
    }
    //获取post传的值，添加到banneritem以及img表
    static async toAddBannerItem(ctx){
        let data=ctx.request.body
        let url = data.url;
        let type = data.type
        let banner_id = data.banner_id
        let key_word =data.key_word
        console.log(data);
        
        await BannerModel.toAddBannerItem({
            url:url,
            type:type,
            banner_id:banner_id,
            key_word:key_word
        })
        ctx.redirect('/bannerItem')
    }
    
    //获取id条用BannerItem里指定
    static async getOneBannerItem(ctx){
        let id =ctx.query.id
         let bannerItem = await BannerModel.findOneBannerItem({id:id})
      let banner =   await BannerModel.findAllBanner()
      let product = await ProductModel.getAll()
     await ctx.render('popup/bannerItem/edit',{banner:banner,product:product,bannerItem:bannerItem})
    }
    //获取add的banner以及product
    static async toOneBaannerItem(ctx){
        // let bannerItem = await BannerModel.findAllBannerItem()
      let banner =   await BannerModel.findAllBanner()
     let product = await ProductModel.getAll()
    await ctx.render('popup/bannerItem/add',{banner:banner,product:product})
    }
    //获取id调用toDelBanner
    static async toDelBanner(ctx){
        let id=ctx.query.id
        let result =  await BannerModel.toDelBanner({
            id:id
        })
        let data={
                code:result
        }
        if(result==1){
            data={
                msg:'删除成功'
            }
        }else{
            data={
                msg:'删除失败，请刷新'
            }
        }
        ctx.body=data
    }
    //获取post提交的数据，条用更新banner的model
    static async toEditBanner(ctx){
        let data=ctx.request.body
        let name=data.name
        let description=data.description
        let id=data.id
        await BannerModel.toEditBanner({
            name:name,
            description:description,
            id:id
        })
        await ctx.redirect('/banner')
    }
    //跳转到编辑banner页面
    static async EditBanner(ctx){
        let id= ctx.query.id
       let data = await BannerModel.getBannerInfo(id)
       console.log(data);
       
        await ctx.render('popup/banner/edit',{banner:data})
    }
    //读取post传的值，调用添加banner接口
    static async toAddBanner(ctx){
        let data=ctx.request.body
        let name=data.name
        let description=data.description
        await BannerModel.toAddBanner({
            name:name,
            description:description
        })
      await ctx.redirect('/banner');
    }
//获取get传的参数，调用获取banner的model方法
    static async getAllBanner(ctx){
        let data=ctx.query
        let page = data.page;
        let limit=data.limit;
        let username=data.username
        // console.log(ctx.query);
        if(username==undefined){
            username='%'
        }
       if(page==undefined){
        page=1
       }
       if(limit==undefined){
        limit=5
       }
        const user_list =await  BannerModel.getAllBanner({
            page :page,
            limit:limit,
            username:username
        });  
        // return user_list;
        ctx.body = {
            code: 0,
            msg: '成功',
            count:user_list.count,
            data:user_list.rows
        };
      }
//获取get传的参数，调用获取bannerItem的model方法
static async getAllBannerItem(ctx){
    let data=ctx.query
    let page = data.page;
    let limit=data.limit;
    let username=data.username
    // console.log(ctx.query);
    if(username==undefined){
        username='%'
    }
   if(page==undefined){
    page=1
   }
   if(limit==undefined){
    limit=5
   }
    const user_list =await  BannerModel.getAllBannerItem({
        page :page,
        limit:limit,
        username:username
    });  
    // return user_list;
    ctx.body = {
        code: 0,
        msg: '成功',
        count:user_list.count,
        data:user_list.rows
    };
}
    static async getBannerById(ctx){
        const banner_id = parseInt(ctx.params.id);
        if(banner_id){
            try{
                const banner_items = await BannerModel.getBannerItems(banner_id);
                const banner_info = await BannerModel.getBannerInfo(banner_id);
                ctx.body = {
                    code: 0,
                    msg: '查询成功',
                    data:{
                        banner_items,
                        banner_info
                    }
                }
            }catch(err){
                ctx.body = {
                    code: -1,
                    msg: '查询失败',
                    err
                }
            }
        }else {
            ctx.body = {
                code: -1,
                msg: '缺少banner_id参数'
            }
        }
    }
}

module.exports = BannerController;
