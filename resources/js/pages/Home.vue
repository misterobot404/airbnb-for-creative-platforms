<template>
  <template v-if="ready">
    <div class="column full-height">
      <div class="flex justify-center" style="margin: 0 36px 0">
        <q-tabs v-model="selected_category" align="justify" narrow-indicator>
          <q-tab v-for="category in [allin_category, ...categories]"
                 style="max-width: 160px"
                 class="q-pt-xs"
                 :name="category.id"
                 no-caps>
            <q-img :src="category.logo_url" height="26px" width="26px" no-spinner/>
            <div class="text-01 q-mt-xs" style="white-space: normal; line-height: 1.4; margin-bottom: 2px">{{ category.name }}</div>
          </q-tab>
        </q-tabs>
      </div>
      <div class="flex-grow-1 relative-position">
        <YandexMap :coordinates="[55.75, 37.62]"
                   :zoom="11"
                   :detailed-controls="map_detailed_controls"
                   :controls="map_controls" style="height: 100%">
          <!--          <YandexMarker :coordinates="[55.684381, 37.339849]"/>-->
        </YandexMap>
        <!-- Переключение режима отображения -->
        <q-btn @click="show_mode = show_mode === 'map' ? 'list' : 'map'"
               :label="show_mode === 'map' ? 'Показать список' : 'Показать карту'"
               class="absolute border-radius-md"
               color="dark"
               no-caps
               :icon="show_mode === 'map' ? 'list' : 'map'"
               style="bottom: 50px; left: 50%; transform: translate(-50%, -50%); height: 44px"/>
      </div>
    </div>
  </template>
</template>

<script>
import {YandexMap, YandexMarker} from 'vue-yandex-maps'
import {useObjectsStore} from "@/stores/objects";
import {mapState} from "pinia";
import allinCategory from "../assets/images/allin_category.svg"

export default {
  name: "Home",
  components: {YandexMarker, YandexMap},
  data() {
    return {
      ready: false,
      show_mode: "map",
      allin_category: {
        id: null,
        name: "Все",
        logo_url: allinCategory,
      },
      selected_category: null,

      map: null,
      map_controls: ['typeSelector', 'trafficControl', 'fullscreenControl'],
      map_detailed_controls: {zoomControl: {position: {right: 10, top: 50}}},
    }
  },
  computed: {
    ...mapState(useObjectsStore, ['objects', "categories"])
  },
  methods: {},
  beforeMount() {
    const object_store = useObjectsStore();

    Promise.all([object_store.getObjects(), object_store.getCategories()]).then(() => this.ready = true)
  }
}
</script>

<style scoped></style>
