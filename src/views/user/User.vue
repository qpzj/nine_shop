<template>
  <div class="user">
    <div class="header0">我的</div>
    <div class="user-header">
      <img alt="avatar" :src="$baseUrl+userInfo.headimgurl||require('@/assets/avatar.png')" class="avatar">
      <div class="info">
        <p class="nickname">{{userInfo.nickname}}</p>
        <p class="username">{{userInfo.username}}</p>
      </div>
    </div>
    <!-- <van-row class="user-links">
      <van-col span="6">
        <van-icon name="pending-payment" @click="$toast('暂时无法查看哦')"/>待付款
      </van-col>
      <van-col span="6">
        <van-icon name="records" @click="$toast('暂时无法查看哦')"/>待接单
      </van-col>
      <van-col span="6">
        <van-icon name="tosend" @click="$toast('暂时无法查看哦')"/>待发货
      </van-col>
      <van-col span="6">
        <van-icon name="logistics" @click="$toast('暂时无法查看哦')"/>已发货
      </van-col>
    </van-row>-->

    <van-cell-group class="user-group">
      <van-cell icon="records" is-link title="全部订单" to="/order"/>
    </van-cell-group>

    <van-cell-group>
      <van-cell icon="user-o" is-link title="我的信息" to="/profile"/>
      <van-cell icon="location-o" is-link title="我的地址" to="/userContect"/>
      <van-cell icon="balance-o" is-link title="我的钱包" to="/wallet"/>
      <van-cell icon="info-o" is-link title="开发者的话" to="/about"/>
      <van-cell icon="warn-o" is-link @click="loginout" title="退出登录"/>
    </van-cell-group>
    <tabbar></tabbar>
  </div>
</template>

<script>
import Tabbar from "@/components/Tabbar.vue";
import { Dialog } from 'vant';
import { mapGetters } from "vuex";
export default {
  name: "User",
  components: {
    Tabbar,
    Dialog
  },
  computed: {
    ...mapGetters(["userInfo"])
  },
  methods: {
    loginout() {
      Dialog.confirm({
        message: "你确定要退出登录吗？"
      })
        .then(() => {
            localStorage.removeItem("token");
            this.$router.push('/')       
        })
        .catch(() => {
          // on cancel
        });
    }
  }
};
</script>

<style lang="scss">
.header0 {
  background: #717171;
  color: white;
  font-size: 1.2em;
  line-height: 1.2em;
  padding: 10px;
  text-align: center;
}
.user {
  background: #ededed;
  &-header {
    width: 100%;
    height: 30vw;
    background-color: #ab956d;
    color: #fff;
    display: flex;
    align-items: center;
    padding: 10px 15px;
    font-size: 14px;
  }
  &-header .avatar {
    height: 60px;
    width: 60px;
    background: #f5f5f5;
    border-radius: 50%;
  }
  &-header .info {
    margin-left: 10px;
    font-size: 18px;
    flex: 1;
  }
  &-header .info .nickname {
    font-size: 18px;
    margin-bottom: 5px;
  }
  &-group {
    margin-bottom: 10px;
  }
  &-links {
    padding: 15px 0;
    font-size: 12px;
    text-align: center;
    background-color: #fff;
    .van-icon {
      display: block;
      font-size: 24px;
    }
  }
}
</style>
