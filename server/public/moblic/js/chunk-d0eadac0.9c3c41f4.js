(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-d0eadac0"],{"8e5f":function(e,t,o){"use strict";var r=o("cd0d"),n=o.n(r);n.a},ca35:function(e,t,o){"use strict";o.r(t);var r=function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("div",[o("v-header",[e._v("地址编辑")]),o("van-cell-group",{staticStyle:{"margin-top":"20px"}},[o("van-field",{attrs:{"error-message":e.error1,label:"姓名",placeholder:"请输入姓名",required:""},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}}),o("van-field",{attrs:{"error-message":e.error2,label:"手机号",placeholder:"请输入手机号",required:""},model:{value:e.form.phone,callback:function(t){e.$set(e.form,"phone",t)},expression:"form.phone"}}),o("van-field",{attrs:{"error-message":e.error3,label:"地区",placeholder:"请选择地区",readonly:"",required:""},on:{click:function(t){e.show=!0}},model:{value:e.form.region,callback:function(t){e.$set(e.form,"region",t)},expression:"form.region"}}),o("van-field",{attrs:{"error-message":e.error4,autosize:"",label:"详细地址",placeholder:"请输入详细地址",required:"",rows:"2",type:"textarea"},model:{value:e.form.detail,callback:function(t){e.$set(e.form,"detail",t)},expression:"form.detail"}})],1),o("div",{staticClass:"btn-block"},[o("van-button",{attrs:{round:"",size:"large",type:"primary"},on:{click:e.onSubmit}},[e._v("保存")])],1),o("div",{staticClass:"btn-block"},[o("van-button",{attrs:{round:"",size:"large",type:"danger"},on:{click:e.onDelete}},[e._v("删除")])],1),o("van-popup",{style:{height:"40%"},attrs:{position:"bottom"},model:{value:e.show,callback:function(t){e.show=t},expression:"show"}},[o("van-area",{attrs:{"area-list":e.areaList,value:e.form.country,title:"请选择省市区"},on:{cancel:e.onCancel,confirm:e.onConfirm}})],1)],1)},n=[],a=(o("7f7f"),o("e833")),i=o("df6b"),s={data:function(){return{areaList:a["a"],addressInfo:null,form:{name:"",phone:"",region:"",province:"",city:"",country:"",detail:""},error1:"",error2:"",error3:"",error4:"",show:!1}},created:function(){this.editContect()},methods:{editContect:function(){var e=this,t=this.$route.query.item;t&&this.$api.getAddressOne({id:t.id}).then(function(t){var o=t.data.data;e.addressInfo=o,e.form.name=o.name,e.form.phone=o.mobile,e.form.province=o.province,e.form.city=o.city,e.form.country=o.country,e.form.region=e.getAreaName(o.province,o.city,o.country),e.form.detail=o.detail})},getAreaName:function(e,t,o){return a["a"].province_list[e]+a["a"].city_list[t]+a["a"].county_list[o]},onDelete:function(){var e=this;this.addressInfo.id&&this.$api.deleteUserAddress({id:this.addressInfo.id}).then(function(t){0==t.data.code?(e.$toast(t.data.msg),e.$router.go(-1)):(e.$toast(t.data.msg),localStorage.setItem("contect",null))}).catch(function(e){console.log(e)})},onSubmit:function(){var e=this;this.form.name?(this.error1="",/^1[3456789]\d{9}$/.test(this.form.phone)?(this.error2="",this.form.region?(this.error3="",this.form.detail?(this.error4="",null===this.addressInfo?this.$api.addUserAddress({name:this.form.name,mobile:this.form.phone,province:this.form.province,city:this.form.city,country:this.form.country,detail:this.form.detail}).then(function(t){0==t.data.code?(e.$toast(t.data.msg),e.$router.go(-1)):e.$toast(t.data.msg)}).catch(function(e){console.log(e)}):this.$api.updateUserAddress({id:this.addressInfo.id,name:this.form.name,mobile:this.form.phone,province:this.form.province,city:this.form.city,country:this.form.country,detail:this.form.detail}).then(function(t){0==t.data.code?(e.$toast(t.data.msg),localStorage.setItem("contect",null),e.$router.go(-1)):e.$toast(t.data.msg)}).catch(function(e){console.log(e)})):this.error4="请输入详细地址!"):this.error3="请选择地区!"):this.error2="手机号格式错误!"):this.error1="请输入姓名!"},onConfirm:function(e){console.log(e),this.form.province=e[0].code,this.form.city=e[1].code,this.form.country=e[2].code,this.form.region=e[0].name+e[1].name+e[2].name,this.show=!1},onCancel:function(){this.show=!1}},components:{vHeader:i["a"]}},c=s,l=(o("8e5f"),o("2877")),d=Object(l["a"])(c,r,n,!1,null,"b7c0d966",null);t["default"]=d.exports},cd0d:function(e,t,o){}}]);