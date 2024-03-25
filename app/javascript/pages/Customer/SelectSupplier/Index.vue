<template>
  <div class="customer-content-container">
    <div class="customer-bottom-sidebar">
      <button class="d-flex align-items-center" @click="$router.push('/')">
        <b-icon-house-door-fill variant="danger" /><span class="ms-2">Trang chủ</span>
      </button>
      <div>
        <b-icon-caret-right />
      </div>
      <button @click="$router.push(`/${category.id}-${category.name}`)">{{ category.name }}</button>
      <div>
        <b-icon-caret-right />
      </div>
      <button v-if="supplier.id">{{ supplier.name }}</button>
    </div>
    <div class="space-height" />
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
      supplier: {
        id: this.$router.history.current.params.supplier_id,
        name: this.$router.history.current.params.supplier_name,
      },
      items: [],
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
  },
  methods: {
    async getItems() {
      const params = {
        category_id: this.category.id,
        supplier_id: this.supplier.id,
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

    onNextPage() {
      this.pageParams.page++;
      this.getItems();
    },
  },
}
</script>
