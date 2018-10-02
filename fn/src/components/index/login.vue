<template>
  <div id="bg">
    <el-row>
      <el-col :span="6">
        <logo></logo>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="6" :offset="18">
        <el-card class="form-container">
          <el-input v-model="account" placeholder="用户名"></el-input>
          <el-input v-model="password" placeholder="密码"></el-input>
          <div class="btn-container">
            <a href="register">没有账号？注册</a>
            <el-button type="primary" @click="login()" class="sbmt-btn">登录</el-button>
          </div>
        </el-card>
      </el-col>
    </el-row>  
  </div>
</template>
<script>
import logo from './c/logo';
import bg from '../../assets/images/login_bg.jpg'

export default {
  components:{
    logo:logo,
  },
  data(){
    return{
      account:"",
      password:"",
      src:bg,
    }
  },
  methods:{
    sendSrc(){
      this.$emit('getSrc',this.src)
    }
  },
  created(){
    this.sendSrc()
  }
}
</script>
<style>
.form-container{
  opacity: 0.9;
}
.form-container *{
  margin: 5px 0;
}
.btn-container{
  display: flex;
  justify-content: space-between;
  align-items: center;
}
</style>
