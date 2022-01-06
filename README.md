# nine_shop

基于Vue-CLI3.0，前端用Vue全家桶，后端用Koa2+Sequelize+Mysql，通过pm2部署的一个SPA应用。


## 安装与运行

### 启动后端服务
 1. 进入server目录，安装依赖
 ```
  npm install
 ```
 2. server目录下启动koa2项目：
 ```
  npm nun dev
 ```


### 运行前端项目
1. 安装依赖

```
npm install
```

2. 运行项目
```
npm run serve
```
 
3. 打包构建
```
npm run build
```





### 项目介绍

#### 已实现的需求

​		(1) 商城的普通用户可以注册、登录和浏览商品。

​		(2) 商城有轮播推广功能、商品详细分类、新品推送功能、商品搜索功能、购物车。

​		(3) 商城的普通用户可以修改个人信息、上传头像、修改密码。

​		(4) 商城的普通用户可以修改送货地址，添加多个送货地址。

​		(5) 商城的普通用户可以把自己需要的商品加入购物车、调整数量、选择需要购买的商品。

​		(6) 商城的普通用户下单后可以通过历史订单查看订单详情。

​		(7) 商城的普通用户能在商品下面发表评论。

​		(8) 商城的普通用户可以充值消费（支付功能没有对接业务）。

​		(9) 商城的普通用户可以退出登录。

#### 业务流程图

 ![image](https://github.com/qpzj/nine_shop/images-folder/流程图.png)

#### 前端

- 登陆

 ![image](https://github.com/qpzj/nine_shop/images-folder/登陆.png)

 ![image](https://github.com/qpzj/nine_shop/images-folder/注册.png)

- 首页

![image](https://github.com/qpzj/nine_shop/images-folder/首页.png)

![image](https://github.com/qpzj/nine_shop/images-folder/商品详情.png)

- 商品分类

![image](https://github.com/qpzj/nine_shop/images-folder/分类.png)

![image](https://github.com/qpzj/nine_shop/images-folder/分类1.png)

- 商品详情

![image](https://github.com/qpzj/nine_shop/images-folder/评论.png)

![image](https://github.com/qpzj/nine_shop/images-folder/购物车.png)

- 个人信息

![image](https://github.com/qpzj/nine_shop/images-folder/修改个人信息.png)

![image](https://github.com/qpzj/nine_shop/images-folder/地址编辑.png)

![image](https://github.com/qpzj/nine_shop/images-folder/多地址切换.png)

- 订单历史

![image](https://github.com/qpzj/nine_shop/images-folder/订单历史.png)

![image](https://github.com/qpzj/nine_shop/images-folder/订单历史2.png)



#### 后台管理

- 首页

![image](https://github.com/qpzj/nine_shop/images-folder/后台首页.png)

- 商品管理

![image](https://github.com/qpzj/nine_shop/images-folder/商品管理.png)

![image](https://github.com/qpzj/nine_shop/images-folder/商品评价.png)

- 分类管理

![image](https://github.com/qpzj/nine_shop/images-folder/分类列表.png)

![image](https://github.com/qpzj/nine_shop/images-folder/子分类列表.png)

- 公告管理

![image](https://github.com/qpzj/nine_shop/images-folder/广告列表.png)

![image](https://github.com/qpzj/nine_shop/images-folder/广告列表2.png)

- 订单管理

![image](https://github.com/qpzj/nine_shop/images-folder/订单列表.png)

![image](https://github.com/qpzj/nine_shop/images-folder/消费列表.png)
