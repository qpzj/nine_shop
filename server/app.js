// 程序入口
const Koa = require('koa')
const app = new Koa()
const views = require('koa-views')
const json = require('koa-json')
const onerror = require('koa-onerror')
const bodyparser = require('koa-bodyparser')
const logger = require('koa-logger')
const jwt = require('koa-jwt')
// session
const session = require('koa-session');

// 配置文件
const config = require('./config/config')

// routes
const admin = require('./routes/admin.js')

const index = require('./routes/index')
const user = require('./routes/user')
const user_address = require('./routes/user_address')
const banner = require('./routes/banner')
const product = require('./routes/product')
const category = require('./routes/category')
const order = require('./routes/order')
const account = require('./routes/account')
const comment = require('./routes/comment')
const public = require('./routes/public')


// error handler
onerror(app)

// middlewares
app.use(bodyparser({
  enableTypes:['json', 'form', 'text']
}))
app.use(json())
app.use(logger())
app.use(require('koa-static')(__dirname + '/public'))

app.use(views(__dirname + '/views', {
  extension: 'ejs'
}))


//cors
app.use(async (ctx, next) => {
    ctx.set('Access-Control-Allow-Origin', '*');
    ctx.set('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
    ctx.set('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
    ctx.set('Access-Control-Allow-Credentials', true);
    if (ctx.method == 'OPTIONS') {
        ctx.body = 200;
    } else {
        await next();
    }
});

/* 当token验证异常时候的处理，如token过期、token错误 */
app.use((ctx, next) => {
    return next().catch((err) => {
        if (err.status === 401) {
            ctx.status = 401;
            // 未授权，访问被拒绝
            ctx.body = {
                code: 401,
                msg: err.originalError ? err.originalError.message : err.message
            }
        } else {
            throw err;
        }
    });
});

app.keys = ['some secret hurr'];
const CONFIG = {
   key: 'koa:sess',   //cookie key (default is koa:sess)
   maxAge: 86400000,  // cookie的过期时间 maxAge in ms (default is 1 days)
   overwrite: true,  //是否可以overwrite    (默认default true)
   httpOnly: true, //cookie是否只有服务器端可以访问 httpOnly or not (default true)
   signed: true,   //签名默认true
   rolling: false,  //在每次请求时强行设置cookie，这将重置cookie过期时间（默认：false）
   renew: false,  //(boolean) renew session when session is nearly expired,
};
app.use(session(CONFIG, app));

/* 路由权限控制 */
app.use(jwt({
    secret: config.jwt.secret
}).unless({
    // 设置login、register接口，可以不需要认证访问
    path: [
        /\/api\/v1\/user\/register/,
        /\/api\/v1\/user\/login/,
        /\/api\/v1\/public\/getCaptcha/,
        /\/api\/v1\/public\/upload/,
        /^((?!\/api).)*$/   // 设置除了私有接口外的其它资源，可以不需要认证访问
    ]
}));

/*自定义中间件*/
// const test = require('./middlewares/test')
// app.use(test())
/**************/

// logger
app.use(async (ctx, next) => {
  const start = new Date()
  await next()
  const ms = new Date() - start
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`)
})

// routes
app.use(index.routes(), index.allowedMethods())
app.use(user.routes(), user.allowedMethods())
app.use(user_address.routes(), user_address.allowedMethods())
app.use(banner.routes(), banner.allowedMethods())
app.use(product.routes(), product.allowedMethods())
app.use(category.routes(), category.allowedMethods())
app.use(order.routes(), order.allowedMethods())
app.use(account.routes(), account.allowedMethods())
app.use(comment.routes(), comment.allowedMethods())
app.use(public.routes(), public.allowedMethods())
// 启动路由
app.use(async(ctx,next)=>{
    
    await  next()
  })
app.use(admin.routes(), admin.allowedMethods())


// error-handling
app.on('error', (err, ctx) => {
  console.error('server error', err, ctx)
});

module.exports = app
