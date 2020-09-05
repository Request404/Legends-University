export default {
  getUserPurchaseHistory(state){
    if(state.userInfo.userPurchaseHistory){
      return state.userInfo.userPurchaseHistory
    }else {
      return []
    }
  },
  getUserPurchaseComics(state){
    if(state.userInfo.userPurchaseHistory){
      let purchaseComics = []
      for(let history of state.userInfo.userPurchaseHistory){
        purchaseComics.push(history.purchaseComics)
      }
      return purchaseComics
    }else {
      return []
    }
  },
  getUserStarComics(state){
    if (state.userInfo.userStar){
      let starComics = []
      for(let star of state.userInfo.userStar){
        starComics.push(star.starComics)
      }
      return starComics
    }else {
      return []
    }
  },
  isStarFilter(state,getters){
    let starComicsId = []
    for (let comic of getters.getUserStarComics){
      starComicsId.push(comic.comicsId)
    }
    return function (comicsIdIndex) {
      let res = starComicsId.filter(starComicId=>{
        return starComicId == comicsIdIndex;
      })
      if(res.length){
        return true
      }else {
        return false
      }
    }
  },
  isPurchasedFilter(state,getters){
    let purchasedComicsId = []
    for (let comic of getters.getUserPurchaseComics) {
      purchasedComicsId.push(comic.comicsId)
    }
    return function (comicsIdIndex) {
      let res = purchasedComicsId.filter(purchasedComicId=>{
        return purchasedComicId == comicsIdIndex;
      })
      if(res.length){
        return true
      }else {
        return false
      }
    }
  }
}
