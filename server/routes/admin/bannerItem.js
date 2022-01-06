const router = require('koa-router')();
const BannerController = require('../../controllers/banner')

router.get('/', async (ctx) => {
    await ctx.render('popup/bannerItem/bannerItemList');
  })
  router.get('/getAll',BannerController.getAllBannerItem)
  router.get('/add',BannerController.toOneBaannerItem)
  //post提交，处理提交的数据
  router.post('/toRAdd',BannerController.toAddBannerItem)
  //跳转到edit页面
  router.get('/edit',BannerController.getOneBannerItem)
  //处理edit的数据
  router.post('/toEdit',BannerController.toEditBannerItem)
  //删除bannerItem表的数据
  router.get('/toDel',BannerController.toDelBannerItem)
module.exports = router.routes();
   