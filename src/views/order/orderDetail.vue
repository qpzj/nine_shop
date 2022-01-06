<template>
  <div>
    <vHeader>订单历史</vHeader>
    <div class="from" style="margin-top: 20px">
      <div>
        <div class="orderBox">
          <van-field label="订单ID" v-model="list.id" readonly/>
          <van-field label="订单编号" v-model="list.order_no" readonly/>
          <van-field label="订单金额" v-model="list.total_price" readonly/>
          <van-field label="订单数量" v-model="list.total_count" readonly/>
          <van-field v-if="list.status==1" label="订单状态" v-model="statusSuccess" readonly/>
          <van-field label="联系人地址" v-model="list.address" readonly/>
          <van-field label="下单时间" v-model="list.create_time" readonly/>
          <van-cell>
            <van-col span="24">商品</van-col>
          </van-cell>
          <van-cell v-for="(item,index) of productList" :key="index">
            <van-col span="8">
              <img class="product_img" :src="$baseUrl+item.main_img_url" alt>
            </van-col>
            <van-col style="margin:5px 0px" @click="linkToDetail(item.id)" span="16">{{item.name}}</van-col>
          </van-cell>
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
      list: [],
      statusSuccess: "已支付",
      productList: []
    };
  },
  mounted() {
    this.getOrder();
  },
  methods: {
    ...mapActions("user", ["updateUserInfo"]),
    getOrder() {
      this.$api
        .getOrderOne({
          id: this.$route.query.id
        })
        .then(res => {
          if (res.data.code == 0) {
            this.list = res.data.data;
            res.data.data.order_products.forEach(element => {
              this.productList.push(element.product);
            });
          }
        });
    },
    linkToDetail(id) {
      this.$router.push({ path: "/detail", query: { id } });
    }
  }
};
</script>

<style lang="scss" scoped>
.product_img {
  width: 20vw;
}
.orderBox {
  margin-bottom: 20px;
}
</style>
