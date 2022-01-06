const router = require('koa-router')();
const AccountController =require('../../controllers/account')
router.get('/', async (ctx) => {
  await ctx.render('popup/account/accountList');
})
//获取所有消费
router.get('/getAll',AccountController.getAll)

 
module.exports = router.routes();