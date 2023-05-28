<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Укажите цену</h1>
    <div>
      <q-input outlined label="Введите стоимость (в час)" v-model="price_value" clearable/>
      <q-toggle label="Отображать цену только пользователям CreativeHub" class="q-mt-sm"/>
    </div>

    <Banner type="info" class="q-mt-md">
      <div>Подбор похожих площадок</div>
      <div class="text-02">После ввода цены будут показаны подобные площадки (с таким же типом площадки и примерной стоимостью)</div>
    </Banner>
  </div>
</template>

<script>
import Banner from "@/components/UI/Banner.vue";

export default {
  components: {Banner},
  data() {
    return {
      price_value: null,
    }
  },
}
</script>