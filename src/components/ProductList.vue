<template>
  <div class="product-list">
    <div
      :key="item.id"
      @click="linkToDetail(item.id)"
      class="product-item"
      v-for="item in productList"
    >
      <img :alt="item.name" :src="$baseUrl+item.main_img_url" class="product-image">
      <div class="product-info">
        <h2 class="product-name">{{ item.name }}</h2>
        <p class="product-price">¥&nbsp;{{ item.price }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ProductList",
  props: {
    products: {
      type: Array,
      default: () => []
    }
  },
  data() {
    return {};
  },
  computed: {
    productList() {
      return this.products;
    }
  },
  methods: {
    linkToDetail(id) {
      this.$router.push({ path: "/detail", query: { id } });
    }
  }
};
</script>

<style scoped lang="scss">
.product-list {
  margin: 0 10px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  .product-item {
    width: 48.5%;
    border-radius: 5px;
    margin-bottom: 10px;
    background-color: #ffffff;
    text-align: center;
    .product-image {
      margin: 5px auto;
      width: 80%;
      border-radius: 5px;
    }
    .product-info {
      text-align: center;
      margin-bottom: 10px;
      color: #333;
      .product-name {
        font-size: 14px;
        font-weight: normal;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
      }
      .product-price {
        font-size: 17px;
        color: red;
        font-weight: bold
      }
    }
  }
}
</style>
