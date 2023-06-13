<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Добавить фотографии</h1>
    <div class="column col-grow justify-center relative-position">
      <div class="position-absolute-center">
        <q-file
            v-model="new_object.gallery"
            borderless
            bg-color="#FAFAFA"
            accept="image/*"
            multiple
            append
            :input-style="{ height: '500px', width: '800px', borderRadius: '1rem' }"
        />
      </div>
      <div class="position-absolute-center load-file-placeholder">
        <q-img src="/assets/images/load-file.svg" width="248px" no-spinner/>
        <div class="q-mt-md text-m-b">Загрузить изображения площадки</div>
        <div class="q-mt-xs text-02">Или перенесите изображения прямо сюда</div>
        <div class="q-gutter-xs q-mt-sm" style="pointer-events: all">
          <q-chip v-for="(image, index) in new_object.gallery" removable @remove="new_object.gallery.splice(index, 1)" :label="image.name"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {useObjectsStore} from "@/stores/objects";

export default {
  data() {
    return {
      new_object: useObjectsStore().new_object
    }
  },
}
</script>

<style scoped>
.position-absolute-center {
  position: absolute;
  top: 280px;
  left: 50%;
  transform: translate(-50%, -50%);
}

.load-file-placeholder {
  width: 800px;
  height: 520px;
  pointer-events: none;
  background-color: #FAFAFA;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border: 2px dashed #1976d2;
  border-radius: 1rem;
  text-align: center;
}
</style>