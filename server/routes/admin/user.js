const router = require('koa-router')();
const UserController = require('../../controllers/user');

router.get('/',async (ctx) => {
  await ctx.render('./popup/user/userList')
})
router.get('/getAll', UserController.getAll)
 
router.get('/add', async (ctx) => {
  await ctx.render('popup/user/user_add');
})
router.post('/doAdd', UserController.addUser)
 
router.get('/edit', UserController.getUser)
router.post('/doEdit', UserController.getEdit)
 
router.get('/delete',UserController.deleteUser)
//获取统计总额数
router.get('/adminCount',UserController.findCount)
module.exports = router.routes();