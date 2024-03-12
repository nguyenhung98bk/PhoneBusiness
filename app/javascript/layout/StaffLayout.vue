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
        { text: 'Hãng sản phẩm', url: '/staff/suppliers', icon: 'house-door' },
        { text: 'Phân loại sản phẩm', url: '/staff/categories', icon: 'house-door' },
        { text: 'Quản lý sản phẩm', url: '/staff/items', icon: 'house-door' },
        { text: 'Quản lý đơn hàng', url: '/staff/orders', icon: 'house-door' },
      ],
      loginUrl: "/staff/login",
    };
  },
}
</script>
