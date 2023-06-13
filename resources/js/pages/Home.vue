<template>
  <template v-if="ready">
    <div class="column full-height">
      <div class="flex justify-center" style="margin: 0 36px 0">
        <q-tabs v-model="selected_category" align="justify" narrow-indicator>
          <q-tab v-for="category in [allin_category, ...categories]"
                 style="max-width: 160px; padding-top: 8px;"
                 :name="category.id"
                 no-caps>
            <q-img :src="category.logo_url" height="26px" width="26px" no-spinner/>
            <div class="text-01 q-mt-xs" style="white-space: normal; line-height: 1.4; margin-bottom: 2px">{{ category.name }}</div>
          </q-tab>
        </q-tabs>
      </div>
      <div class="flex-grow-1 relative-position">
        <!-- Отображение картой  -->
        <template v-if="show_mode === 'map'">
          <YandexMap :coordinates="[55.75, 37.62]"
                     :zoom="12"
                     :detailed-controls="map_detailed_controls"
                     :controls="map_controls" style="height: 100%">
            <YandexClusterer v-if="objects_by_category"
                             :options="{disableClickZoom: true}">
              <YandexMarker
                  v-for="(object, index) in objects_by_category"
                  :coordinates="object.coordinates"
                  :marker-id="object.id"
                  :properties="{clusterCaption: object.title, balloonContentBody: customClustererContentLayout(object)}"
              >
                <template #component>
                  <ObjectCard :object="object" :flat="true"/>
                </template>
              </YandexMarker>
            </YandexClusterer>
          </YandexMap>
        </template>
        <!-- Отображение списком  -->
        <template v-else>
          <template v-if="objects_by_category.length">
            <div class="row q-gutter-lg page-padding q-mt-md" :class="objects_by_category.length > 3 ? 'justify-center' : null">
              <ObjectCard v-for="object in objects_by_category" :object="object" :flat="false"/>
            </div>
          </template>
          <template v-else>
            <div class="text-center q-mt-lg">
              <q-img src="/assets/images/no-data.svg" style="width: 400px" no-spinner/>
              <h6 class="text-01 q-mt-none">Объявления не найдены</h6>
            </div>
          </template>
        </template>

        <!-- Переключение режима отображения -->
        <q-btn @click="show_mode = show_mode === 'map' ? 'list' : 'map'"
               :label="show_mode === 'map' ? 'Показать список' : 'Показать карту'"
               class="fixed border-radius-md"
               color="dark"
               no-caps
               :icon="show_mode === 'map' ? 'list' : 'map'"
               style="bottom: 50px; left: 50%; transform: translate(-50%, -50%); height: 44px"/>
      </div>
    </div>
  </template>
</template>

<script>
import {YandexMap, YandexMarker, YandexClusterer} from 'vue-yandex-maps'
import {useObjectsStore} from "@/stores/objects";
import {mapState} from "pinia";
import ObjectCard from "@/components/ObjectCard.vue";

export default {
  name: "Home",
  components: {ObjectCard, YandexMarker, YandexMap, YandexClusterer},
  data() {
    return {
      ready: false,
      show_mode: "map",
      allin_category: {
        id: null,
        name: "Все",
        logo_url: "/assets/images/category_icons/allin_category.svg",
      },
      selected_category: null,

      map: null,
      map_controls: ['typeSelector', 'trafficControl', 'fullscreenControl'],
      map_detailed_controls: {zoomControl: {position: {right: 10, top: 50}}},
    }
  },
  computed: {
    ...mapState(useObjectsStore, ['objects', "categories"]),

    objects_by_category() {
      return this.objects.filter(object => object.category_id === this.selected_category || null === this.selected_category)
    }
  },
  methods: {
    customClustererContentLayout(object) {
      const template = `
        <div>
          <img src="${object.gallery[0]}" style="max-width: 100%; max-height: 160px; width: 100%">
          <div style="margin-top: 12px">
            <div class="flex no-wrap justify-between items-center">
              <div class="text-02">${object.address }</div>
              <a href="/objects/${object.id}" class="q-ml-sm q-btn q-btn-item non-selectable no-outline q-btn--unelevated q-btn--rectangle bg-primary text-white q-btn--actionable q-focusable q-hoverable q-btn--no-uppercase" tabindex="0" href="/objects/33" style="padding: 0px 12px;"><span class="q-focus-helper"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">Открыть</span></span></a>
            </div>
            <div class="q-my-sm ellipsis-2-lines">
              ${ object.description }
            </div>
            <div class="flex justify-between q-gutter-y-sm">
              <div class="text-02">
                ${ new Date(object.created_at).toLocaleString("ru", {year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit'}) }
              </div>
              <div class="q-pl-md text-s-b">
                ${ object.hour_price } ₽ в час
              </div>
            </div>
          </div>
        <div>
      `
      return template;
    }
  },
  beforeMount() {
    const object_store = useObjectsStore();

    Promise.all([object_store.getObjects(), object_store.getCategories()]).then(() => this.ready = true)
  }
}
</script>

<style>
.yandex-balloon {
  height: 380px;
  width: 400px;
}

[class*="cluster-content__header"] {
  font-size: 18px !important;
  font-weight: 500 !important;
  font-family: Inter;
  height: unset !important;
}

[class*="cluster-tabs__menu-item"] {
  padding: 2px 10px 2px 5px !important;
  font-family: Inter;
}

[class*="-b-cluster-tabs"] {
  height: unset !important;
}

[class*="b-cluster-tabs__section_type_nav"] {
  height: 100% !important;
}
</style>
