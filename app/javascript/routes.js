import Vue from 'vue';
import VueRouter from 'vue-router';

import CustomerLayout from './layout/CustomerLayout.vue';
import AdminLayout from './layout/AdminLayout.vue';

import CustomerHome from './pages/Customer/Home/Index.vue';
import AdminLogin from './pages/Admin/Login/Index.vue';

Vue.use(VueRouter);

const router = new VueRouter({
  mode: 'history',
  base: '',
  routes: [
    {
      path: '/',
      component: CustomerLayout,
      children: [
        { path: '/', meta: { title: 'Trang chủ' }, name: 'home', component: CustomerHome }
      ]
    },
    // {
    //   path: '/admin',
    //   component: AdminLayout,
    //   children: [
    //     { path: '/', meta: { title: 'Quản trị đăng nhập' }, name: 'admin_login', component: AdminLogin }
    //   ]
    // },
    { path: '/admin', meta: { title: 'Quản trị đăng nhập' }, name: 'admin_login', component: AdminLogin }
  ],
  linkActiveClass: 'active',
});

const DEFAULT_TITLE = 'Phone Business';

router.afterEach((to) => {
  Vue.nextTick(() => {
    document.title = to.meta.title || DEFAULT_TITLE;
    document.body.scrollTop = document.documentElement.scrollTop = 0;
  });
});

export default router;
