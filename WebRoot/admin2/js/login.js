

//验证登录
function checkLogin() {
    if (loginform.username.value != "") {
        if (loginform.password.value != "") {
            return ture
        } else {
            alert('密码不能为空');
            return false
        }

    } else {
        alert('用户名不能为空');
        return false
    }
}