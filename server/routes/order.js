const router = require('koa-router')()
const OrderController = require('../controllers/order');

router.prefix('/api/v1')

router.get('/order/get_orderList',OrderController.getOrderList);

router.get('/order/getOrderOne',OrderController.getOrderOne)

router.post('/order/add_orderList',OrderController.addOrderList);

router.post('/order/add_orderProduct',OrderController.addOrderProduct);



module.exports = router