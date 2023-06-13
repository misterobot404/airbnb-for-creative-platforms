<template>
  <div class="row">
    <div class="col-12 q-mt-lg text-center">
      <h1 class="text-01">Объявление создано</h1>
    </div>
    <div class="col-6">
      <q-img src="/assets/images/site-amico-1.svg" style="width: 520px" no-spinner/>
    </div>
    <div class="col-6 column justify-center">
      <h5 class="text-01 q-mb-lg">Объявление отправлено на модерацию</h5>
      <Banner type="info">
        <div class="text-01 text-m-b">Среднее время проверки около 2 часов</div>
        <div class="text-02">Сейчас сервис загружен, поэтому возможны задержки</div>
      </Banner>
      <div class="text-01 q-mt-md">
        Теперь мы проверим его на соответствие правилам сообщества. Следите за уведомлениями в личном кабинете
      </div>
      <div class="flex q-gutter-x-md">
        <q-btn to="/" class="q-mt-lg" color="primary" label="На главную" style="padding: 10px 32px" outline no-caps/>
        <q-btn to="/my_objects" class="q-mt-lg" color="primary" label="Мои объявления" style="padding: 10px 32px" unelevated no-caps/>
      </div>
    </div>
  </div>
</template>

<script>
import Banner from "@/components/UI/Banner.vue";

export default {
  name: "ObjectConstructorFinal",
  components: {Banner},
}
</script>

<style scoped>
</style>
