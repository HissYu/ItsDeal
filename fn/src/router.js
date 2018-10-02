import homepage from './components/index/homepage';
import lookaround from './components/index/lookaround';
import login from './components/index/login';


const routes = [
    {path:'/', component: homepage},
    {path:'/walkaround',component: lookaround},
    {path:'/login',component:login},
]

export default routes