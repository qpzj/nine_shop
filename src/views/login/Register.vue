<template>
  <div>
    <div class="logo-wrap">
      <img alt="logo" class="app-logo" src="@/assets/logo.png">
      <h2 class="app-name">九商购物，欢迎您的加入！</h2>
    </div>
    <van-cell-group>
      <van-field
        @click-right-icon="$toast('请填写您的手机号码！')"
        clearable
        label="用户名"
        placeholder="请输入用户名"
        required
        right-icon="question-o"
        v-model="form.username"
      />

      <van-field label="密码" placeholder="请输入密码" required type="password" v-model="form.password"/>
      <van-field label="验证码" placeholder="请输入验证码" required type="text" v-model="form.text">
        <template #right-icon>
          <div @click="getCaptcha()" v-html="form.verification"></div>
        </template>
      </van-field>
    </van-cell-group>

    <div class="btn-wrap">
      <van-button
        :loading="loading"
        @click="onSubmit"
        block
        hairline
        loading-text="加载中..."
        round
        size="normal"
        type="primary"
      >注册</van-button>
    </div>
  </div>
</template>

<script>
import md5 from "js-md5";
export default {
  name: "register",
  data() {
    return {
      form: {
        username: "",
        password: "",
        verification: null,
        verificationCode: "",
        text: ""
      },
      loading: false
    };
  },
  created() {
    this.getCaptcha();
  },
  methods: {
    onSubmit() {
      let phone = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
      if (!phone.test(this.form.username)) {
        this.$toast("请输入正确的手机格式！");
      } else if (this.form.password == "") {
        this.$toast("密码不能为空！");
      } else if (this.form.text.toLowerCase() != this.form.verificationCode) {
        this.$toast("验证码输入错误！请重试！");
        this.getCaptcha();
      } else {
        this.loading = true;
        this.$api
          .register({
            username: this.form.username,
            password: md5(this.form.password) // 密码md5加密存储
          })
          .then(res => {
            this.loading = false;
            this.$toast("注册成功");
            this.$router.push("/login");
          })
          .catch(err => {
            console.log(err);
          });
      }
    },
    getCaptcha() {
      this.$api.getCaptcha().then(res => {
        this.form.verification = res.data.data.image;
        this.form.verificationCode = res.data.data.text.toLowerCase();
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.login-wrapper {
  height: 100%;
  background: #f0f0f0;
}
.logo-wrap {
  padding: 50px 0;
}
.logo-wrap .app-logo {
  width: 34vw;
  border-radius: 50%;
  margin: auto;
  margin-bottom: 15px;
}
.logo-wrap .app-name {
  color: black;
  font-weight: normal;
  line-height: 25px;
  text-align: center;
}
.btn-wrap {
  padding: 15px;
  margin-top: 30px;
}
</style>
