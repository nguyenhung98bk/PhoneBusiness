<template>
  <main class="main-container">
    <div class="customer-sidebar">
      <div class="customer-sidebar-container">
        <div class="customer-sidebar-left">
          <div class="customer-sidebar-item">
            <b-icon-lightning-charge variant="warning" scale="2"></b-icon-lightning-charge>
            <span class="ms-2 text-hidden-mobile">STORENAME</span>
          </div>
          <div class="customer-sidebar-item">
            <div class="serach_field_2">
              <input type="text" class="form-control input-search-user" placeholder="Hôm nay bạn cần tìm gì">
              <div class="icon-search-end"><b-icon-search scale="1.5" /></div>
            </div>
          </div>
        </div>
        <div class="customer-sidebar-right">
          <div class="customer-sidebar-item">
            <b-icon-telephone variant="light" scale="1.5"></b-icon-telephone>
            <div class="number-phone-contact text-hidden-mobile">
              <div><span>Liên hệ</span></div>
              <div><span>1900.0000</span></div>
            </div>
          </div>
          <div class="customer-sidebar-item">
            <b-icon-geo-alt variant="light" scale="1.5"></b-icon-geo-alt>
            <div class="number-phone-contact text-hidden-mobile">
              <div><span>Cửa hàng</span></div>
              <div><span>gần bạn</span></div>
            </div>
          </div>
          <div class="customer-sidebar-item">
            <b-icon-cart variant="light" scale="1.5"></b-icon-cart>
            <div class="number-phone-contact text-hidden-mobile">
              <div><span>Giỏ hàng</span></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="customer-container">
      <router-view />
    </div>
  </main>
</template>

<script>
export default {
  data() {
    return {
      sidebar: [
        { text: 'Trang chủ', url: ''},
        { text: 'Giới thiệu', url: ''},
        { text: 'Trung tâm bảo hành', url: ''},
        { text: 'Hệ thống cửa hàng', url: ''},
        { text: 'Tuyển dụng', url: ''},
        { text: 'Trang cứu đơn hàng', url: ''},
        { text: 'Đăng nhập', url: ''},
      ],
    }
  }
}
</script>

<style lang="scss" scoped>

.customer-sidebar {
  width: 100%;
  display: flex;
  position: fixed;
  padding: 10px 20px;
  background: #d70018;
  color: #FFFFFF;

  .customer-sidebar-container {
    display: flex;
    width: 100%;
    justify-content: space-between;

    .customer-sidebar-left {
      display: flex;
    }

    .customer-sidebar-right {
      display: flex;
      width: 50%;
      justify-content: flex-end;
      gap: 20px;
    }

    .customer-sidebar-item {
      display: flex;
      align-items: center;
      border-radius: 10px;
      padding: 0 10px;
      cursor: pointer;

      .number-phone-contact {
        margin-left: 10px;
        font-size: 13px;
      }
    }

    .customer-sidebar-item:hover {
      background: hsla(0,0%,100%,.2);
    }
  }
}

.icon-search-end {
  position: absolute;
  right: 10px;
  top: 7px;
  color: #CCCCCC;
}

.customer-container {
  padding: 80px 30px 30px 30px;
  background: #f9f9f9;
  height: 100vh;
}

.input-search-user {
  padding-right: 40px;
}

@media (max-width: 808px) {
  .text-hidden-mobile {
    display: none !important;
  }
}

@media (max-width: 480px) {
  .customer-container {
    padding-left: 10px;
    padding-right: 10px;
  }
}
</style>
