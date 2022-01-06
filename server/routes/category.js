const router = require('koa-router')();
const CategoryController = require('../controllers/category');

router.prefix('/api/v1')

router.get('/category/get_all',CategoryController.getAllCategory)

router.get('/category/getcategory_product/:id',CategoryController.getCategoryProduct)

router.get('/category/getAllCategory_product/:id',CategoryController.getAllCategoryProduct)

router.post('/category/search',CategoryController.searchProduct)


module.exports = router