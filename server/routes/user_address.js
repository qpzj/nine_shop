const router = require('koa-router')()
const UserAddressController = require('../controllers/user_address');

router.prefix('/api/v1')

router.post('/user_address/get',UserAddressController.getUserAddress);
router.get('/user_address/getOne',UserAddressController.getAddressOne);
router.post('/user_address/add',UserAddressController.addUserAddress);
router.post('/user_address/update',UserAddressController.updateUserAddress);
router.post('/user_address/updateAddressFlag',UserAddressController.updateAddressFlag);
router.post('/user_address/delete',UserAddressController.deleteUserAddress);




module.exports = router
