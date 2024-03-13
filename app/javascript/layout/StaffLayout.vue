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
        { text: 'Trang chủ', url: '/staff', icon: 'house-door' },
        { text: 'Hãng sản phẩm', url: '/staff/suppliers', icon: 'card-list' },
        { text: 'Phân loại sản phẩm', url: '/staff/categories', icon: 'tablet' },
        { text: 'Quản lý sản phẩm', url: '/staff/items', icon: 'stack' },
        { text: 'Quản lý đơn hàng', url: '/staff/orders', icon: 'view-stacked' },
      ],
      loginUrl: "/staff/login",
    };
  },
}
</script>
