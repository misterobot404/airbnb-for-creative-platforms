<template>
  <div class="row">
    <div class="col-12 q-mt-lg text-center">
      <h4 class="text-01">Стань арендодателем</h4>
      <h1 class="text-01">Сдать объект проще вместе с CreativeHub</h1>
    </div>
    <div class="col-6">
      <q-img src="/assets/images/prev_ui_1.png" style="width: 500px" no-spinner/>
    </div>
    <div class="col-6">
      <h5 class="text-01">Три шага, чтобы сдать объект в аренду</h5>
      <div class="text-m flex items-center">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Укажите тип объекта и его характеристики
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Покажите местоположение объекта на карте
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Установите цену
      </div>
      <q-btn to="/lease_object" class="q-mt-lg" color="primary" label="Начать" style="padding: 10px 32px" unelevated no-caps/>
    </div>
  </div>
</template>

<script>
export default {
  name: "LeasePrevious",
}
</script>

<style scoped>
</style>
