const router = require('koa-router')();
const ProductController = require('../../controllers/product');
router.get('/', async (ctx) => {
  await ctx.render('./popup/product/productList')
})
//调转添加页面
router.get('/add', ProductController.toAdd)
//执行添加后跳转商品首页
router.post('/toRAdd',ProductController.toRAdd)
//删除商品传入id
router.get('/toDel',ProductController.toDel)
//跳转编辑页面传入id
router.get('/edit',ProductController.Edit)
//提交编辑的内容，并跳转prouduct页面
router.post('/toEdit',ProductController.toEdit)
//获取所有商品
router.get('/getAllProduct',ProductController.getAllLimit )

 
module.exports = router.routes();