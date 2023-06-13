<template>
  <!-- Тип площадки -->
  <div class="row">
    <div class="col-12 q-mt-lg ">
      <h1 class="text-01">К какому типу относится ваша площадка?</h1>
    </div>
    <div class="col-12 row q-gutter-md">
      <div v-for="category in categories">
        <div class="col-4">
          <q-btn @click="new_object.category_id = category.id" style="border-radius: 4px; padding: 7px 17px"
                 :style="new_object.category_id !== category.id ? 'background-color: #eeeeee' : 'background-color: rgb(235, 239, 255); border-color: #0a58ca;box-shadow: 0 0 0 0.2rem rgba(49,132,253,.35);'"
                 flat class="full-width" text-color="white" no-caps>
            <q-img :src="category.logo_url" height="26px" width="26px" no-spinner/>
            <div class="text-01 q-ml-sm">{{ category.name }}</div>
          </q-btn>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import {useObjectsStore} from "@/stores/objects";
import {mapState} from "pinia";

export default {
  name: "Step1",
  data() {
    return {
      step: 1,
      new_object: useObjectsStore().new_object
    }
  },
  computed: {
    ...mapState(useObjectsStore, ["categories"])
  },
  beforeMount() {
    useObjectsStore().getCategories();
  }
}
</script>