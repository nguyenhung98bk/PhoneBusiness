<template>
  <div class="customer-auth-container">
      <div class="customer-auth-container-background d-flex">
        <div class="register-confirm-container">
          <div class="order-success-title">
            Đặt hàng thành công
          </div>
          <div class="btn-order-success">
            <button class="button-buy order-success-btn-buy">Trang chủ</button>
            <button class="button-save-buy order-success-btn-save">Đơn hàng</button>
          </div>
        </div>
      </div>
  </div>
</template>

<script>
import { VietqrService } from '../../../services/customer/vietqr.service';

export default {
  data() {
    return {
      id: this.$router.history.current.params.id,
    }
  },
  mounted() {
    this.getAccountNo();
  },
  methods: {
    async getAccountNo() {
      const params = {
        bin: '970436',
        accountNumber: '1015545743',
      }
      const { response } = VietqrService.getAccountNo(params);
      console.log(response);
    }
  },
}
</script>