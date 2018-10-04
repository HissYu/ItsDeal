<template>
  <div id="bg">
    <el-row>
      <el-col :span="4" :offset="2">
        <logo></logo>
      </el-col>
      <el-col :span="4" :offset="12">
        <action></action>
      </el-col>
    </el-row>
    <div class="item-detail">
      <el-card>
        <div slot="header" class="clearfix">
          <span>物品</span>
        </div>
        <div class="item">
          <el-carousel height="150px">
            <el-carousel-item v-for="img in item" :key="img">
              <img :src="img" alt="">
            </el-carousel-item>
          </el-carousel>
          <div class="description">
            <h2>{{item}}</h2>
            <h5>{{item}}</h5>
            <p>{{item}}</p>
            <el-button type="danger">LOCK</el-button>
            <div class="tags">
              <el-tag v-for="i in item" :key="i">{{i}}</el-tag>
            </div>
          </div>
        </div>
      </el-card>
    </div>
    <div class="comments">
      <h3>卖家</h3>
      <h3>
        <div class="rate">
          <el-rate
            v-model="seller"
            disabled
            show-score
            text-color="#ff9900"
            score-template="{value}">
          </el-rate>
        </div>
        {{seller}}
      </h3>
      <div class="iconbox"><a :href="'/profile?id='+seller"><img :src="seller" alt=""></a></div>
      <div class="main-comment">
        <div class="comment-content">
          <p class="content"></p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import logo from './c/logo'
import action from './c/action'

export default {
  components:{
    logo:logo,
    action:action,
  },
  data(){
    return{

    }
  }
}
</script>
