const CategoryModel = require("../models/category");

class CategotyController {
  //调用删除子分类，返回数据
  static async getDelCategoryItem(ctx){
   let result= await CategoryModel.getDelCategoryItem({id:ctx.query.id})
   var data={code:result}
    if(result==1){
      data={msg:'删除成功'}
    }else{
      data={msg:'删除失败'}
    }
    ctx.body=data
  }
  //跳转到编辑页面
  static async editOneCategoryItem(ctx){
    let id=ctx.query.id
   let categoryItem= await CategoryModel.getOneCategoryItem({id:id})
   let category=await CategoryModel.getAll()
   await ctx.render('popup/categoryItem/edit',{
     category:category,
     categoryItem:categoryItem
    });

  }
  //处理修改的子分类
  static async toeditOneCategoryItem(ctx){
    let data=ctx.request.body
    await CategoryModel.toeditOneCategoryItem({
      name:data.name,
      image:data.image,
      category_id:data.category_id,
      id:data.id
    })
    await ctx.redirect('/categoryItem')
  }
  //处理添加的子分类
  static async addOneCategoryItem(ctx){
    let data=ctx.request.body
    await CategoryModel.addOneCategoryItem({
      name:data.name,
      image:data.image,
      category_id:data.category_id
    })
    await ctx.redirect('/categoryItem')
  }
  //跳转到添加页面以及获取所有总分类
  static async getCategoryItem(ctx){
    let category=await CategoryModel.getAll();
    await ctx.render('popup/categoryItem/add',{category:category});
  }
  //获取所有子分类
  static async getAllCategoryItem(ctx){
    let page = ctx.query.page;
    let limit=ctx.query.limit;
    let username=ctx.query.username
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
    const result = await CategoryModel.getAllCategoryItem({
        page :page,
        limit:limit,
        name:username
    });

    if(result){
      ctx.body = {
          code: 0,
          msg: '查询成功',
          count:result.count,
          data: result.rows
      }
    }else{
      ctx.body = {
          code: -1,
          msg: '查询失败',
      }
  }}
  //获取id删除
  static async getDelCategory(ctx){
    let id=ctx.query.id
    let result =await CategoryModel.getDelCategory({id:id})
    console.log(result);
    if(result==1)
    ctx.body={msg:'删除成功'} 
    else
    ctx.body={msg:'删除失败，请刷新，重新删除'} 
    
  }
  static async toEditCategory(ctx){
  let  data=ctx.request.body
  //  console.log(data);
    let result =await CategoryModel.toEditCategory({
       url:data.url,
       name:data.name,
       description:data.description,
       topic_img_id:data.topic_img_id,
       id: data.id
    })
    await ctx.redirect('/category')
  }
  //获取分类的数据跳转到编辑页面
  static async getCategoryOne(ctx){
    let id=ctx.query.id
    let result = await CategoryModel.getCategoryOne({id:id})
    // ctx.body=result
   await ctx.render('popup/category/edit',{cat:result})
  }
  //添加总分类
  static async addCategory(ctx){
    let data=ctx.request.body
    let url=data.url
    let name=data.name
    let description=data.description
    await CategoryModel.addCategory({
      url:url,
      name:name,
      description:description
    })
    await ctx.redirect('/category')
  }
  //获取所有的总分类传入分类的页数
  static async getCategoryAllList(ctx){
    let page = ctx.query.page;
    let limit=ctx.query.limit;
    let username=ctx.query.username
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
    const result = await CategoryModel.getCategoryAllList({
        page :page,
        limit:limit,
        name:username
    });

    if(result){
      ctx.body = {
          code: 0,
          msg: '查询成功',
          count:result.count,
          data: result.rows
      }
    }else{
      ctx.body = {
          code: -1,
          msg: '查询失败',
      }
  }}
    static async getAllCategory(ctx){

      const result = await CategoryModel.getAll();

      if(result){
        ctx.body = {
            code: 0,
            msg: '查询成功',
            data: result
        }
      }else{
        ctx.body = {
            code: -1,
            msg: '查询失败',
        }
      }
    }

    static async getAllCategoryProduct(ctx){
      let category_item_id = parseInt(ctx.params.id);
      const result = await CategoryModel.getAllCategoryProduct(category_item_id);

      if(result){
        ctx.body = {
            code: 0,
            msg: '查询成功',
            data: result
        }
      }else{
        ctx.body = {
            code: -1,
            msg: '查询失败',
        }
      }
    }

    static async searchProduct(ctx){
      let product_name = ctx.request.body.product_name
      console.log(product_name)
      const result = await CategoryModel.searchProduct(product_name);

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

    static async getCategoryProduct(ctx){
      let category_item_id = parseInt(ctx.params.id);
      console.log(category_item_id)
      const result = await CategoryModel.getCategoryProduct(category_item_id);

      if(result){
        ctx.body = {
            code: 0,
            msg: '查询成功',
            data: result
        }
      }else{
        ctx.body = {
            code: -1,
            msg: '查询失败',
        }
      }
    }

    
    
}

module.exports = CategotyController;
