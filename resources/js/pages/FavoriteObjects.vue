<template>
  <template v-if="is_ready">
    <template v-if="!FAVORITES_STORE.favorites.length">
      <div className="text-center q-mt-lg">
        <q-img src="/assets/images/no-data.svg" style="width: 400px" no-spinner/>
        <h6 className="text-01 q-mt-none">Избранные площадки не добавлены</h6>
      </div>
    </template>
    <template v-else>
      <h4 className="text-01 q-mb-lg">Избранные площадки</h4>
      <div className="row q-gutter-lg">
        <ObjectCard v-for="object in favorite_objects" :object="object" :flat="false"
                    :favorite_id="FAVORITES_STORE.favorites.find(favorite => favorite.object_id === object.id).id"/>
      </div>
    </template>
  </template>
</template>

<script>
import {useFavoritesStore} from "@/stores/favorites";
import {useObjectsStore} from "@/stores/objects";
import ObjectCard from "@/components/ObjectCard.vue";

export default {
  name: "FavoriteObjects",
  components: {ObjectCard},
  data() {
    return {
      is_ready: false,
      FAVORITES_STORE: useFavoritesStore(),
      OBJECTS_STORE: useObjectsStore()
    }
  },
  computed: {
    favorite_objects() {
      return this.OBJECTS_STORE.objects.filter((object) => {
        return !!this.FAVORITES_STORE.favorites.find(favorite => favorite.object_id === object.id)
      })
    }
  },
  beforeMount() {
    Promise.all([this.FAVORITES_STORE.index(), this.OBJECTS_STORE.getAllObjects()]).then(() => this.is_ready = true);
  }
}
</script>

<style scoped></style>
