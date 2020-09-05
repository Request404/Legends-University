import VueRouter from 'vue-router'
import Vue from  'vue'

const Home = () => import('../components/commons/home/Home')
const GetStarted = ()=> import('../components/commons/GetStarted')
const SignIn = () => import('../components/commons/sign-in/SignIn')
const Champions = () => import('../main_content/champions/Champions')
const Regions = () => import('../main_content/regions/Regions')
const Comics = () => import('../main_content/comics/Comics')
const Profile = () => import('../main_content/profile/Profile')
const SginInForUniverse = () => import('../components/commons/sign-in/SignInForm')

const routerReplace = VueRouter.prototype.replace
VueRouter.prototype.replace = function replace(location) {
  return routerReplace.call(this, location).catch(error=> error)
}

Vue.use(VueRouter)



const routes = [
  {
    path: '',
    component: GetStarted,
    meta:{
      title: 'Welcome to the Universe',
    }
  },{
    path:'/universe',
    component: Home,
    children:[
      {
        path:'',
        redirect: 'comics',

      },
      {
        path:'comics',
        component: Comics,
        meta: {
          title: 'Universe of league of legends'
        }
      },
      {
        path: 'champions',
        component: Champions,
        meta:{
          title: 'Champions-Universe of league of legends'
        },
      },
      {
        path:'regions',
        component: Regions,
        meta: {
          title: 'Regions-Universe of league of legends'
        }
      },
      {
        path:'profile',
        component: Profile,
        meta: {
          title: 'Profile-Universe of league of legends'
        }
      }
    ]
  },
  {
    path:'/account for Universe-of-league-of-legends',
    component: SignIn,
    meta:{
      title: 'Account-Universe of league of legends'
    }
  }
]


const router =  new VueRouter({
  routes,
  mode: 'history'

})

router.beforeEach((to,from,next)=>{
  document.title = to.meta.title
  next()
})

export default router
