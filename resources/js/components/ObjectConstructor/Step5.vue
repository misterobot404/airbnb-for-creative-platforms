<template>
  <div class="q-pt-lg">
    <h1 class="text-01">Укажите цену</h1>
    <div>
      <q-input outlined label="Введите стоимость (в час)" v-model.number="new_object.hour_price" clearable type="number"/>
      <q-toggle label="Отображать цену только пользователям CreativeHub" class="q-mt-sm" v-model="new_object.show_price_for_authorised_only"/>
    </div>

    <template v-if="same_objects">
      <Banner type="info" class="q-mt-md">
        <div>Подбор похожих площадок</div>
        <div class="text-02">После ввода цены будут показаны подобные площадки (с таким же типом площадки и примерной стоимостью)</div>
      </Banner>
    </template>
  </div>
</template>

<script>
import Banner from "@/components/UI/Banner.vue";
import {useObjectsStore} from "@/stores/objects";

export default {
  components: {Banner},
  data() {
    return {
      new_object: useObjectsStore().new_object,

      same_objects: null,
    }
  },
}
</script>