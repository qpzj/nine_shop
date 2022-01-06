<template>
  <div>
    <v-header>钱包充值</v-header>
    <div class="notice">
      <img src="../../assets/tongzhi.png" style="float:left;height:1.3em;width:1.3em;">
      <span>当前电子钱包账户余额为：￥{{amount}}</span>
    </div>
    <van-cell-group style="margin: 20px 0">
      <van-cell>电子钱包充值</van-cell>
      <van-field
        label="充值"
        placeholder="请输入充值金额"
        v-model="money"
        :rules="[{ required: true, message: '充值金额不能为空！' }]"
      />
    </van-cell-group>
    <van-button @click="updataWallet()" block plain type="info">确认充值</van-button>

    <van-row style="margin-top: 50px">
      <van-cell>钱包记录</van-cell>
      <van-cell>
        <van-col span="8">操作</van-col>
        <van-col span="8">金额</van-col>
        <van-col span="8">时间</van-col>
      </van-cell>
      <van-cell v-for="(item,index) of accountList" :key="index">
        <van-col span="8">{{item.source}}</van-col>
        <van-col span="8">{{item.amount}}</van-col>
        <van-col span="8">{{item.update_time}}</van-col>
      </van-cell>
    </van-row>
  </div>
</template>
<script>
import vHeader from "../header/header";
export default {
  data() {
    return {
      money: "",
      amount: "",
      accountList: []
    };
  },
  components: {
    vHeader
  },
  mounted() {
    this.getWalletList();
  },
  methods: {
    getWalletList() {
      this.$api.getAccountList().then(res => {
        if (res.data.code == 0) {
          this.accountList = res.data.data.reverse()
          let temp = 0;
          res.data.data.forEach(element => {
            temp = temp + element.amount;
          });
          this.amount = temp;
        }
      });
    },
    updataWallet() {
      this.$api
        .insertAccount({
          money: this.money
        })
        .then(res => {
          this.money = "";
          this.getWalletList();
        });
    }
  }
};
</script>
<style lang="scss">
.notice {
  text-align: left;
  padding: 5px 20px;
  box-sizing: border-box;
  background-color: #fffbe8;
  color: #ed6a0c;
  font-size: 14px;
  img {
    margin-right: 5px;
  }
}
</style>
