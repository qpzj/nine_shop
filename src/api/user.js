import request from '@/utils/request'

export default {
  // 登录功能
  login (data) {
    return request({
      url: '/user/login',
      method: 'post',
      data
    })
  },
  // 注册功能
  register (data) {
    return request({
      url: '/user/register',
      method: 'post',
      data
    })
  },
  // 获取用户信息
  getUserInfo (params) {
    return request({
      url: '/user/get_user_info',
      method: 'post',
      params
    })
  },
  // 修改用户信息
  updateUserMsg (data) {
    return request({
      url: '/user/updata_user_info',
      method: 'post',
      data
    })
  },
  // 修改用户密码
  updataUserPassWord (data) {
    return request ({
      url: '/user/updata_user_password',
      method: 'post',
      data
    })
  },
  // 添加收货地址
  addUserAddress (data) {
    return request({
      url: '/user_address/add',
      method: 'post',
      data
    })
  },
  // 获取用户收货地址
  getUserAddress (data) {
    return request({
      url: '/user_address/get',
      method: 'post',
      data
    })
  },
  // 获取用户单条信息
  getAddressOne (data) {
    return request({
      url: '/user_address/getOne',
      method: 'get',
      params: data
    })
  },
  // 更新用户收货地址
  updateUserAddress (data) {
    return request({
      url: '/user_address/update',
      method: 'post',
      data
    })
  },
  // 删除用户收获地址
  deleteUserAddress (data) {
    return request({
      url: '/user_address/delete',
      method: 'post',
      data
    })
  },
  // 更改默认地址
  updateAddressFlag (data) {
    return request({
      url: '/user_address/updateAddressFlag',
      method: 'post',
      data
    })
  },
  // 上传用户头像
  updateUserAvatar(data){
    return request({
        url: '/user/update_user_avatar',
        method: 'post',
        data
      })
  }
}
