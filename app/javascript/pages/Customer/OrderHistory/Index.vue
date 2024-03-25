<template>
  <div class="cart-container">
    <div class="cart-header">Lịch sử đơn hàng</div>
    <div class="cart-content">
      <div class="cart-content-container">
        <div v-for="(order, index) in orders" :key="index" class="cart-item d-block">
          <div @click="$router.push(`/customer/order_detail/${order.id}`)">
            <div class="order-history-item">
              <div class="cart-item-image-container">
                <img :src="order.order_items[0] && order.order_items[0].item_images[0] && order.order_items[0].item_images[0].image_url ? order.order_items[0].item_images[0].image_url : noImage" class="image-full-width">
              </div>
              <div class="cart-item-name-price">
                <div class="cart-item-name">{{ order.order_items[0] && (order.order_items[0].item_name + (order.order_items[0].color ? ' - ' + order.order_items[0].color : '')) }}</div>
                <div class="cart-item-price">{{ convertNumberFormat(order.order_items[0] ? order.order_items[0].item_price : 0) }}đ</div>
              </div>
              <div class="cart-item-quantity">
                <div class="display-item-quantity">{{ order.order_items[0] ? order.order_items[0].quantity : 0}}</div>
              </div>
            </div>
            <hr>
            <div class="order-history-subcontent">
              <div>
                {{ order.order_items.length }} sản phẩm
              </div>
              <div>
                Thành tiền: {{ convertNumberFormat(order.total_price) }}
              </div>
            </div>
          </div>
          <hr>
          <div class="d-flex">
            <button class="button-reorder" @click="$router.push(`/customer/reorder/${order.id}`)">Mua lại</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { OrdersService } from '../../../services/customer/orders.service';
import noImage from '../../../../assets/images/no_image.png';
import utils from '../../../common/util';

export default {
  data() {
    return {
      orders: [],
      noImage: noImage,
    }
  },
  mounted() {
    this.getOrders();
  },
  methods: {
    ...utils,

    async getOrders() {
      this.$loading(true);
      try {
        const { response } = await OrdersService.index();
        this.orders = response.data;
        console.log(this.orders[0].order_items[0]);
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },
  }
}
</script>
