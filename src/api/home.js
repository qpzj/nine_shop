import request from '@/utils/request'

export default {
  getBannerList () {
    return request.get('/banner/1')
  },
  getRecentList () {
    return request.get('/product/get_recent')
  },
}
