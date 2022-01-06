<template>
  <div class="home">
    <!-- 商品搜索 -->
    <van-search
      placeholder="请输入搜索关键词"
      show-action
      v-model="search">
      <div slot="action" @click="OnSearch(search)">搜索</div>
    </van-search>
    <!-- 轮播图功能 -->
    <van-swipe class="my-swipe" :autoplay="3000" :duration="800" indicator-color="white">
      <van-swipe-item
        :key="index"
        @click="linkToDetail(item.key_word)"
        v-for="(item, index) in bannerList"
      >
        <img :src="$baseUrl+item.img.url" :alt="item.key_word">
      </van-swipe-item>
    </van-swipe>

    <!-- 九宫格功能 -->
    <div class="category">
      <div class="cell" v-for="(item,index) of categoryList" :key="index" @click="linkToCategoryAllProduct(item.id)">
        <img :src="$baseUrl+item.img.url" alt>
        <span>{{item.name}}</span>
      </div>
      <div class="cell" @click="$router.push('/category')">
        <img src="../../assets/more.png" alt>
        <span>更多</span>
      </div>
    </div>
    <div class="recent">
      <h2 class="recent-title">最近新品</h2>
      <product-list :products="recentList"></product-list>
    </div>
    <!-- <van-divider>已经到底了</van-divider> -->
    <tabbar></tabbar>
  </div>
</template>

<script>
// @ is an alias to /src
import Tabbar from "@/components/Tabbar.vue";
import ProductList from "@/components/ProductList.vue";
import { get } from "http";

export default {
  name: "home",
  components: {
    Tabbar,
    ProductList
  },
  data() {
    return {
      bannerList: [],
      topicList: [],
      recentList: [],
      categoryList: [],
      value: "",
      categoryItem_id: "",
      search: ''
    };
  },
  created() {
    this.getData();
    this.getAllCategory();
  },
  methods: {
    OnSearch(searchName) {
      this.$router.push({ path: "/categoryAllProduct", query: { searchName } });
    },
    linkToDetail(id) {
      this.$router.push({ path: "/detail", query: { id } });
    },
    linkToCategoryAllProduct(id) {
      this.$router.push({ path: "/categoryAllProduct", query: { id } });
    },
    getData() {
      this.$api
        .getBannerList()
        .then(res => {
          this.bannerList = res.data.data.banner_items;
        })
        .catch(err => {
          console.log(err);
        });
      this.$api
        .getRecentList()
        .then(res => {
          this.recentList = res.data.data;
          console.log(this.recentList)
        })
        .catch(err => {
          console.log(err);
        });
    },
    getAllCategory() {
      this.$api.getAllCategory().then(res => {
        this.categoryList = res.data.data;
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.home {
  padding-bottom: 50px;
  .topic-title,
  .recent-title {
    padding: 10px 0;
    font-size: 16px;
    color: #ab956d;
    text-align: center;
  }
  .category {
    padding: 10px;
    display: flex;
    flex-wrap: wrap;
    background: white;
    .cell {
      width: 31vw;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 10px;
      img {
        width: 30px;
      }
    }
  }
  .topic-list {
    overflow: hidden;
    .topic-item {
      width: 50%;
      float: left;
      box-sizing: border-box;
      img {
        width: 100%;
      }
      &:nth-child(1) {
        border-right: 1px solid #fff;
        border-bottom: 1px solid #fff;
      }
      &:nth-child(2) {
        border-left: 1px solid #fff;
        border-bottom: 1px solid #fff;
      }
      &:last-child {
        width: 100%;
      }
    }
  }
}
</style>
