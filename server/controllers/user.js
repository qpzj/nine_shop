const UserModel = require('../models/user');
const jwt = require('jsonwebtoken');
const config = require('./../config/config');
const AccountModel = require("../models/account");
const session = require('koa-session')
class UserController {
   //获取全部统计的个数
   static async findCount(ctx){
     

     ctx.body ={
       code:1,
       data: {
        user:await UserModel.findCountUser(),
        product:await UserModel.findCountProduct(),
        comment:await UserModel.findCountComment(),
        order:await UserModel.findCountOrder(),
        banner:await UserModel.findCountBanner(),
        bannerItem:await UserModel.findCountBannerItem()
       }
     }
    }
    static async loginOut(ctx){
        ctx.session.user=null
        await ctx.redirect('/login')

    }
    //登录加入session
    static async toLogin(ctx) {
        const req = ctx.request.body;
        if (req.username && req.password) {
            const result = await UserModel.findUserRole(req);
            // findOne 查询空时为null
            if (result !== null) {
               
                ctx.body = {
                    code: 0,
                    msg: '登录成功',
                    data:result.dataValues
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '用户名或密码错误'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '参数不合法'
            };
        }
    }
    /**
     * 提交修改
     *  */
    static async getEdit(ctx){
            let data=ctx.request.body
            console.log(data);
            const user= await UserModel.getEdit({
                nickname:  data.nickname,
                phone:data.phone,
                email:data.email,
                role:data.role,
                headimgurl:data.headimgurl,
                id:data.id
            });
            await ctx.redirect('/user')
    }
    
    /** 
     * 获取用户
     * 
    */
   static async getUser(ctx){
    let id = ctx.query.id
   const user= await UserModel.userInfo(id);
  
   await ctx.render('popup/user/user_edit',{
    user:user
});
   }
        /**
         * 查询所有用户
         * @param {
         * } ctx 
         */
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
                const user_list =await  UserModel.getAll({
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

/**
 * 删除用户
 *  */
static async deleteUser(ctx) {
    let id = ctx.query.id;
    const msg =await  UserModel.deleteUser({
        id :id,
    }); 
    var data={}
    if(msg==1){
        data={
            code:1,
            msg:'删除成功'
        }
    }else{
        data={
            code:0,
            msg:'删除失败'
        } 
    }
    ctx.body =  data
    
}
/*添加用户 
*/    
static async addUser(ctx) {
    let body = ctx.request.body
 
    const msg =await  UserModel.addUser({
        username: body.username,
        password: body.password,
        email:body.email
    }); 
    var data={}
    if(msg==1){
        data={
            code:1,
            msg:'添加成功'
        }
    }else{
        data={
            code:0,
            msg:'添加失败'
        } 
    }
    ctx.body = data
}
/**
 * 获取用户信息
 * @param {*} ctx 
 */
    







    /**
     * 注册
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async register(ctx) {
        const req = ctx.request.body;
        if (req.username && req.password) {
            const result = await UserModel.checkUser({
                username: req.username,
                password: req.password
            });

            if (result !== null) {
                return (ctx.body = {
                    code: -1,
                    msg: '该用户名已存在',
                    checkUser
                });
            } else {
                const user = await UserModel.createUser(req);
                if (user) {
                    ctx.body = {
                        code: 0,
                        msg: '注册成功',
                        data: {
                            user_id: user.id,
                        }
                    };
                } else {
                    ctx.body = {
                        code: -1,
                        msg: '注册失败'
                    };
                }
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '参数不全'
            };
        }
    }

    /**
     * 登录
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async login(ctx) {
        const req = ctx.request.body;
        if (req.username && req.password) {
            const result = await UserModel.findUser(req);
            // findOne 查询空时为null
            if (result !== null) {
                const payload = {
                    user_id: result.id,
                    username: result.username
                };

                const token = getToken(payload);

                ctx.body = {
                    code: 0,
                    msg: '登录成功',
                    token
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '用户名或密码错误'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '参数不合法'
            };
        }
    }

    /**
     * 获取用户信息
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async getUserInfo(ctx) {
        // 1.可以直接用过ctx.state.user获取payload中的user_id
        // 2.前端访问时会附带token在请求头
        // const payload = getJWTPayload(ctx.headers.authorization)

        const user = ctx.state.user;

        if (user.user_id) {
            const result = await UserModel.userInfo(user.user_id);
            if (result) {
                ctx.body = {
                    code: 0,
                    msg: '查询成功',
                    data: result
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '查询失败'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '缺少user_id'
            };
        }
    }

    /**
     * 修改用户信息
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async updataUserInfo(ctx) {
        const user = ctx.state.user;
        const req = ctx.request.body
        const data = {
            nickname: req.nickname,
            email: req.email,
            phone: req.phone,
        }
        if (user.user_id) {
            const result = await UserModel.updataUserInfo(user.user_id, data);
            if (result) {
                ctx.body = {
                    code: 0,
                    msg: '修改成功',
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '修改失败'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '缺少user_id'
            };
        }
    }

    /**
     * 修改用户密码
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async updataUserPassWord(ctx) {
        const user = ctx.state.user;
        const req = ctx.request.body;
        const password = req.password
        if (user.user_id) {
            const result = await UserModel.updataUserPassWord(user.user_id, password);
            if (result) {
                ctx.body = {
                    code: 0,
                    msg: '修改成功',
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '修改失败'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '缺少user_id'
            };
        }
    }

    /**
     * 更新用户头像
     * @param ctx
     * @returns {Promise.<void>}
     */
    static async updateUserAvatar(ctx) {
        const user_id = ctx.state.user.user_id;
        const req = ctx.request.body;
        if (req.headimgurl) {
            const result = await UserModel.updateUserAvatar(
                req.headimgurl,
                req.nickname,
                req.email,
                req.phone,
                user_id
            );
            if (result) {
                ctx.body = {
                    code: 0,
                    msg: '用户头像保存成功',
                    data: {
                        result
                    }
                };
            } else {
                ctx.body = {
                    code: -1,
                    msg: '用户头像保存失败'
                };
            }
        } else {
            ctx.body = {
                code: -1,
                msg: '缺少参数'
            };
        }
    }
}

/* 获取一个期限为1小时的token */
function getToken(payload = {}) {
    return jwt.sign(payload, config.jwt.secret, {
        expiresIn: config.jwt.expiresIn
    });
}

/* 通过headers的token获取JWT的payload部分 */
function getJWTPayload(token) {
    // 验证并解析JWT
    return jwt.verify(token.split(' ')[1], config.jwt.secret);
}

module.exports = UserController;
