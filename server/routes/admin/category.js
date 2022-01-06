const router = require('koa-router')();
 const Category = require('../../controllers/category')
router.get('/', async (ctx) => {
  await ctx.render('popup/category/categoryList');
})
//获取所有总分类
router.get('/getAll',Category.getCategoryAllList)
//跳转到添加总分类页面
router.get('/add',async (ctx) => {
  await ctx.render('popup/category/add');
})
//提交添加
router.post('/toRAdd',Category.addCategory)
//跳转到编辑页面
router.get('/edit',Category.getCategoryOne)
//处理提交编辑的页面的数据，并跳转到category页面
router.post('/toEdit',Category.toEditCategory)
//传入id删除总分类
router.get('/getDel',Category.getDelCategory)

 
module.exports = router.routes();