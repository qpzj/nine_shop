const router = require('koa-router')();
const AccountController = require('../controllers/account');

router.prefix('/api/v1')

//获取电子钱包余额
router.get('/get_accountList',AccountController.getAccountList)

router.post('/insert_account',AccountController.CreateAccount)

module.exports = router