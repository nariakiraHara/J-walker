import Vue from 'vue/dist/vue.esm.js'
import VueMarkdown from 'vue-markdown'

var el_article_content = document.getElementById('article_content').value
el_article_content = el_article_content ? el_article_content : ''
var app = new Vue({
  el:'.article-rendering',
  data () {
    return {
      contentText: el_article_content
    }
  },
  components: {
    VueMarkdown
  }
})
