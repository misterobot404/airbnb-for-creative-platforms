<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Придумайте название вашей площадке</h1>
    <q-input outlined label="Название площадки" />
    <div>
      <h5 class="text-01 q-mb-lg">Рекомендация от CreativeHub</h5>
      <div class="text-m flex items-center no-wrap">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Указанное название будет отображаться на карточке объявления. Рекомендуем не писать в названии тип объекта (например, фотостудия). Лучше укажите запоминающееся название.
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Не используйте сложные обороты в названии.
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Не используйте названия, зарегистрированные как товарные знаки (если это не ваш товарный знак)
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {}
  },
}
</script>