<template>
  <div class="customer-content-container">
    <div class="customer-home-header">
      <div class="home-left-header">
        <div v-for="(category, index) in categories" :key="index" class="home-left-header-item">
          <div>{{ category.name }}</div>
          <div>
            <b-icon-caret-right />
          </div>
        </div>
      </div>
      <div class="home-right-header">
        <div class="image-banner-container">
          <img src="../../../../assets/images/cd1c7cbd61e5f596d2d59ae2ea7b3d9c.jpg" class="image-banner">
        </div>
      </div>
    </div>
    <div class="categories-standing mt-4">
      <div class="categories-header">
        <div>
          <h3>Điện thoại nổi bật nhất</h3>
        </div>
        <div class="list-supplier">
          <div>
            <button class="btn btn-secondary nowrap">Xem tất cả</button>
          </div>
          <div v-for="(supplier, index) in suppliers" :key="index">
            <button class="btn btn-secondary nowrap">{{ supplier.name }}</button>
          </div>
        </div>
      </div>
      <div class="categories-content">
        <div v-for="(phone, index) in phones" :key="index" class="item-standing">
          <div class="price-sale">
            {{ Math.round(((phone.original_price - phone.price) / phone.original_price) * 100) }} %
          </div>
          <div class="item-standing-container">
            <div class="item-standing-image-container">
              <img :src="phone.item_images[0] ? phone.item_images[0].image_url : noImage" class="item-standing-image">
            </div>
            <div class="item-standing-content">
              <div class="item-standing-name">{{ phone.name }}</div>
              <div class="item-standing-price">
                <div class="item-standing-red">{{ convertNumberFormat(phone.price) }}đ</div>
                <div class="item-standing-gray">{{ convertNumberFormat(phone.original_price) }}đ</div>
              </div>
              <div class="item-standing-note">
                <div><p class="item-standing-note-p">{{ phone.note }}</p></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { CategoriesService } from '../../../services/categories.service';
import { ItemsService } from '../../../services/items.service';
import { SuppliersService } from '../../../services/suppliers.service';
import constants from '../../../common/constants';
import utils from '../../../common/util';
import noImage from '../../../../assets/images/no_image.png';

export default {
  data() {
    return {
      categories: [],
      phones: [],
      suppliers: [],
      noImage: noImage,
    }
  },
  mounted() {
    this.getCategories();
    this.getItems();
    this.getSuppliers();
  },
  methods: {
    ...utils,

    async getCategories() {
      const { response } = await CategoriesService.index();
      this.categories = response.data;
    },

    async getItems() {
      const params = {
        category_id: constants.PHONECATEGORYID,
      }

      const { response } = await ItemsService.index(params);
      this.phones = response.data;
    },

    async getSuppliers() {
      const { response } = await SuppliersService.index();
      this.suppliers = response.data;
    }
  },
}
</script>
