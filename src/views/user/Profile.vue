<template>
  <div>
    <vHeader>修改个人信息</vHeader>
    <div class="from" style="margin-top: 20px">
      <div>
        <van-cell>修改用户信息</van-cell>
        <van-field
          name="昵称"
          label="昵称"
          placeholder="昵称"
          v-model="nickname"
          :rules="[{ required: true, message: '请填写昵称' }]"
        />
        <van-field
          name="邮箱"
          label="邮箱"
          placeholder="邮箱"
          v-model="email"
          :rules="[{ required: true, message: '请填写邮箱' }]"
        />
        <van-field
          name="手机"
          label="手机"
          placeholder="手机"
          v-model="phone"
          :rules="[{ required: true, message: '请填写手机号码' }]"
        />

        <div class="upload-wrapper">
          上传头像：
          <img :src="$baseUrl+headimgurl" class="avatar" v-show="headimgurl">
          <van-uploader :after-read="afterRead"/>
        </div>
      </div>
      <div>
        <van-cell>修改密码</van-cell>
        <van-field
          name="旧密码"
          label="旧密码"
          placeholder="请输入旧密码"
          v-model="orderPassword"
          type="password"
          :rules="[{ required: true, message: '请填写旧密码' }]"
        />
        <van-field
          name="新密码"
          label="新密码"
          v-model="newPassword"
          type="password"
          placeholder="新密码"
          :rules="[{ required: true, message: '请填写新密码' }]"
        />
      </div>
      <div class="btn-block">
        <van-button @click="onSubmit" round size="large" type="primary">保存头像</van-button>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions } from "vuex";
import vHeader from "../header/header";
import md5 from "js-md5";
import { log } from "util";

export default {
  name: "Profile",
  components: { vHeader },
  data() {
    return {
      headimgurl: "",
      nickname: "",
      orderPassword: "",
      newPassword: "",
      phone: "",
      email: "",
      user: {}
    };
  },
  mounted() {
    this.getUserMsg();
  },
  methods: {
    ...mapActions("user", ["updateUserInfo"]),
    afterRead(file) {
      // 此时可以自行将文件上传至服务器
      // console.log(file);
      let formData = new FormData();
      formData.append("file", file.file);
      this.$api
        .uploadImage(formData)
        .then(res => {
          this.headimgurl = res.data.filename;
        })
        .catch(err => {
          console.log(err);
        });
    },
    onSubmit() {
      if (this.headimgurl) {
        this.$api
          .updateUserAvatar({
            headimgurl: this.headimgurl,
            nickname: this.nickname,
            email: this.email,
            phone: this.phone
          })
          .then(res => {
            console.log(res);
            if (res.data.code == 0) {
              this.$toast(res.data.msg);
              this.$api
                .getUserInfo()
                .then(res => {
                  this.updateUserInfo(res.data.data);
                  this.$router.go(-1);
                })
                .catch(err => {
                  console.log(err);
                });
            } else {
              this.$toast(res.data.msg);
            }
          })
          .catch(err => {
            console.log(err);
          });
      } else if (this.orderPassword == "" && this.newPassword == "") {
        let data = {
          nickname: this.nickname,
          email: this.email,
          phone: this.phone
        };
        this.$api.updateUserMsg(data).then(res => {
          this.$toast("用户信息修改成功！");
          this.getUserMsg();
          this.$router.go(-1);
        });
      } else {
        if (md5(this.orderPassword) !== this.user.password) {
          this.$toast("您输入的当前密码不正确！");
        } else {
          this.$api
            .updataUserPassWord({
              password: md5(this.newPassword)
            })
            .then(res => {
              if (res.data.code == 0) this.$toast(res.data.msg);
              this.$router.go(-1);
            });
        }
      }
    },
    getUserMsg() {
      this.$api.getUserInfo().then(res => {
        if (res.data.code == 0) {
          (this.nickname = res.data.data.nickname),
            (this.email = res.data.data.email);
          this.phone = res.data.data.phone;
          this.user = res.data.data;
          this.updateUserInfo(res.data.data);
        }
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.upload-wrapper {
  background: #fff;
  padding: 15px;
}

.avatar {
  width: 80px;
  height: 80px;
  margin: 0 10px 10px 0;
  display: inline-block;
  vertical-align: middle;
}

.btn-block {
  margin: 15px;
}
</style>

