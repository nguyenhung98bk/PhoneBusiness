<template>
  <div class="card admin-content-container">
    <div class="row">
      <div class="col-12">
        <div class="white_card_header">
          <div class="box_header m-0">
            <div class="main-title">
              <h3 class="m-0">{{ id ? "Chỉnh sửa sản phẩm" : "Thêm mới sản phẩm" }}</h3>
            </div>
          </div>
        </div>
        <div class="white_card_body">
          <div class="card-body">
            <form class="" autocomplete="off">
              <div class="d-blox">
                <UploadMultipleImage
                  :imagesProps="this.item.item_images"
                  @setDataImage="setDataImage"
                />
                <div class="admin-form">
                  <div class="mb-3">
                    <label class="form-label">Mã sản phẩm</label>
                    <input v-model="item.product_no" type="text" class="form-control" name="product_no" placeholder="Mã sản phẩm" disabled>
                    <span v-for="error in errors['product_no']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Tên sản phẩm</label>
                    <input v-model="item.name" type="text" class="form-control" name="name" placeholder="Tên">
                    <span v-for="error in errors['name']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Hãng sản phẩm</label>
                    <vSelect
                      v-model="item.supplier_id"
                      :options="suppliers"
                      :reduce="(option) => option.id"
                      class="v-select"
                      label="name"
                    >
                      <span slot="no-options">Không có lựa chọn</span>
                    </vSelect>
                    <span v-for="error in errors['supplier_id']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Loại sản phẩm</label>
                    <vSelect
                      v-model="item.category_id"
                      :options="categories"
                      :reduce="(option) => option.id"
                      class="v-select"
                      label="name"
                    >
                      <span slot="no-options">Không có lựa chọn</span>
                    </vSelect>
                    <span v-for="error in errors['category_id']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Số lượng còn</label>
                    <input v-model="item.quantity" type="text" class="form-control" name="quantity" placeholder="Số lượng còn">
                    <span v-for="error in errors['quantity']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Giá nhập hàng</label>
                    <input v-model="item.purchase_price" type="text" class="form-control" name="purchase_price" placeholder="Số lượng còn">
                    <span v-for="error in errors['purchase_price']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Giá bán gốc</label>
                    <input v-model="item.original_price" type="text" class="form-control" name="original_price" placeholder="Giá bán gốc">
                    <span v-for="error in errors['original_price']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Giá hiện tại</label>
                    <input v-model="item.price" type="text" class="form-control" name="price" placeholder="Giá hiện tại">
                    <span v-for="error in errors['price']" :key="error" class="admin-error">
                      {{ error }}
                    </span>
                  </div>
                </div>
              </div>
              <div class="admin-form-button d-flex justify-content-center mt-2">
                <button type="button" class="btn btn-primary admin-btn-primary mb-2" @click="onSubmit">{{ id ? "Chỉnh sửa" : "Thêm mới" }}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Validator from '../../../validator';
import { SuppliersService } from '../../../services/staff/suppliers.service';
import { ItemsService } from '../../../services/staff/items.service';
import { CategoriesService } from '../../../services/staff/categories.service';
import vSelect from 'vue-select';
import UploadMultipleImage from '../../../components/UploadMultipleImage.vue';

export default {
  components: {
    vSelect,
    UploadMultipleImage,
  },

  data() {
    return {
      id: this.$router.history.current.params.id,
      errors: {},
      item: {},
      image: '',
      imageName: '',
      categories: [],
      suppliers: [],
      images: [],
    }
  },
  mounted() {
    if (this.id) {
      this.getItem(); 
    }
    this.getSuppliers();
    this.getCategories();
  },
  methods: {
    async onSubmit() {
      this.validate();
      if (Object.keys(this.errors).length) return;
      
      const params = {
        name: this.item.name,
        category_id: this.item.category_id,
        supplier_id: this.item.supplier_id,
        quantity: this.item.quantity,
        purchase_price: this.item.purchase_price,
        original_price: this.item.original_price,
        price: this.item.price,
      }

      if (this.images.length) {
        params['item_images'] = this.images.map(image => {
          return {
            id: image.id,
            image_url: image.image_url,
            name: image.name,
          }
        });
      }
      
      try {
        if (this.id) {
          await ItemsService.update(this.id, params)
          this.$router.push('../../items');
        }
        else {
          await ItemsService.create(params);
          this.$router.push('../items');
        }
      }catch (error) {
        console.log(error);
      }
    },

    async getSuppliers() {
      this.$loading(true);
      try {
        const { response } = await SuppliersService.index();
        this.suppliers = response.data;
        this.pager = response.pager;
        this.$loading(false);
      } catch (e) {
        this.$loading(false);
      }
    },
    
    async getItem() {
      const { response } = await ItemsService.get(this.id);
      this.item = response.data;
    },

    async getCategories() {
      this.$loading(true);
      try {
        const { response } = await CategoriesService.index();
        this.categories = response.data;
        this.pager = response.pager;
        this.$loading(false);
      } catch (e) {
        this.$loading(false);
      }
    },

    validate() {
      const validator = new Validator();
      validator.checkRequire('name', this.item.name, 'Tên sản phẩm') &&
        validator.checkMaxLength('name', this.item.name, 255, 'Tên sản phẩm');

      validator.checkRequire('supplier_id', this.item.supplier_id, 'Hãng sản phẩm');
      validator.checkRequire('category_id', this.item.category_id, 'Loại sản phẩm');

      validator.checkDigit('quantity', this.item.quantity, 'Số lượng');

      validator.checkDigit('purchase_price', this.item.purchase_price, 'Giá nhập hàng');

      validator.checkDigit('original_price', this.item.original_price, 'Giá nhập gốc');

      validator.checkDigit('price', this.item.price, 'Hiện tại');

      this.errors = validator.errors;
    },

    setDataImage(images) {
      this.images = images;
    },
  },
}
</script>
