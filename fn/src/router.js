import homepage from './components/index/homepage';
import lookaround from './components/index/lookaround';
import login from './components/index/login';
import register from './components/index/register';
import profile from './components/index/profile';

const routes = [
    {path:'/', component: homepage},
    {path:'/walkaround',component: lookaround},
    {path:'/login',component:login},
    {path:'/register',component:register},
    {path:'/profile',component:profile},
]

export default routes