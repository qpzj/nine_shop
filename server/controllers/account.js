const AccountModel = require("../models/account");

class AccountController {
//获取所有消费记录
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
        const user_list =await  AccountModel.getAll({
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
    static async getAccountList(ctx){
        const user = ctx.state.user;
        if(user){
            try{
                const data = await AccountModel.getAccountList(user.username);
                ctx.body = {
                    code: 0,
                    msg: '查询成功',
                    data
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

    static async CreateAccount(ctx){
        const user = ctx.state.user;
        const req = ctx.request.body;
        const amount = req.money
        let source = ''
        if(amount<0) {
            source = '商城消费'
        }else {
            source = '充值'
        }
        if(user){
            console.log('ok')
            try{
                const data = await AccountModel.CreateAccount(user.username,amount,source);
                ctx.body = {
                    code: 0,
                    msg: '充值成功',
                    data:{
                        data
                    }
                }
            }catch(err){
                ctx.body = {
                    code: -1,
                    msg: '充值失败',
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

module.exports = AccountController;
