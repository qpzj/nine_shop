import request from '@/utils/request'

export default {
  getAccountList () {
    return request.get('/get_accountList')
  },
  insertAccount(data) {
    return request({
      url: '/insert_account',
      method: 'post',
      data
    })
  },
}