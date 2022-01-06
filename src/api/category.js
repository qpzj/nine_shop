import request from '@/utils/request'

export default {
  getAllCategory () {
    return request.get('/category/get_all')
  },
  getCategory_product (id) {
    return request.get(`/category/getcategory_product/${id}`)
  },
  getAllCategoryProduct (id) {
    return request.get(`/category/getAllCategory_product/${id}`)
  },
  searchProduct(data) {
    return request({
        url: '/category/search',
        method: 'post',
        data: data
    })
}
}
