import Vue from 'vue';
import App from './App';
import 'element-ui/lib/theme-chalk/index.css';
import ElementUI from 'element-ui';
import VueRouter from 'vue-router';
import routes from './router';

Vue.use(VueRouter);
Vue.use(ElementUI);

const router = new VueRouter({
    mode: 'history',
    base: __dirname,
    routes
});

new Vue({
    el:'#app',
    template:'<App />',
    router,
    render:h=>h(App)
}).$mount('#app');