import Vue from 'vue/dist/vue.esm.js'
import VueMarkdown from 'vue-markdown'

var app = new Vue({
  el:'#article-rendering',
  data () {
    return {
      contentText: ''
    }
  },
  components: {
    VueMarkdown
  }
});
