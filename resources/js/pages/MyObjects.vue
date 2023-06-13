<template>
  <template v-if="is_ready">
    <MyObjectsContainer>
      <template v-if="!confirm_objects.length && !not_confirm_objects.length">
        <div class="text-center q-mt-lg">
          <q-img src="/assets/images/no-data.svg" style="width: 400px" no-spinner/>
          <h6 class="text-01 q-mt-none">Объявления не найдены</h6>
        </div>
      </template>
      <template v-else>
        <template v-if="not_confirm_objects.length">
          <h4 class="text-01 q-mb-lg">Ожидают модерации</h4>
          <div class="row q-gutter-lg">
            <ObjectCard v-for="object in not_confirm_objects" :object="object" :flat="false" :delete_control="true"/>
          </div>
        </template>
        <template v-if="confirm_objects.length">
          <h4 class="text-01 q-mb-lg">Активные</h4>
          <div class="row q-gutter-lg">
            <ObjectCard v-for="object in confirm_objects" :object="object" :flat="false" :delete_control="true"/>
          </div>
        </template>
      </template>
    </MyObjectsContainer>
  </template>
</template>

<script>
import MyObjectsContainer from '../components/MyObjectsContainer.vue';
import ObjectCard from "@/components/ObjectCard.vue";
import {useObjectsStore} from "@/stores/objects";

export default {
  components: {MyObjectsContainer, ObjectCard},
  data() {
    return {
      is_ready: false,
      OBJECTS_STORE: useObjectsStore()
    }
  },
  computed: {
    confirm_objects() {
      return this.OBJECTS_STORE.objects.filter(object => object.moderated === true)
    },
    not_confirm_objects() {
      return this.OBJECTS_STORE.objects.filter(object => object.moderated === false)
    },
  },
  beforeMount() {
    this.OBJECTS_STORE.getMyObjects().then(() => this.is_ready = true)
  }
}
</script>

