const ProductModel = require("../models/product");
const CategoryModel = require("../models/category");
class ProductController {
//提交编辑商品的数据，提交后跳转到product页面
static async toEdit(ctx){
    let data=ctx.request.body;
    const result = await ProductModel.toEdit({
        main_img_url :data.main_img_url,
        name:data.name,
        price:data.price,
        summary:data.summary,
        stock:data.stock,
        category_id:data.category_id,
        id:data.id
    });
    
        await ctx.redirect('/product');
}

    //编辑商品传入id
    static async Edit(ctx){
        let id=ctx.query.id
        console.log(id)
       const data=await ProductModel.getProductDetail(parseInt(id))
       const category =  await CategoryModel.getCategoryItemAll();
       await ctx.render('popup/product/edit',{
        product:data,
        category:category
    })
    }
//删除商品传id
static  async toDel(ctx){
    let id=ctx.query.id
    const code =  await ProductModel.toDel({id:id});
    let data={   code:code,}
    if(code==1){
data={
 
    msg:'删除成功'
}
    }else{
        data={
            msg:'删除失败，请请刷新页面'
        }
    }
    ctx.body=data
}

    //跳转添加页面
    static async toAdd(ctx){
        const category =  await CategoryModel.getCategoryItemAll();
      
        await ctx.render('./popup/product/add',{
            category:category
        })
    }
    //执行添加后跳转野蛮
    static async toRAdd(ctx){
        let data=ctx.request.body
       
        const result = await ProductModel.toRAdd({
            main_img_url :data.main_img_url,
            name:data.name,
            price:data.price,
            summary:data.summary,
            stock:data.stock,
            category_id:data.category_id
        });
        await ctx.redirect('/product')
    }
    static async getAllLimit(ctx){
        let page = ctx.query.page;
        let limit=ctx.query.limit;
        let username=ctx.query.username
        console.log(ctx.query);
        if(username==undefined){
            username='%'
        }
       if(page==undefined){
        page=1
       }
       if(limit==undefined){
        limit=5
       }
        const result = await ProductModel.getAllLimit({
            page :page,
            limit:limit,
            name:username
        });

        if(result){
          ctx.body = {
              code: 0,
              msg: '查询成功',
              count:result.count,
              data:result.rows
          }
        }else{
          ctx.body = {
              code: -1,
              msg: '查询失败'
          }
        }
    }


    static async getAllProduct(ctx){

        const result = await ProductModel.getAll();

        if(result){
          ctx.body = {
              code: 0,
              msg: '查询成功',
              data: result
          }
        }else{
          ctx.body = {
              code: -1,
              msg: '查询失败'
          }
        }
    }

    static async getRecentProduct(ctx){

      const result = await ProductModel.getRecent();

      if(result){
        ctx.body = {
            code: 0,
            msg: '查询成功',
            data: result
        }
      }else{
        ctx.body = {
            code: -1,
            msg: '查询失败'
        }
      }

    }
    static async getProductDetail(ctx){
        let product_id = parseInt(ctx.params.id);
        if(product_id){
          const result = await ProductModel.getProductDetail(product_id);

          if(result){
            ctx.body = {
                code: 0,
                msg: '查询成功',
                data: result
            }
          }else{
            ctx.body = {
                code: -1,
                msg: '查询失败'
            }
          }

        }else{
          ctx.body = {
              code: -1,
              msg: '缺少参数product_id'
          }
        }
    }
}

module.exports = ProductController;
