const router = require('koa-router')();
 const BannerController = require('../../controllers/banner')

router.get('/', async (ctx) => {
   await ctx.render('popup/banner/bannerList');
})
//获取所有banner的内容
router.get('/getAll',BannerController.getAllBanner)
//跳转到添加的页面
router.get('/add',async (ctx) => {
   await ctx.render('popup/banner/add');
})
//处理添加的数据,并跳转到banner页面
router.post('/toRAdd',BannerController.toAddBanner)
//跳转到编辑页面
router.get('/edit',BannerController.EditBanner)
//post提交处理编辑后跳转
router.post('/toEdit',BannerController.toEditBanner)
//删除路由
router.get('/toDel',BannerController.toDelBanner)
 
module.exports = router.routes();