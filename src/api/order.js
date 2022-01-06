import request from '@/utils/request'

export default {
    getOrderList() {
        return request.get('/order/get_orderList')
    },

    getOrderOne (data) {
        return request({
          url: '/order/getOrderOne',
          method: 'get',
          params: data
        })
      },

    addOrderList (data) {
        return request({
          url: '/order/add_orderList',
          method: 'post',
          data
        })
      },
    addOrderProduct (data) {
        return request({
          url: '/order/add_orderProduct',
          method: 'post',
          data
        })
    },
}