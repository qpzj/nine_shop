import request from '@/utils/request'

export default {
    CreateComment(data) {
        return request({
            url: '/comment/add_comment',
            method: 'post',
            data
        })
    },
    getComment(data) {
        return request({
            url: '/comment/get_comment',
            method: 'get',
            params: data
        })
    }
}
