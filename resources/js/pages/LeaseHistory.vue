<template>
  <template v-if="is_ready">
    <template v-if="!confirm_deals.length && !not_confirm_deals.length">
      <div class="text-center q-mt-lg">
        <q-img src="/assets/images/no-data.svg" style="width: 400px" no-spinner/>
        <h6 class="text-01 q-mt-none">Бронирования не найдены</h6>
      </div>
    </template>
    <template v-else>
      <template v-if="not_confirm_deals.length">
        <h4 class="text-01 q-mb-lg">Ожидают подтверждения</h4>
        <div class="row q-gutter-lg">
          <ObjectCard v-for="deal in not_confirm_deals" :object="getObjectById(deal.object_id)" :flat="false" :delete_deal_id="deal.id"/>
        </div>
      </template>
      <template v-if="confirm_deals.length">
        <h4 class="text-01 q-mb-lg">Активные</h4>
        <div class="row q-gutter-lg">
          <ObjectCard v-for="deal in confirm_deals" :object="getObjectById(deal.object_id)" :flat="false" :contract_deal_id="deal.id"/>
        </div>
      </template>
    </template>
  </template>
</template>

<script>
import ObjectCard from "@/components/ObjectCard.vue";
import {useDealsStore} from "@/stores/deals";
import {useObjectsStore} from "@/stores/objects";

export default {
  components: {ObjectCard},
  data() {
    return {
      is_ready: false,
      DEALS_STORE: useDealsStore(),
      OBJECTS_STORE: useObjectsStore(),
    }
  },
  computed: {
    confirm_deals() {
      return this.DEALS_STORE.deals.filter(deal => deal.confirmed === true)
    },
    not_confirm_deals() {
      return this.DEALS_STORE.deals.filter(deal => deal.confirmed === false)
    },
  },
  methods: {
    getObjectById(object_id) {
      return this.OBJECTS_STORE.objects.find(object => object.id === object_id)
    },
    objectsByDeals(deals) {
      return this.OBJECTS_STORE.objects.filter(object => deals.find(deal => deal.object_id === object.id))
    },
  },
  beforeMount() {
    Promise.all([this.DEALS_STORE.getMyDeals(), this.OBJECTS_STORE.getAllObjects()])
        .then(() => this.is_ready = true)
  }
}
</script>

