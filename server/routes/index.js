const router = require('koa-router')()
const UserController = require('../controllers/user');

// router.get('/index', async (ctx, next) => {
//  await ctx.render('./popup/user/userList1',{
//       user: JSON.stringify(UserController.getAll())
//  }
// )} )


router.get('/main', async (ctx, next) => {
  await ctx.render('main', {
    title: 'Hello Koa 2!'
  })
})

router.get('/login', async (ctx, next) => {
  await ctx.render('login', {
    title: 'Hello Koa 2!'
  })
})
router.post('/toLogin',UserController.toLogin)
router.get('/loginOut',UserController.loginOut)

module.exports = router
