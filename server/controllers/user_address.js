const UserAddressModel = require("../models/user_address");

class UserAddressController {

    static async addUserAddress(ctx){
        const user_id = ctx.state.user.user_id;
        const req = ctx.request.body;

        if(req.name && req.mobile && req.province && req.city && req.country && req.detail){
          const result = await UserAddressModel.addAddressById(req, user_id);
          if(result){
            ctx.body = {
                code: 0,
                msg: '用户地址保存成功',
                data: {
                    address_id: result.id
                }
            }
          }else{
            ctx.body = {
                code: -1,
                msg: '用户地址保存失败'
            }
          }
        }else {
            ctx.body = {
                code: -1,
                msg: '参数不全'
            }
        }
    }

    static async updateUserAddress(ctx){
        const id = ctx.request.body.id
        const req = ctx.request.body;

        if(req.name && req.mobile && req.province && req.city && req.country && req.detail){
            const result = await UserAddressModel.updateAddressById(req, id);
            if(result){
              ctx.body = {
                code: 0,
                msg: '用户地址修改成功',
                data: {
                    result
                }
              }
            }else{
              ctx.body = {
                code: -1,
                msg: '用户地址修改失败'
              }
            }

          }else{
            ctx.body = {
              code: -1,
              msg: '参数不全'
            }
          }
    }

    static async deleteUserAddress(ctx){
        const id = ctx.request.body.id
        if(id){
            const result = await UserAddressModel.deleteUserAddress(id);
            if(result){
              ctx.body = {
                code: 0,
                msg: '用户地址删除成功',
                data: {
                    result
                }
              }
            }else{
              ctx.body = {
                code: -1,
                msg: '用户地址删除失败'
              }
            }

          }else{
            ctx.body = {
              code: -1,
              msg: '参数不全'
            }
          }
    }

    static async updateAddressFlag(ctx){
        const id = ctx.request.body.id
        const user_id = ctx.state.user.user_id;
        if(id){
            const result = await UserAddressModel.updateAddressFlag(user_id);
            const result2 = await UserAddressModel.updateAddressFlag2(id);
            if(result){
              ctx.body = {
                code: 0,
                msg: '用户默认地址修改成功',
                data: {
                    result2
                }
              }
            }else{
              ctx.body = {
                code: -1,
                msg: '用户默认地址修改失败'
              }
            }

          }else{
            ctx.body = {
              code: -1,
              msg: '参数不全'
            }
          }
    }

    static async getUserAddress(ctx){
        let user_id = ctx.state.user.user_id;
        if(user_id){
            const result = await UserAddressModel.getAddressById(user_id);

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


        }else {
            ctx.body = {
                code: -1,
                msg: '缺少参数user_id'
            }
        }
    }

    static async getAddressOne(ctx){
        let id = ctx.request.query.id;
        if(id){
            const result = await UserAddressModel.getAddressOne(id);

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


        }else {
            ctx.body = {
                code: -1,
                msg: '缺少参数id'
            }
        }
    }

}

module.exports = UserAddressController;
