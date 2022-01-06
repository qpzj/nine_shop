const router = require('koa-router')();
const CommentController = require('../controllers/comment');

router.prefix('/api/v1')

router.post('/comment/add_comment',CommentController.CreateComment)

router.get('/comment/get_comment',CommentController.getComment)


module.exports = router