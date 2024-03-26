<template>
  <div class="cart-container">
    <div class="cart-header">Chi tiết đơn hàng</div>
    <div class="cart-content">
      <div class="customer-destinations">
        <div class="customer-destinations-container">
          <div>Mã đơn hàng: {{ orderNumber }}</div>
          <div class="d-flex align-items-center">
            Trạng thái thanh toán: {{ displayPaymentStatus(payment_status) }}
            <button v-if="payment_type_id == 2 && payment_status == 'unpaid' && status != 'cancel'" class="btn-payment-orderdetail" @click="$router.push(`/customer/order_success/${id}`)">Thanh toán ngay</button>
          </div>
          <div>Trạng thái vận chuyển: {{ displayOrderStatus(status) }}</div>
          <div v-if="cancelReason && status != 'null'">(Lý do hủy đơn hàng: {{ cancelReason }})</div>
        </div>
      </div>
      <div class="customer-destinations">
        <div class="customer-destinations-container">
          <div><b-icon-geo-alt variant="danger" scale="1.5" /><span class="ms-2">Địa chỉ nhận hàng</span></div>
          <div v-if="destination && destination.id">
            <div class="destination-address">
              {{ destination.recipient_name }} | {{ destination.recipient_phone }}
            </div>
            <div class="destination-address">
              {{ destination.address }}
            </div>
            <div class="destination-address">
              {{ destination.ward_name }} , {{ destination.district_name }} , {{ destination.province_name }}
            </div>
          </div>
          <div v-else>Chưa có địa chỉ nhận hàng</div>
        </div>
      </div>
      <div class="cart-content-container">
        <div v-for="(cart, index) in carts" :key="index" class="cart-item">
          <div class="cart-item-image-container" @click="$router.push(`/${cart.category_id}-${cart.category_name}/${cart.supplier_id}-${cart.supplier_name}/${cart.item_id}-${cart.item_name}`)">
            <img :src="cart.item_images[0] ? cart.item_images[0].image_url : noImage" class="image-full-width">
          </div>
          <div class="cart-item-name-price" @click="$router.push(`/${cart.category_id}-${cart.category_name}/${cart.supplier_id}-${cart.supplier_name}/${cart.item_id}-${cart.item_name}`)">
            <div class="cart-item-name">{{ cart.item_name + (cart.color ? ' - ' + cart.color : '') }}</div>
            <div class="cart-item-price">{{ convertNumberFormat(cart.item_price) }}đ</div>
            </div>
          <div class="cart-item-quantity">
            <div class="display-item-quantity">{{ cart.quantity }}</div>
          </div>
        </div>
      </div>
      <div class="info-order">
        <div class="cart-item cart-item-d-block">
          <div class="w-100">
            <label class="form-label">Phương thức vận chuyển</label>
            <input :value="transport_service_name" class="form-control" disabled>
          </div>
          <div class="w-100 mt-3">
            <label class="form-label">Phương thức thanh toán</label>
            <input :value="payment_type_name" class="form-control" disabled>
          </div>
        </div>
        <div class="cart-item cart-item-d-block">
          <div class="order-info-title">Chi tiết thanh toán</div>
          <div class="order-info-details">
            <div>Tổng tiền hàng</div>
            <div>{{ convertNumberFormat(totalPrice) }}đ</div>
            </div>
          <div class="order-info-details">
            <div>Tổng tiền phí vận chuyển</div>
            <div>{{ convertNumberFormat(shipAmount) }}</div>
            </div>
          <div class="order-info-details">
            <div>Giảm giá hàng</div>
            <div>0đ</div>
            </div>
          <div class="order-info-details">
            <div>Giảm giá phí vận chuyển</div>
            <div>0đ</div>
          </div>
          <div class="order-info-title order-info-details">
            <div>Tổng số tiền cần thanh toán</div>
            <div>{{ convertNumberFormat(Number(totalPrice) + Number(shipAmount)) }}đ</div>
          </div>
        </div>
      </div>
    </div>
    <div class="cart-footer">
      <div class="info-group-button">
        <button class="button-save-buy h-60" :class="isCanCancel() ? '' : 'disabled'" @click="cancelOrder">Hủy đơn hàng</button>
        <button class="button-buy h-60" @click="$router.push(`/customer/reorder/${id}`)">Đặt lại</button>
      </div>
    </div>
    <CustomerModal
      v-if="showModalCancel"
      :title="`Lý do hủy đơn hàng`"
      @onClose="showModalCancel = false"
      @onSubmit="onSubmitCancel"
    >
      <div>
        <div v-for="(orderCancelReason, index) in orderCancelReasons" class="mb-3">
          <input v-model="orderCancelReasonId" :value="orderCancelReason.id" type="radio" :id="orderCancelReason.id" :name="orderCancelReason.id"><label :for="orderCancelReason.id" class="ms-2">{{ orderCancelReason.name }}</label>
        </div>
      </div>
    </CustomerModal>
  </div>
