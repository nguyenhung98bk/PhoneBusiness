<template>
  <div class="input_wrapper vertical">
    <div v-show="image" class="file_upload_image" @click="$refs.file.click()">
      <img :src="image">
    </div>
    <div v-show="!image" class="file_upload_image no_image" @click="$refs.file.click()">
      <div class="file_upload_image_main">
        <div class="icon add_image" />
        <div class="file_upload_image_text">Thêm Logo</div>
      </div>
    </div>
    <div class="file_upload_image_sub">Vui lòng sử dụng hình ảnh.</div>
    <div class="file_upload_image_sub">Kích thước tải lên tối đa là 3 MB.</div>
    <div>
      <input id="file_uploader" ref="file" type="file"
              class="file_uploader"
              accept="image/x-png,image/gif,image/jpeg,image/jpg,image/tiff,image/bmp"
              hidden @change="previewFiles"
      >
    </div>
  </div>
</template>

<script>
export default {
  props: {
    imageProps: {
      typeof: String,
      defaultValue: "",
    }
  },
  data() {
    return {
      image: '',
    }
  },
  watch: {
    imageProps: {
      handler(value) {
        this.image = value;
      }
    },
  },
  methods: {
    previewFiles(event) {
      if (event.target.files.length < 1) {
        return;
      }
      this.imageError = false;
      const file = event.target.files[0];
      if (file.size > 3 * 1000 * 1000) {
        this.imageError = true;
      }
      this.createBase64Image(file);
    },

    createBase64Image(file) {
      const reader = new FileReader();

      reader.onload = (e) => {
        this.image = e.target.result;
        this.$emit('setDataImage', {name: file.name, image: this.image});
      };
      reader.readAsDataURL(file);
    },
  },
}
</script>

<style scoped>

</style>
