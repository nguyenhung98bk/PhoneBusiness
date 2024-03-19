<template>
 <div class="cart-container">
    <div class="cart-header">Đặt hàng</div>
    <div class="cart-content">
      <div class="customer-destinations">
        <div class="customer-destinations-container" @click="openSelectDestination">
          <div><b-icon-geo-alt variant="danger" scale="1.5" />Địa chỉ nhận hàng</div>
          <div v-if="destination && destination.id">
            <div>
              {{ destination.recipient_name }} | {{ destination.recipient_phone }}
            </div>
            <div>
              {{ destination.address }}
            </div>
            <div>
              {{ destination.ward_name }} , {{ destination.district_name }} , {{ destination.province_name }}
            </div>
          </div>
          <div v-else>Chưa có địa chỉ nhận hàng</div>
        </div>
      </div>
      <div class="cart-content-container">
        <div v-for="(cart, index) in carts" :key="index" class="cart-item">
          <div class="cart-item-image-container">
            <img :src="cart.item_images[0] ? cart.item_images[0].image_url : noImage" class="image-full-width">
          </div>
          <div class="cart-item-name-price">
            <div class="cart-item-name">{{ cart.item_name }}</div>
            <div class="cart-item-price">{{ convertNumberFormat(cart.item_price) }}đ</div>
          </div>
          <div class="cart-item-quantity">
            <!-- <button class="button-change-quantity left"><b-icon-dash variant="danger" scale="1.5" @click="changeQuantity(cart, -1)" /></button> -->
            <div class="display-item-quantity">{{ cart.quantity }}</div>
            <!-- <button class="button-change-quantity right"><b-icon-plus variant="danger" scale="1.5" @click="changeQuantity(cart, 1)" /></button> -->
          </div>
        </div>
      </div>
    </div>
    <div class="cart-footer">
      <div class="info-group-button">
        <button class="button-buy button-by-order h-60" @click="onSubmit">Mua ngay</button>
      </div>
    </div>
    <DestinationModal
      v-if="showSelectDestination"
      :customerDestinations="destinations"
      :destinationId="destination ? destination.id : null"
      @onClose="showSelectDestination = false"
      @onSubmitSelectDestination="onSubmitSelectDestination"
    />
  </div>
</template>

<script>
import { CartsService } from '../../../services/customer/carts.service';
import { OrdersService } from '../../../services/customer/orders.service';
import { CustomerDestinationsService } from '../../../services/customer/customer_destinations.service';
import noImage from '../../../../assets/images/no_image.png';
import utils from '../../../common/util';
import DestinationModal from './components/DestinationModal.vue';

export default {
  components: {
    DestinationModal,
  },
  data() {
    return {
      cartIds: localStorage.getItem('cart_ids'),
      carts: [],
      noImage: noImage,
      destinations: [],
      destination: {},
      showSelectDestination: false,
    }
  },
  mounted() {
    this.getCarts();
    this.getDestination();
  },
  methods: {
    ...utils,

    async getCarts() {
      const params = {
        cart_ids: this.cartIds.split(","),
      }
      this.$loading(true);
      try {
        const { response } = await CartsService.index(params);
        this.carts = response.data;
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    async getDestination() {
      this.$loading(true);
      try {
        const { response } = await CustomerDestinationsService.index();
        this.destinations = response.data;
        this.destination = this.destinations[0];
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    openSelectDestination() {
      this.showSelectDestination = true;
    },

    onSubmitSelectDestination(destination) {
      this.destination = destination;
      this.showSelectDestination = false;
    },

    async onSubmit() {
      if (this.carts.length === 0) return;
      const params = {
        order_items: this.carts.map(cart => {
          return {
            item_id: cart.item_id,
            quantity: cart.quantity,
          }
        }),
        customer_destination_id: this.destination.id,
        ship_amount: 0,
        message: 'xxxxxxxxxxxxx',
      }

      this.$loading(true);
      try {
        await OrdersService.create(params);
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },
  }
}
</script>
