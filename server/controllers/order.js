const OrderModel = require("../models/order");

class OrderController {
    //传入id查看详情
    static async getOne(ctx){
        let id=ctx.query.id
        const result = await OrderModel.getOne({id:id})
        await ctx.render('popup/order/orderItem',{
            orderItem:result
        })        
    }
//传入id删除
static async getDel(ctx){
    let id=ctx.query.id
    const result =await OrderModel.getDel({id:id})
    if(result==1){
ctx.body={
    msg:'删除成功'
}
    }else{
        msg:'删除失败'
    }
}
    //查询所有订单
        static async getAll(ctx) {
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
        const result = await OrderModel.getAll({
            page :page,
            limit:limit,
            name:username
        });
// console.log(result);

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

    static async getOrderList(ctx) {
        const user_id = ctx.state.user.user_id;
        const result = await OrderModel.getOrderList(user_id);
        if (result) {
            ctx.body = {
                code: 0,
                msg: '查询成功',
                data: result
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '查询失败'
            }
        }
    }

    static async getOrderOne(ctx) {
        const id = ctx.request.query.id;
        console.log(id)
        const result = await OrderModel.getOrderOne(id);
        if (result) {
            ctx.body = {
                code: 0,
                msg: '查询成功',
                data: result
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '查询失败'
            }
        }
    }

    static async addOrderList(ctx) {
        const req = ctx.request.body;
        let data ={
            order_no: req.order_no,
            user_id: req.user_id,
            total_price: req.total_price,
            total_count: req.total_count,
            address: req.address
        }
        const result = await OrderModel.addOrderList(data);
        
        if (result) {
            ctx.body = {
                code: 0,
                msg: '查询成功',
                data: result
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '查询失败'
            }
        }

    }

    static async addOrderProduct(ctx) {
        const req = ctx.request.body;
        console.log(req.data)
        const result = await OrderModel.addOrderProduct(req.data);   
        if (result) {
            ctx.body = {
                code: 0,
                msg: '查询成功',
                data: result
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '查询失败'
            }
        }

    }
}

module.exports = OrderController;