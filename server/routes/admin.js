const router = require('koa-router')();
const user = require('./admin/user');
const account = require('./admin/account');
const banner = require('./admin/banner');
const category = require('./admin/category');
const comment = require('./admin/comment');
const product = require('./admin/product');
const categoryItem = require('./admin/categoryItem');
const order = require('./admin/order');
const bannerItem = require('./admin/bannerItem');
const UserController = require('../controllers/user');

//toLoginAdmin
router.get('/', async (ctx, next) => {
  console.log(ctx.session.token);
  
  await ctx.render('index', {
    title: ctx.session.token
  })
})

router.use('/user', user)
router.use('/account', account)
router.use('/banner', banner)
router.use('/category', category)
router.use('/comment', comment)
router.use('/product', product)
router.use('/categoryItem', categoryItem)
router.use('/order', order)
router.use('/bannerItem', bannerItem)

 
module.exports = router
