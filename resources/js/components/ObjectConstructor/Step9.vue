<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Быстрое бронирование</h1>
    <q-toggle v-model="show_minimal_autodeal_rating" label="Быстрое бронирование"/>
    <q-input v-if="show_minimal_autodeal_rating" outlined label="Введите минимальный рейтинг для быстрого бронирования" min="1" v-model.number="new_object.minimal_autodeal_rating" clearable type="number" class="q-mt-sm"/>
    <div>
      <h5 class="text-01 q-mb-lg">Что такое быстрое бронирование?</h5>
      <div class="text-m flex items-center no-wrap">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px;" no-spinner/>
        Быстрое бронирование - это функция, когда бронь на объект подтверждается автоматически. Вам не нужно будет просматривать профиль гостя и принимать решение. Система сама примет бронь от пользователя
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px;" no-spinner/>
        Если вы хотите самостоятельно принимать решение о подтверждении бронирования - ничего не изменяйте в этом окне.
      </div>
    </div>
    <div>
      <h5 class="text-01 q-mb-lg">Преимущества быстрого бронирования</h5>
      <div class="text-m flex items-center no-wrap">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px;" no-spinner/>
        На карточке вашего объявления будет отображаться маркер, который выделит ваше объявление среди других
      </div>
      <div class="text-m flex items-center q-mt-md">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px;" no-spinner/>
        Гости смогут быстрее найти вас, если укажут поиск по быстрому бронированию
      </div>
      <div class="text-m flex items-center q-mt-md no-wrap">
        <q-img src="/assets/images/Point.svg" class="q-mr-md" style="width: 16px" no-spinner/>
        Вам не нужно будет тратить время на проверку профиля гостя, ведь быстрым бронированием могут воспользоваться гости с баллом не ниже указанного вами
      </div>
    </div>
  </div>
</template>

<script>
import {useObjectsStore} from "@/stores/objects";

export default {
  data() {
    return {
      new_object: useObjectsStore().new_object,
      show_minimal_autodeal_rating: false,
    }
  },
}
</script>