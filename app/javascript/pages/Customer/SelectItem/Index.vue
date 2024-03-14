<template>
  <div class="customer-content-container">
    <div class="customer-bottom-sidebar">
      <button class="d-flex align-items-center" @click="$router.push('/')">
        <b-icon-house-door-fill variant="danger" /><span class="ms-2">Trang chủ</span>
      </button>
      <button @click="$router.push(`/${category.id}-${category.name}`)">{{ category.name }}</button>
      <button @click="$router.push(`/${category.id}-${category.name}/${supplier.id}-${supplier.name}`)">{{ supplier.name }}</button>
      <button>{{ item.name }}</button>
    </div>
    <div class="space-height" />
    <div class="show-item-container">
      <div class="show-item-header">
        <h4>{{ item.name }}</h4>
      </div>
      <div class="show-item-content">
        <div class="show-item-image">
          <div class="show-image-first">
            <img :src="item.item_images && item.item_images[indexImage] ? item.item_images[indexImage].image_url : noImage" class="image-full-width br-10">
          </div>
          <div class="show-list-image">
            <div class="cursor-pointer" @click="onChangeImage(indexImage + 1)">
              <b-icon-arrow-left-square scale="1.5" />
            </div>
            <div class="show-image-scroll">
              <div v-for="(image, index) in item.item_images" :key="index" class="show-image-bonus cursor-pointer" @click="onChangeImage(index)">
                <img :src="image.image_url" class="image-full-width br-4">
              </div>
            </div>
            <div class="cursor-pointer" @click="onChangeImage(indexImage + 1)">
              <b-icon-arrow-right-square scale="1.5" />
            </div>
          </div>
        </div>
        <div class="info-item">
          <div class="info-item-price">
            <div class="info-item-price-red">{{ convertNumberFormat(item.price) }}đ</div>
            <div class="info-item-price-gray">{{ convertNumberFormat(item.original_price) }}đ</div>
            <div>| Đã bao gồm VAT</div>
          </div>
          <div class="info-item-order">
            <div class="info-free-ship">
              <b-icon-truck />
              Miễn phí vận chuyển toàn quốc
            </div>
            <div class="info-group-button">
              <button class="button-buy">Mua ngay</button>
              <button class="button-save-buy">Thêm vào giỏ hàng</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { ItemsService } from '../../../services/items.service';
import noImage from '../../../../assets/images/no_image.png';
import utils from '../../../common/util';

export default {
  data() {
    return {
      category: {
        id: this.$router.history.current.params.category_id,
        name: this.$router.history.current.params.category_name,
      },
      supplier: {
        id: this.$router.history.current.params.supplier_id,
        name: this.$router.history.current.params.supplier_name,
      },
      item: {
        id: this.$router.history.current.params.item_id,
        name: this.$router.history.current.params.item_name,
      },
      noImage: noImage,
      indexImage: 0,
    }
  },
  async mounted() {
    await this.getItems();
  },
  methods: {
    ...utils,

    async getItems() {
      const { response } = await ItemsService.get(this.item.id);
      this.item = response.data;
    },

    onChangeImage(index) {
      this.indexImage = index % this.item.item_images.length;
    }
  },
}
</script>
