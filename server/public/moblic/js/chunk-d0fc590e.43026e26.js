(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-d0fc590e"],{"0613":function(t,e,a){"use strict";var n=a("8ad6"),r=a.n(n);r.a},"0dfa":function(t,e,a){},"2fce":function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAB0UlEQVRYR+2W0U0DMRBEZyqAEugAUgGhAkgFJB1ABaQDoAJCBYQKgAoIHdABUMGikdbI55zv7AtKhMT+5CPnm+fx7pyJHRd3rI+/CWBm+wDOAZy5g0uSt0PcrHbAxZ8AHCWCKwAnJD9rQKoAEvFHAHMX0+8pgGqIYoBE/J7kNN6pmS38WKogagCeARwDeCE5brPZzCR+CEA9MSk5iiKAaHdvAMa5c3aXBCqIBclZH0QvQKl4EKqF6ASoFR8CkQUYKl4L0QpgZhcArgF8ad5JvvedZaYplRXqiT0AM5KalEatAZiZxuvOxdVw6uzBZWadEA0AM1O0PvyWeHQcMcSE5DL8lwKEWR9tuvPUMnfiNc2RFCCkWVh/SfJmsP8AzEy7VUyHaqRoCqCvnCCUdGqcbOqVQpmZ+bNqaDk8jYOsawy1sBXAp+QKgIBVmhJ1uQQa5QDZjVQDeNJ9eKOGCdE3YkVytA0AHY/uAz+7CjaTbBvrrJOCHeLAP8C/A1t1QDfccPUOE6ZcVzquTYEHWDyJygkl4aAc0E1XYZOrGECgSs5c6bq+FlKdY6g//dMsyw9a3jwPL/VkTJ3SEgWVLqit4r0ApXm/yXO9l9JNXl6yducA30ghSjBrBOfqAAAAAElFTkSuQmCC"},"3b1b":function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("vHeader",[t._v("订单历史")]),a("div",{staticClass:"from",staticStyle:{"margin-top":"20px"}},[a("div",t._l(t.order_list,function(e,n){return a("div",{key:n,staticClass:"orderBox"},[a("van-field",{attrs:{label:"订单编号",readonly:""},model:{value:e.order_no,callback:function(a){t.$set(e,"order_no",a)},expression:"item.order_no"}}),a("van-field",{attrs:{label:"订单金额",readonly:""},model:{value:e.total_price,callback:function(a){t.$set(e,"total_price",a)},expression:"item.total_price"}}),a("van-field",{attrs:{label:"订单数量",readonly:""},model:{value:e.total_count,callback:function(a){t.$set(e,"total_count",a)},expression:"item.total_count"}}),1==e.status?a("van-field",{attrs:{label:"订单状态",readonly:""},model:{value:t.statusSuccess,callback:function(e){t.statusSuccess=e},expression:"statusSuccess"}}):t._e(),a("van-field",{attrs:{label:"联系人地址",readonly:""},model:{value:e.address,callback:function(a){t.$set(e,"address",a)},expression:"item.address"}}),a("van-cell",{staticStyle:{color:"blue"},attrs:{center:"",title:"查看订单商品详情","is-link":""},on:{click:function(a){return t.linkToOrderDetail(e.id)}}})],1)}),0)])],1)},r=[],o=a("cebc"),c=a("2f62"),s=a("df6b"),l={name:"Profile",components:{vHeader:s["a"]},data:function(){return{order_list:[],statusSuccess:"已支付"}},mounted:function(){this.getOrder()},methods:Object(o["a"])({},Object(c["b"])("user",["updateUserInfo"]),{getOrder:function(){var t=this;this.$api.getOrderList().then(function(e){0==e.data.code&&(t.order_list=e.data.data.reverse())})},linkToOrderDetail:function(t){this.$router.push({path:"/orderDetail",query:{id:t}})}})},i=l,u=(a("9e7f"),a("2877")),d=Object(u["a"])(i,n,r,!1,null,"2df647b2",null);e["default"]=d.exports},"8ad6":function(t,e,a){},"9e7f":function(t,e,a){"use strict";var n=a("0dfa"),r=a.n(n);r.a},df6b:function(t,e,a){"use strict";var n=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{class:"header0"},[n("van-icon",{staticStyle:{"margin-left":"5px"},attrs:{name:"arrow-left"},on:{click:function(e){return t.$router.go(-1)}}}),t._t("default"),n("span",{on:{click:function(e){return t.$router.push("/home")}}},[n("img",{staticStyle:{float:"left",height:"1.2em",width:"1.2em"},attrs:{src:a("2fce")}})])],2)},r=[],o={name:"v-header",data:function(){return{}},props:{},methods:{},components:{},mounted:function(){},beforeDestroy:function(){}},c=o,s=(a("0613"),a("2877")),l=Object(s["a"])(c,n,r,!1,null,"03f1a737",null);e["a"]=l.exports}}]);