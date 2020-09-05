<template>
  <div id="app" >
    <router-view></router-view>
  </div>
</template>

<script>
import GetStarted from './components/commons/GetStarted'
import Home from './components/commons/home/Home'
import SignIn from './components/commons/sign-in/SignIn'

export default {
  name: 'App',
  data(){
    return{
    
    }
  },
  components: {
    GetStarted,
    Home,
    SignIn
  },
}
</script>

<style>
@import "./assets/css/base.css";
#app{
  width: 100%;
  min-width: 700px;
  height: 100%;
}
</style>
