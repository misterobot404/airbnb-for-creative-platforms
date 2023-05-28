<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Укажите местоположение площадки</h1>

    <div>
      <div class="text-01">Адрес</div>
      <div class="q-gutter-y-sm q-mt-xs">
        <q-input outlined label="Город" v-model="city" disable/>
        <q-input outlined label="Улица" v-model="street_name"/>
        <q-input outlined label="Дом" v-model="street_number"/>
        <q-input outlined label="Подьезд" v-model="door_number"/>
      </div>
    </div>

    <div class="q-my-md">
      <div class="text-01">Дополнительная информация</div>
      <q-input outlined placeholder="Например, подъезд во двор со стороны рынка" v-model="description" class="q-mt-xs"/>
    </div>

    <div>
      <div class="text-01">Координаты на карте</div>
      <Banner type="info" class="q-mb-sm q-mt-xs">
        Метка будет выставлена после ввода адреса
      </Banner>
      <YandexMap :coordinates="[55.75, 37.62]"
                 :zoom="11"
                 :detailed-controls="map_detailed_controls"
                 :controls="map_controls" style="height: 600px; width: 100%">
        <!--          <YandexMarker :coordinates="[55.684381, 37.339849]"/>-->
      </YandexMap>
    </div>

  </div>
</template>

<script>
import {YandexMap, YandexMarker} from 'vue-yandex-maps'
import Banner from "../UI/Banner.vue";

export default {
  components: {Banner, YandexMarker, YandexMap},
  data() {
    return {
      city: "Москва",
      street_name: null,
      street_number: null,
      door_number: null,
      description: null,

      map_controls: ['typeSelector', 'trafficControl', 'fullscreenControl'],
      map_detailed_controls: {zoomControl: {position: {right: 10, top: 50}}},
    }
  },
}
</script>