<template>
  <Layout
    :sidebar="sidebar"
    :loginUrl="loginUrl"
  />
</template>

<script>
import Vue from 'vue';
import Layout from './components/Layout.vue';

export default Vue.extend({
  components: {
    Layout,
  },
  data() {
    return {
      sidebar: [
        { text: 'Trang chủ', url: '/admin', icon: '' },
        { text: 'Quản lý nhân viên', url: '/admin/staffs', icon: '' },
        { text: 'Quản lý khách hàng', url: '/admin/customers', icon: '' },
        { text: 'Thống kê', url: '/admin/thongke', icon: '' },
      ],
      loginUrl: "/admin/login",
    };
  },
})
;
</script>
