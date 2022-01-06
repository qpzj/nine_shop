const router = require('koa-router')()
const svgCaptcha = require('svg-captcha')
const multer = require('koa-multer')
var path = require('path');
var datetime = require('silly-datetime');
var mkdirp = require('mkdirp');

router.prefix('/api/v1')

router.get('/public/getCaptcha', async (ctx) => {
    var captcha = svgCaptcha.create({    //这种生成的是随机数验证码
        size: 4,    //验证码长度
        fontSize: 50,   //字体大小
        ignoreChars: '0oO1ilI', // 验证码字符中排除 0o1i
        width: 100,
        height: 40,
        background: '#eee'
    });
    console.log(captcha.text);
    // ctx.response.type = 'image/svg+xml';
    ctx.body = {
        code: 0,
        msg: '验证码返回成功',
        data: {
            image: captcha.data,
            text: captcha.text
        }
    };
});


//配置
var storage = multer.diskStorage({
    //文件保存路径
    destination: async function (req, file, cb) {
        var time = datetime.format(new Date(), 'YYYY-MM-DD');
        let dir = path.join('public/uploads/', time);
        await mkdirp(dir)//mkdirp是一个异步方法
            + cb(null, dir)
    },
    //修改文件名称
    filename: function (req, file, cb) {
        var fileFormat = (file.originalname).split(".");  //以点分割成数组，数组的最后一项就是后缀名
        cb(null, Date.now() + "." + fileFormat[fileFormat.length - 1]);
    }
})
//加载配置
var upload = multer({ storage: storage });

router.post('/public/upload', upload.single('file'), async (ctx, next) => {
    var time = datetime.format(new Date(), 'YYYY-MM-DD');
    const prefix = '/uploads/' + time + '/'
    ctx.body = {
        filename: prefix + ctx.req.file.filename//返回文件名
    }
})

module.exports = router
