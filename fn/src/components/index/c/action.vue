<template>
  <div class="action">
    <template v-if="loggedin===false">
      <a href="register">注册</a>
      <a href="login">登录</a>
    </template>
    <template v-else>
      <el-dropdown>
          <a class="el-dropdown-link" :href="'profile/'+userid">
            {{username+'瓜皮'}}<i class="el-icon-arrow-down"></i>
          </a>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item @click="logout()">退出</el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </template>
  </div>
</template>

<script>
export default {
  data(){
    return{
      loggedin:false,
      user:{
        userid:{},
        username:{}
      }
    }
  }
}
</script>
<style>
.action a,.action div{float: right; margin-left: 15px}
</style>
