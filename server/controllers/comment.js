const CommentModel = require("../models/comment");

class CommentController {
    //处理评论的编辑
    static async getEdit(ctx){
        const data =ctx.request.body
        const result = await CommentModel.getEdit({
            id:data.id,
            stars:data.stars,
            content:data.content
        })
        await ctx.redirect('/comment')
    }
    //获取一个评价内容传入id
    static async getOne(ctx){
        const result = await CommentModel.getOne({id:ctx.query.id})
        await ctx.render('popup/comment/edit',{
           comment:result 
        })
    }
    //删除评价传入id
    static async getDel(ctx){
        let id = ctx.query.id;
        const result =await CommentModel.getDel({id:id})

        if(result==1){
            ctx.body={
                msg:"删除成功"
            }
        }else{
            ctx.body={
                msg:"删除失败"
            }
        }
        
    }
    //获取所有评价
    static async getAll(ctx){
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
        const result = await CommentModel.getAll({
            page :page,
            limit:limit,
            username:username
        });
       
        if(result){
            ctx.body = {
                code: 0,
                msg: '获取成功',
                count:result.count,
                data:  result.rows
            }
        }else{
            ctx.body = {
                code: -1,
                msg: '获取失败',
                data:  result
            }
        }
    }
    static async CreateComment(ctx) {
        let user_id = ctx.request.body.user_id
        let product_id = ctx.request.body.product_id
        let content = ctx.request.body.content
        let stars = ctx.request.body.stars
        let data = {
            user_id: user_id,
            product_id: product_id,
            content: content,
            stars: stars
        }
        const result = await CommentModel.CreateComment(data);
        if (data) {
            try {
                ctx.body = {
                    code: 0,
                    msg: '添加成功',
                    data: {
                        result
                    }
                }
            } catch (err) {
                ctx.body = {
                    code: -1,
                    msg: '添加失败',
                    err
                }
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '缺少参数'
            }
        }
    }

    static async getComment(ctx){
        let product_id = parseInt(ctx.request.query.product_id)
        let currentpage = parseInt(ctx.request.query.currentpage)
        console.log(currentpage)
        const result = await CommentModel.getComment(product_id,currentpage);
  
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

module.exports = CommentController;
