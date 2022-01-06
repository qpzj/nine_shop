<template>
  <div>
    <vHeader>订单历史</vHeader>
    <div class="from" style="margin-top: 20px">
      <div>
        <div v-for="(item,index) of order_list" :key="index" class="orderBox">
          <van-field label="订单编号" v-model="item.order_no" readonly/>
          <van-field label="订单金额" v-model="item.total_price" readonly/>
          <van-field label="订单数量" v-model="item.total_count" readonly/>
          <van-field v-if="item.status==1" label="订单状态" v-model="statusSuccess" readonly/>
          <van-field label="联系人地址" v-model="item.address" readonly/>
          <van-cell center style="color:blue" title="查看订单商品详情" is-link @click="linkToOrderDetail(item.id)"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions } from "vuex";
import vHeader from "../header/header";

export default {
  name: "Profile",
  components: { vHeader },
  data() {
    return {
      order_list: [],
      statusSuccess: "已支付"
    };
  },
  mounted() {
    this.getOrder();
  },
  methods: {
    ...mapActions("user", ["updateUserInfo"]),
    getOrder() {
      this.$api.getOrderList().then(res => {
        if (res.data.code == 0) {
          this.order_list = res.data.data.reverse();
        }
      });
    },
    linkToOrderDetail(id) {
      this.$router.push({ path: "/orderDetail", query: { id } });
    }
  }
};
</script>

<style lang="scss" scoped>
.orderBox {
  margin-bottom: 20px;
}
</style>

