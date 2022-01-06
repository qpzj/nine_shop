import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// 导入所有组件
import Vant from 'vant'
import 'vant/lib/index.css'

import api from '@/api'

import './styles/index.scss' /* 引入样式 */

Vue.use(Vant)
// api
Vue.prototype.$api = api
Vue.prototype.$baseUrl = 'http://127.0.0.1:3000'

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
