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
        { text: 'Trang chủ', url: '/staff', icon: '' },
        { text: 'Hãng sản phẩm', url: '/staff/suppliers', icon: '' },
        { text: 'Phân loại sản phẩm', url: '/staff/categories', icon: '' },
        { text: 'Quản lý sản phẩm', url: '/staff/items', icon: '' },
        { text: 'Quản lý đơn hàng', url: '/staff/orders', icon: '' },
      ],
      loginUrl: "/staff/login",
    };
  },
})
;
</script>
