const router = require('koa-router')();
const Category = require('../../controllers/category')

router.get('/', async (ctx) => {
  await ctx.render('popup/categoryItem/categoryItemList');
})
//获取所有子分类
 router.get('/getAll',Category.getAllCategoryItem)
 //跳转到添加页面
 router.get('/add',Category.getCategoryItem)
 //处理添加的数据后跳转
 router.post('/toRAdd',Category.addOneCategoryItem)
 //跳转到编辑页面
 router.get('/edit',Category.editOneCategoryItem)
//接受编辑编辑提交的东西
router.post('/toEdit',Category.toeditOneCategoryItem)
 //删除子分类
 router.get('/getDel',Category.getDelCategoryItem)
module.exports = router.routes();