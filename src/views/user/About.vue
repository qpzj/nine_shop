<template>
  <div class="about">
    <v-header>关于此项目</v-header>
    <van-cell-group style="margin: 20px">
      <van-cell center>
          <p class="cell">版本： V0.0.1</p>
          <p class="cell">开发者： 青苹竹九</p>
          <p class="cell">联系方式： 15975238476</p>
          <span class="cell">项目开发于：<p> 2020.11.22 ~ 2020.12.11</p></span>
          <p style="margin-top: 30px" class="cell">备注： 此项目是一个简单的网上商城购物模型，因为个人开发者申请不了微信支付接口，所以支付那块做了一张电子表代替，部分功能还未上线。请耐心等待后续更新！</p>
      </van-cell>
    </van-cell-group>
  </div>
</template>

<script>
import vHeader from "../header/header";
export default {
  name: "adout",
  methods: {},
  components: {
    vHeader
  }
};
</script>

<style lang="scss" scoped>
.van-cell--center {
    -webkit-box-align: center;
    -webkit-align-items: center;
    align-items: center;
    line-height: 5vh;
}
.cell {
    font-size: 20px;
    margin-bottom: 5px;
}
</style>