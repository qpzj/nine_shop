<template>
  <div class="categroy_list">
    <vHeader>{{title}}</vHeader>
    <p v-if="product_list == ''" class="none">暂无上架商品！</p>
    <product-list style="margin-top: 30px" :products="product_list"></product-list>
  </div>
</template>
<script>
import vHeader from "../header/header";
import ProductList from "@/components/ProductList.vue";
export default {
  data() {
    return {
      product_list: [],
      title: ""
    };
  },
  components: { vHeader, ProductList },
  mounted() {
    this.getProductList();
  },
  methods: {
    getProductList() {
      this.$api.getCategory_product(this.$route.query.id).then(res => {
        this.title = res.data.data.name;
        this.product_list = res.data.data.products;
      });
    }
  }
};
</script>
<style scoped lang="scss" scoped>
.none {
  margin-top: 20%;
  text-align: center;
  font-size: 20px;
  font-weight: bold
}
</style>
