<template>
  <template v-if="is_ready">
    <MyObjectsContainer>
      <template v-if="!confirm_deals.length && !not_confirm_deals.length">
        <div className="text-center q-mt-lg">
          <q-img src="/assets/images/no-data.svg" style="width: 400px" no-spinner/>
          <h6 className="text-01 q-mt-none">Бронирования не найдены</h6>
        </div>
      </template>
      <template v-else>
        <q-toggle v-model="show_only_not_confirm" label="Отображать только объявления ожидающие подтверждения бронирования" class="q-mb-xs q-mt-lg"/>
        <q-table
            flat
            bordered
            :rows="show_only_not_confirm ? DEALS_STORE.deals.filter(deal => !deal.confirmed) : DEALS_STORE.deals"
            :columns="columns"
            separator="cell"
            :pagination="{rowsPerPage: 10}"
        >
          <template v-slot:body-cell-object_id="props">
            <q-td :props="props">
              <router-link :to="'/objects/' + props.row.object_id" target="_blank">{{ getObjectById(props.row.object_id).title }}</router-link>
            </q-td>
          </template>
          <template v-slot:body-cell-customer_id="props">
            <q-td :props="props">
              <div>
                <u class="cursor-pointer">{{ `${getUserById(props.row.customer_id).surname} ${getUserById(props.row.customer_id).name} ${getUserById(props.row.customer_id).patronymic}` }}</u>
                <q-popup-edit auto-save v-slot="scope">
                  <UserCard :user="getUserById(props.row.customer_id)" show_rating_type="taker"/>
                </q-popup-edit>
              </div>
              <div class="text-02">{{ `${getUserById(props.row.customer_id).phonenumber}` }}</div>
            </q-td>
          </template>
          <template v-slot:body-cell-date="props">
            <q-td :props="props" style="min-width: 160px;">
              <div>от {{ new Date(props.row.starts_from).toLocaleString("ru", {day: "2-digit", month: "2-digit", year: "numeric", hour: "2-digit", minute: "2-digit"}) }}</div>
              <div>до {{ new Date(props.row.ends_on).toLocaleString("ru", {day: "2-digit", month: "2-digit", year: "numeric", hour: "2-digit", minute: "2-digit"}) }}</div>
            </q-td>
          </template>
          <template v-slot:body-cell-confirmed="props">
            <q-td :props="props">
              <div class="flex justify-center">
                <q-badge :color="props.row.confirmed ? 'primary' : 'red-5'"
                         class="q-pa-xs" style="max-width: 100px; white-space: normal; line-height: normal">
                  {{ props.row.confirmed ? "Подтверждён" : "Ожидает подтверждения" }}
                </q-badge>
              </div>
            </q-td>
          </template>
          <template v-slot:body-cell-action="props">
            <q-td :props="props" class="q-gutter-xs" style="min-width: 238px">
              <q-btn v-if="!props.row.confirmed" label="Подтвердить" flat class="q-px-sm secondary text-primary" no-caps
                     dense style="font-weight: 500"
                     @click="confirmDeal(props.row.id)"
                     :loading="confirming_id === props.row.id"/>
              <q-btn label="Отклонить" flat class="bg-grey-3 q-px-sm q-ml-sm"
                     no-caps dense style="font-weight: 400"
                     @click="removeDeal(props.row.id)"
                     :loading="deleting_id === props.row.id"/>
            </q-td>
          </template>
        </q-table>
      </template>
    </MyObjectsContainer>
  </template>
</template>

<script>
import MyObjectsContainer from '../components/MyObjectsContainer.vue';
import ObjectCard from "@/components/ObjectCard.vue";
import {useDealsStore} from "@/stores/deals";
import {useObjectsStore} from "@/stores/objects";
import axios from "axios";
import {date} from "quasar";
import UserCard from "@/components/UserCard.vue";

export default {
  components: {UserCard, MyObjectsContainer, ObjectCard},
  data() {
    return {
      is_ready: false,
      show_only_not_confirm: false,

      DEALS_STORE: useDealsStore(),
      OBJECTS_STORE: useObjectsStore(),
      users: null,

      confirming_id: null,
      deleting_id: null,

      columns: [
        {
          name: 'id',
          label: '#',
          align: 'left',
          field: row => row.id,
          sortable: true
        },
        {
          name: 'object_id',
          label: 'Площадка',
          align: 'left',
          field: row => row.object_id,
          sortable: true
        },
        {
          name: 'customer_id',
          label: 'Арендатор',
          align: 'left',
          field: row => row.customer_id,
          sortable: true
        },
        {
          name: 'date',
          label: 'Дата',
          align: 'left',
          sortable: true
        },
        {
          name: 'hour_price',
          label: 'Цена за час',
          align: 'left',
          field: row => Number(row.hour_price) + '₽',
          sortable: true
        },
        {
          name: 'total_price',
          label: 'Общая стоимость',
          align: 'left',
          field: row => Number(row.total_price) + '₽',
          sortable: true
        },
        {
          name: 'confirmed',
          label: 'Статус',
          align: 'left',
          field: row => row.confirmed,
          sortable: true
        },
        {
          name: 'action',
          label: 'Действия',
          align: 'center'
        },
      ],

      all_objects: [],
      all_reviews: []
    }
  },
  computed: {
    date() {
      return date
    },
    confirm_deals() {
      return this.DEALS_STORE.deals.filter(deal => deal.confirmed === true)
    },
    not_confirm_deals() {
      return this.DEALS_STORE.deals.filter(deal => deal.confirmed === false)
    },
  },
  methods: {
    getObjectById(id) {
      return this.OBJECTS_STORE.objects.find(object => object.id === id)
    },
    getUserById(id) {
      return this.users.find(user => user.id === id)
    },
    objectsByDeals(deals) {
      return this.OBJECTS_STORE.objects.filter(object => deals.find(deal => deal.object_id === object.id))
    },
    confirmDeal(id) {
      this.confirming_id = id;
      axios.patch("/api/deals/" + id + "/confirm")
          .then(() => useDealsStore().getDealsOnMyObject());
    },
    removeDeal(id) {
      if (!confirm("Вы уверены, что хотите отклонить заявку на бронирование площадки?")) {
        return
      }
      this.deleting_id = id;
      axios.delete(`/api/deals/` + id)
          .then(() => useDealsStore().getDealsOnMyObject());
    }
  },
  beforeMount() {
    axios.get(`/api/all_objects`).then(response => this.all_objects = response.data);
    axios.get(`/api/reviews`).then(response => this.all_reviews = response.data);

    Promise.all([this.DEALS_STORE.getDealsOnMyObject(), this.OBJECTS_STORE.getAllObjects(), axios.get('/api/users').then(response => this.users = response.data)])
        .then(() => this.is_ready = true)
  }
}
</script>

<style scoped>
.my-custom-toggle {
  border: 1px solid #EDEDED
}
</style>
