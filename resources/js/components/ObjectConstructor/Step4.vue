<template>
  <!-- Название площадки -->
  <div class="q-mt-lg q-gutter-y-lg">
    <div>
      <h1 class="text-01">Укажите местоположение площадки</h1>
      <div>
        <div class="text-01">Адрес</div>
        <div class="q-gutter-y-sm q-mt-xs">
          <q-input outlined label="Город" v-model="city" disable/>
          <q-input outlined label="Улица" v-model.lazy="street_name" placeholder="Например, Ватутина"/>
          <q-input outlined label="Дом" v-model="street_number" placeholder="Например, 9" type="number"/>
        </div>
      </div>
    </div>

    <div>
      <div class="text-01">Дополнительная информация</div>
      <q-input outlined placeholder="Например, подъезд во двор со стороны рынка или номер подъезда" v-model="new_object.address_comment" class="q-mt-xs"/>
    </div>

    <div>
      <div class="text-01">Координаты на карте</div>
      <Banner type="info" class="q-mb-sm q-mt-xs">
        Метка обновится после изменения адреса в форме ввода
      </Banner>
      <YandexMap :coordinates="new_object.coordinates ?? [55.75, 37.62]"
                 :zoom="new_object.coordinates ? 18 : 11"
                 :detailed-controls="map_detailed_controls"
                 :controls="map_controls" style="height: 600px; width: 100%">
        <YandexMarker v-if="new_object.coordinates" :coordinates="new_object.coordinates"/>
      </YandexMap>
    </div>
  </div>
</template>

<script>
import {YandexMap, YandexMarker} from 'vue-yandex-maps'
import Banner from "../UI/Banner.vue";
import axios from "axios";
import {useObjectsStore} from "@/stores/objects";

export default {
  components: {Banner, YandexMarker, YandexMap},
  data() {
    return {
      new_object: useObjectsStore().new_object,

      city: "Москва",
      street_name: null,
      street_number: null,
      description: null,


      last_req: null,
      map_controls: ['typeSelector', 'trafficControl', 'fullscreenControl'],
      map_detailed_controls: {zoomControl: {position: {right: 10, top: 50}}},
    }
  },
  computed: {
    addres_is_set() {
      return this.street_name  && this.street_number;
    }
  },
  watch: {
    addres_is_set(v) {
      if (v) {
        let payload = `г. Москва, ул. ${this.street_name}, д. ${this.street_number}`;
        this.last_req = payload;
        axios.get("https://geocode-maps.yandex.ru/1.x/?format=json&apikey=253b2eae-b322-4893-a57c-3d63323b3558&geocode=" + payload)
            .then((res) => {
              if (this.last_req === payload) {
                let point = res.data.response.GeoObjectCollection.featureMember[0].GeoObject.Point.pos.split(' ');
                this.new_object.address = payload;
                this.new_object.coordinates = [Number(point[1]), Number(point[0])]
              }
            })
      }
    }
  }
}
</script>