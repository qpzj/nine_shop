<template>
  <div>
    <van-search placeholder="请输入搜索关键词" show-action v-model="value">
      <div @click="OnSearch(value)" slot="action">搜索</div>
    </van-search>
    <div class="container">
      <van-cell
        center
        is-link
        v-for="(item,index) of list"
        :key="index"
        @click="linkToDetail(item.id)"
      >
        <img class="img_product" :src="$baseUrl+item.main_img_url" slot="icon">
        <span>
          <p class="title">{{item.name}}</p>
          <p>
            <span class="price-name">
              价格:
              <span class="price-price">￥{{item.price}}</span>
            </span>
          </p>
        </span>
      </van-cell>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      list: [],
      value: "",
      id: ""
    };
  },
  created() {},
  mounted() {
    this.getProduct();
  },
  methods: {
    OnSearch(searchName) {
      window.location.replace('http://127.0.0.1:3000/moblic#/categoryAllProduct?searchName='+searchName);
      this.getProduct()
    },
    getProduct() {
      let id = this.$route.query.id;
      let searchName = this.$route.query.searchName;
      this.value = this.$route.query.searchName;
      if (id) {
        this.$api.getAllCategoryProduct(id).then(res => {
          res.data.data.forEach(element => {
            element.products.forEach(element => {
              this.list.push(element);
            });
          });
          this.list = this.randSort1(this.list);
        });
      } else if (searchName) {
        this.$api
          .searchProduct({
            product_name: searchName
          })
          .then(res => {
            if (res.data.data.length == "0") {
              this.$toast("查无此商品！");
            } else {
              this.list = res.data.data;
            }
          });
      } else {
        this.$toast("查询失败！");
      }
    },
    linkToDetail(id) {
      this.$router.push({ path: "/detail", query: { id } });
    },
    randSort1(arr) {
      for (var i = 0, len = arr.length; i < len; i++) {
        var rand = parseInt(Math.random() * len);
        var temp = arr[rand];
        arr[rand] = arr[i];
        arr[i] = temp;
      }
      return arr;
    }
  }
};
</script>

<style scoped lang="scss">
.search {
  height: auto;
}
.img_product {
  height: 66px;
  width: 66px;
}
.price-name {
  margin: 5%;
}
.price-price {
  color: #1aad19;
  font-size: 16px;
}
.container {
  .item {
    background-color: #fff;
    border-top: 1px solid #ddd;
  }
  .title {
    text-align: left;
    color: #888;
    margin: 10px;
    font-size: 13px;
  }
}
</style>
