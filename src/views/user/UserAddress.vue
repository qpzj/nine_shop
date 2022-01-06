<template>
  <div class="user_address">
    <v-header>我的地址</v-header>
    <van-address-list
      v-model="address_flag"
      :list="list"
      default-tag-text="默认"
      @add="onAdd"
      @select="onSelect"
      @edit="onEdit"
    />
  </div>
</template>
<script>
import vHeader from "../header/header";
import areaList from "@/assets/js/areaList.js";
export default {
  data() {
    return {
      list: [],
      address_flag: 0
    };
  },
  mounted() {
    this.getContect();
  },
  methods: {
    onAdd() {
      this.$router.push("/address");
    },
    onEdit(item, index) {
      this.$router.push({ path: "/address", query: { item } });
    },
    onSelect(item, index) {
      this.$api.updateAddressFlag({id: item.id}).then(res => {
        if(res.data.code == 0) {
            this.$toast(res.data.msg);
            this.list = []
            this.getContect()
        }
      })
    },
    getContect() {
      this.$api
        .getUserAddress()
        .then(res => {
          if (res.data.code === 0) {
            res.data.data.forEach((element, index) => {
              if (element.address_flag == 1) {
                this.address_flag = element.id;
                this.list.push({
                  id: element.id,
                  name: element.name,
                  tel: element.mobile,
                  address:
                    this.getAreaName(
                      element.province,
                      element.city,
                      element.country
                    ) + element.detail,
                  isDefault: true
                });
              } else {
                this.list.push({
                  id: element.id,
                  name: element.name,
                  tel: element.mobile,
                  address:
                    this.getAreaName(
                      element.province,
                      element.city,
                      element.country
                    ) + element.detail
                });
              }
            });
          }
        })
        .catch(err => {
          console.log(err);
        });
    },
    getAreaName(val1, val2, val3) {
      return (
        areaList.province_list[val1] +
        areaList.city_list[val2] +
        areaList.county_list[val3]
      );
    }
  },
  components: {
    vHeader
  }
};
</script>
<style lang="scss" scoped>
</style>
