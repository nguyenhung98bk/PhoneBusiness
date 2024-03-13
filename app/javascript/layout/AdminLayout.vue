<template>
  <Layout
    :sidebar="sidebar"
    :loginUrl="loginUrl"
  />
</template>

<script>
import Layout from './components/Layout.vue';

export default {
  components: {
    Layout,
  },
  data() {
    return {
      sidebar: [
        { text: 'Trang chủ', url: '/admin', icon: 'house-door' },
        { text: 'Quản lý nhân viên', url: '/admin/staffs', icon: 'person-bounding-box' },
        { text: 'Quản lý khách hàng', url: '/admin/customers', icon: 'people' },
        { text: 'Thống kê', url: '/admin/thongke', icon: 'reception-4' },
      ],
      loginUrl: "/admin/login",
    };
  },
}
</script>
