import Vue from 'vue/dist/vue.esm.js'

var app = new Vue({
  el:'.display-image-field',
  methods: {
    // 画像フィールドのdisplay処理
    open_field: function(){
      var elm = document.getElementsByClassName('add_image')
      if(elm) {
        var attr = elm[0].getAttribute('style')
        var image_icon = document.getElementById('edit-image-icon')
        if(attr) {
          elm[0].removeAttribute('style')
          image_icon.innerHTML = "remove"
        } else {
          elm[0].setAttribute('style', 'display:none;')
          image_icon.innerHTML = "add"
        }
      }
    }
  }
})