</template>
 
 <script>
 import { OrdersService } from '../../../services/customer/orders.service';
 import { OrderCancelReasonsService } from '../../../services/customer/order_cancel_reasons.service';
 import noImage from '../../../../assets/images/no_image.png';
 import utils from '../../../common/util';
 import CustomerModal from '../../../components/CustomerModal.vue';
 
 export default {
  components: {
    CustomerModal,
  },
  data() {
    return {
      id: this.$router.history.current.params.id,
      carts: [],
      noImage: noImage,
      destination: {},
      transport_service_name: null,
      payment_type_id: null,
      payment_type_name: null,
      totalPrice: 0,
      shipAmount: 0,
      payment_status: null,
      status: null,
      orderNumber: null,
      showModalCancel: false,
      orderCancelReasons: [],
      orderCancelReasonId: 1,
      cancelReason: null,
    }
  },
  mounted() {
    this.getOrder();
  },
   
  methods: {
     ...utils,
 
    async getOrder() {
      this.$loading(true);
      try {
        const { response } = await OrdersService.get(this.id);
        this.carts = response.data.order_items;
        this.payment_type_name = response.data.payment_type_name,
        this.destination = response.data.destination;
        this.totalPrice = response.data.total_price;
        this.shipAmount = response.data.ship_amount;
        this.transport_service_name = response.data.transport_service_name;
        this.payment_status = response.data.payment_status;
        this.status = response.data.status;
        this.payment_type_id = response.data.payment_type_id;
        this.orderNumber = response.data.order_number;
        this.cancelReason = response.data.order_cancel_reason_name;
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    async getOrderCancelReason() {
      this.$loading(true);
      try {
        const { response } = await OrderCancelReasonsService.index();
        this.orderCancelReasons = response.data;
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    displayPaymentStatus(payment_status) {
      switch (payment_status) {
        case 'paid':
          return ' Thanh toán thành công'
        case 'wait_confirm':
          return ' Chờ xác nhận'    
        default:
          return ' Chưa thanh toán'
      }
    },

    displayOrderStatus(status) {
      switch (status) {
        case 'complete':
          return ' Giao hàng thành công'
        case 'transporting':
          return ' Đang vận chuyển'
        case 'prepare':
          return 'Đang chuẩn bị hàng'
        case 'cancel':
          return 'Đã hủy'
        default:
          return 'Chờ xác nhận'
      }
    },

    isCanCancel() {
      return this.payment_status == 'unpaid' && this.status == 'wait_confirm';
    },

    async cancelOrder() {
      if (!this.isCanCancel()) return;

      this.getOrderCancelReason();
      this.showModalCancel = true;
    },

    async onSubmitCancel() {
      const params = {
        status: 90,
        order_cancel_reason_id: this.orderCancelReasonId,
      }
      this.$loading(true);
      try {
        await OrdersService.update(this.id, params);
        await this.getOrder();
        this.showModalCancel = false;
        this.$loading(false);
      } catch (error) {
        this.showModalCancel = false;
        this.$loading(false);
      }
    }
  }
}
</script>

<style scoped>
.disabled {
  background: #cccccc;
}
</style>
 