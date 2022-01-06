const router = require('koa-router')();
const CommentController = require('../../controllers/comment');
 
router.get('/', async (ctx) => {
  await ctx.render('popup/comment/commentList');
})
//获取所有评价
 router.get('/getAll',CommentController.getAll)
 //删除评价
 router.get('/getDel',CommentController.getDel)
 //跳转到编辑页面
 router.get('/edit',CommentController.getOne)
 //提交评论的评价
router.post('/toEdit',CommentController.getEdit)

 
module.exports = router.routes();