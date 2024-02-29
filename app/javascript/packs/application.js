import Vue from 'vue';
import App from '../App.vue';
import router from '../routes';
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue/dist/bootstrap-vue.css';

Vue.use(BootstrapVue);
Vue.use(IconsPlugin);

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: (h) => h(App),
    router,
  }).$mount();

  document.body.appendChild(app.$el);
});
