<template>
  <div :class="'header0'">
    <van-icon style="margin-left: 5px" name="arrow-left" @click="$router.go(-1)" />
    <!-- <van-icon v-if="status" name="arrow-left" @click="$router.go(-1)"/> -->
    <slot></slot>
    <!-- <van-icon v-if="status" name="home-o" @click="$router.push('/home')"/> -->
    <span @click="$router.push('/home')">
      <img src="../../assets/home1.png" style="float:left;height:1.2em;width:1.2em;">
    </span>
  </div>
</template>

<script>
export default {
  name: "v-header",
  data() {
    return {};
  },
  props: {},
  methods: {},
  components: {},
  mounted() {},
  beforeDestroy() {}
};
</script>

<style lang="scss" scoped>
  .header0{
    background: #717171;
    color: white;
    font-size: 1.2em;
    line-height: 1.2em;
    padding: 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  span{
    margin-right: 10px;
  }
</style>
