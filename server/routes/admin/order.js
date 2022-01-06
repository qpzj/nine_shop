const router = require('koa-router')();
const OrderController =require('../../controllers/order')
router.get('/', async (ctx) => {
 await ctx.render('popup/order/List');
})
//获取所有订单
  router.get('/getAll',OrderController.getAll)
//删除传入id
  router.get('/toDel',OrderController.getDel)
  router.get('/getOne',OrderController.getOne)
module.exports = router.routes();