<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Добавить панораму</h1>
    <div class="column col-grow justify-center relative-position">
      <div class="position-absolute-center">
        <q-file
            v-model="new_object.panorama"
            borderless
            bg-color="#FAFAFA"
            accept="image/*"
            :input-style="{ height: '500px', width: '800px', borderRadius: '1rem' }"
        />
      </div>
      <div class="position-absolute-center load-file-placeholder">
        <q-img src="/assets/images/panorama.svg" width="248px" no-spinner/>
        <div class="q-mt-md text-m-b">Загрузить панораму площадки</div>
        <div class="q-mt-xs text-02" style="max-width: 600px">Создать панораму можно в любом удобном для Вас приложении для создания панорам и 360 сфер (например, для Android -
          Panorama 360 & Virtual Tours, для IOS - Hdreye).
        </div>
        <div class="text-02">Сюда необходимо выгрузить готовую панорамную фотографию</div>
        <div v-if="new_object.panorama" class="q-gutter-xs q-mt-sm" style="pointer-events: all">
          <q-chip removable :label="new_object.panorama.name"/>
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