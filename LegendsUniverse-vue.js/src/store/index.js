import Vue from 'vue'
import Vuex from 'vuex'
import getters from './getters'
import mutations from './mutations'
import actions from './actions'

Vue.use(Vuex)

let state = {
  number: 0,
  requestUrl: 'http://localhost:8081',
  signInState: false,
  userInfo: {
    signInId: null,
    signInUser: null,
    userEmail: null,
    userPurchaseHistory: null,
    userStar: null
  },
  comicsStore: [],
  championsData: [],
  regionsData: []
}

const store = new Vuex.Store({
  state,
  getters,
  mutations,
  actions
})

export default store
