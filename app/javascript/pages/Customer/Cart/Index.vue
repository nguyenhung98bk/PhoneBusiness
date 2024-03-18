<template>
  <div class="cart-container">
    <div class="cart-header">Giỏ hàng của bạn</div>
    <div class="cart-content">
      <div class="cart-content-container">
        <div v-for="(cart, index) in carts" :key="index" class="cart-item">
          <div class="cart-item-radio"><input v-model="cart.checked" type="checkbox"></div>
          <div class="cart-item-image-container">
            <img :src="cart.item_images[0] ? cart.item_images[0].image_url : noImage" class="image-full-width">
          </div>
          <div>
            <div class="cart-item-name">{{ cart.item_name }}</div>
            <div class="cart-item-price">{{ convertNumberFormat(cart.item_price) }}đ</div>
          </div>
          <div class="cart-item-quantity">
            <button class="button-change-quantity left"><b-icon-dash variant="danger" scale="1.5" @click="changeQuantity(cart, -1)" /></button>
            <div class="display-item-quantity">{{ cart.quantity }}</div>
            <button class="button-change-quantity right"><b-icon-plus variant="danger" scale="1.5" @click="changeQuantity(cart, 1)" /></button>
          </div>
        </div>
      </div>
    </div>
    <div class="cart-footer">
      <div class="info-group-button">
        <button class="button-save-buy" @click="updateCarts">Cập nhật giỏ hàng</button>
        <button class="button-buy" @click="onSubmit">Mua ngay</button>
      </div>
    </div>
  </div>
</template>

<script>
import { CartsService } from '../../../services/customer/carts.service';
import noImage from '../../../../assets/images/no_image.png';
import utils from '../../../common/util';

export default {
  data() {
    return {
      carts: [],
      noImage: noImage,
    }
  },
  mounted() {
    this.getCarts();
  },
  methods: {
    ...utils,

    async getCarts() {
      const { response } = await CartsService.index();
      this.carts = response.data;
    },

    changeQuantity(cart, value) {
      cart.quantity = cart.quantity + value;
      if (cart.quantity < 0 || cart.quantity > 99) return;
    },

    async updateCarts() {
      const params = { carts: this.carts.map(cart => {
        return {
          id: cart.id,
          quantity: cart.quantity,
        }
      })};
      await CartsService.updateCarts(params);
    },

    async onSubmit() {
      await this.updateCarts();
      const cartIds = this.carts.filter(c => c.checked).map(c => c.id).join(',');
      if (cartIds != '') {
        localStorage.setItem('cart_ids', cartIds);
        this.$router.push('/customer/order');
      }
    },
  },
}
</script>
