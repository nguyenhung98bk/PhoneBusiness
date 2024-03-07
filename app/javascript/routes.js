import Vue from 'vue';
import VueRouter from 'vue-router';
import store from './stores/index';

import CustomerLayout from './layout/CustomerLayout.vue';
import AdminLayout from './layout/AdminLayout.vue';
import StaffLayout from './layout/StaffLayout.vue';

import CustomerHome from './pages/Customer/Home/Index.vue';

import AdminLogin from './pages/Admin/Login/Index.vue';
import AdminHome from './pages/Admin/Home/Index.vue';
import AdminStaffIndex from './pages/Admin/Staff/Index.vue';
import AdminStaffForm from './pages/Admin/Staff/Form.vue';

import StaffLogin from './pages/Staff/Login/Index.vue';
import StaffCategory from './pages/Staff/Category/Index.vue';
import StaffSupplier from './pages/Staff/Supplier/Index.vue';
import StaffSupplierForm from './pages/Staff/Supplier/Form.vue';
import StaffItem from './pages/Staff/Item/Index.vue';
import StaffItemForm from './pages/Staff/Item/Form.vue';

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
    {
      path: '/admin',
      component: AdminLayout,
      children: [
        { path: '', meta: { title: 'Trang chủ quản trị' }, name: 'admin-home', component: AdminHome },
        { path: 'staffs', meta: { title: 'Danh sách nhân viên' }, name: 'admin-staff-index', component: AdminStaffIndex },
        { path: 'staff/create', meta: { title: 'Tạo mới nhân viên' }, name: 'admin-staff-create', component: AdminStaffForm },
        { path: 'staff/:id/edit', meta: { title: 'Chỉnh sửa nhân viên' }, name: 'admin-staff-edit', component: AdminStaffForm },
      ]
    },
    {
      path: '/staff',
      component: StaffLayout,
      children: [
        { path: '', meta: { title: 'Trang chủ nhân viên' }, name: 'staff-home', component: AdminHome },
        { path: 'categories', meta: { title: 'Phân loại sản phẩm' }, name: 'staff-categories', component: StaffCategory },

        { path: 'suppliers', meta: { title: 'Hãng sản phẩm' }, name: 'staff-suppliers', component: StaffSupplier },
        { path: 'supplier/create', meta: { title: 'Thêm mới hãng sản phẩm' }, name: 'staff-supplier-create', component: StaffSupplierForm },
        { path: 'supplier/:id/edit', meta: { title: 'Chỉnh sửa hãng sản phẩm' }, name: 'staff-supplier-edit', component: StaffSupplierForm },

        { path: 'items', meta: { title: 'Quản lý sản phẩm' }, name: 'staff-items', component: StaffItem },
        { path: 'item/create', meta: { title: 'Thêm mới sản phẩm' }, name: 'staff-item-create', component: StaffItemForm },
        { path: 'item/:id/edit', meta: { title: 'Chỉnh sửa sản phẩm' }, name: 'staff-item-edit', component: StaffItemForm },
      ]
    },
    { path: '/admin/login', meta: { title: 'Quản trị đăng nhập' }, name: 'admin-login', component: AdminLogin },
    { path: '/staff/login', meta: { title: 'Nhân viên đăng nhập' }, name: 'staff-login', component: StaffLogin },
  ],
  linkActiveClass: 'active',
});

const DEFAULT_TITLE = 'Phone Business';

router.beforeEach(async (to, from, next) => {
  const hideForAuth = to.matched.some(record => record.meta.hideForAuth);
  if (to.path.split('/')[1] === 'admin') {
    if (!localStorage.getItem('csrf') && !['/admin/login'].includes(to.path)) {
      next('/admin/login');
    } else {
      if ([
        '/admin/login',
      ].includes(to.path)) {
        const data = await store.dispatch('getAdmin', { csrf: localStorage.getItem('csrf') });
        if (data && data.status == 401) {
          next();
          return;
        } else {
          window.location.href = '/admin';
        }
      } else {
        next();
        return;
      }
    }
  } else if (to.path.split('/')[1] === 'staff') {
    if (!localStorage.getItem('csrf') && !['/staff/login'].includes(to.path)) {
      next('/staff/login');
    } else {
      if ([
        '/staff/login',
      ].includes(to.path)) {
        const data = await store.dispatch('getStaff', { csrf: localStorage.getItem('csrf') });
        console.log(data);
        if (data && data.status == 401) {
          next();
          return;
        } else {
          window.location.href = '/staff';
        }
      } else {
        next();
        return;
      }
    }
  }
});

router.afterEach((to) => {
  Vue.nextTick(() => {
    document.title = to.meta.title || DEFAULT_TITLE;
    document.body.scrollTop = document.documentElement.scrollTop = 0;
  });
});

export default router;
