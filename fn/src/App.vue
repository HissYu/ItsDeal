<template>
<div id="app" :style="{'background-image':'url('+src+')'}">
    <router-view @getSrc="imgSrc"></router-view>
</div>
</template> 

<script>
    import axios from 'axios';
    
    axios.defaults.baseURL='http://localhost/deal-fkgit/bg/public/index.php';

    export default{
        name:'app',
        components:{},
        data(){
            return{
                src:""
            }
        },
        methods:{
            imgSrc: function(isrc){
                this.src=isrc
            }
        }
    }
</script>

<style>
    #app{
        text-align: center;
        background-size: cover;
    }
    body{min-height: 100%;margin: 0;}
</style>