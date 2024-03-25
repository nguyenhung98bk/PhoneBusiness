<template>
  <div class="customer-content-container">
    <div class="customer-bottom-sidebar">
      <button class="d-flex align-items-center" @click="$router.push('/')">
        <b-icon-house-door-fill variant="danger" /><span class="ms-2">Trang chủ</span>
      </button>
      <button>{{ category.name }}</button>
    </div>
    <div class="space-height" />

    <div class="select-supplier">
      <div class="categories-standing mt-4">
        <div class="categories-header">
          <div class="list-supplier">
            <div v-for="(supplier, index) in suppliers.filter(supplier => supplier.category_id == category.id)" :key="index">
              <button class="btn btn-secondary nowrap" @click="$router.push(`/${category.id}-${category.name}/${supplier.id}-${supplier.name}`)">{{ supplier.name }}</button>
            </div>
          </div>
        </div>
      </div>  
    </div>
    <div></div>
    <div class="">
      <ListItem :items="items" />
      <div v-if="totalItemNotDisplay > 0" class="customer-open-new-page">
        <button class="btn btn-secondary" @click="onNextPage()">Xem thêm {{ totalItemNotDisplay }} sản phẩm</button>
      </div>
    </div>
  </div>
</template>

<script>
import { ItemsService } from '../../../services/items.service';
import ListItem from '../components/ListItem.vue';
import { SuppliersService } from '../../../services/suppliers.service';

export default {
  components: {
    ListItem
  },
  data() {
    return {
      category: {
        id: this.$router.history.current.params.category_id,
        name: this.$router.history.current.params.category_name,
      },
      items: [],
      suppliers: [],
      pager: {
        page: 1,
        page_count: 1,
        page_size: 20,
        item_count: 0,
      },
      pageParams: {
        page: 1,
        page_size: 20,
        total_page: 1,
      },
      totalItemNotDisplay: 0,
    }
  },
  async mounted() {
    await this.getItems();
    await this.getSuppliers();
  },
  methods: {
    async getItems() {
      const params = {
        category_id: this.category.id,
        ...this.pageParams,
      }

      this.$loading(true);
      try {
        const { response } = await ItemsService.index(params);
        this.pager = response.pager;
        this.items = [...this.items, ...response.data];
        this.totalItemNotDisplay = this.pager.item_count - this.pager.page * this.pager.page_size;
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    async getSuppliers() {
      this.$loading(true);
      try {
        const { response } = await SuppliersService.index();
        this.suppliers = response.data;
        this.$loading(false);
      } catch (error) {
        this.$loading(false);
      }
    },

    onNextPage() {
      this.pageParams.page++;
      this.getItems();
    },
  },
}
</script>
