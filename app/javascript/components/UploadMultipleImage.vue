<template>
  <div class="admin-form-image-container">
    <div v-for="(image ,index) in images">
      <UploadSingleImage
        :index="index"
        :image="image.image_url"
        @setDataImage="setDataImage"
      />
    </div>
    <button type="button" class="btn btn-success btn-upload-image" @click="addNewImage"><span>Thêm ảnh</span></button>
  </div>
</template>

<script>
import UploadSingleImage from "./UploadSingleImage.vue";

export default {
  components: {
    UploadSingleImage,
  },
  props: {
    imagesProps: {
      typeof: Array,
      default: [{ id: null, name: '', image_url: '', is_new: true }]
    }
  },
  watch: {
    imagesProps: {
      handler(value) {
        this.images = value?.map(image => {
          return {
            id: image.id,
            image_url: image.image_url,
            name: '',
            is_new: false,
          }
        });
      }
    },
  },
  data() {
    return {
      images: [{ id: null, name: '', image_url: '', is_new: true }],
    }
  },
  methods: {
    setDataImage(image) {
      this.images[image.index] = {
        ...this.images[image.index],
        name: image.name,
        image_url: image.image,
        is_new: false
      };
      this.images.push();
      this.$emit('setDataImage', this.images);
    },

    addNewImage() {
      if (this.images[this.images.length - 1].is_new) return;
      this.images.push({ id: null, name: '', image_url: '', is_new: true });
    },
  },
}
</script>
