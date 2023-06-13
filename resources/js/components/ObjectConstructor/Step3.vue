<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Расскажите подробнее о вашей площадке</h1>
    <div class="row q-col-gutter-md">
      <!-- Инвентарь на площадке -->
      <div class="col-6">
        <div class="text-m q-mb-xs">Инвентарь на площадке</div>
        <q-input outlined placeholder="Например, микрофон" v-model="new_inventory">
          <template v-slot:append>
            <q-btn @click.stop="addInventory()" label="Добавить" :disable="!new_inventory" :color="new_inventory ? 'primary' : null" no-caps flat/>
          </template>
        </q-input>
        <div class="row q-gutter-xs q-mt-sm">
          <q-chip v-for="(inventory_el, index) in new_object.inventory" :label="inventory_el" removable @remove="new_object.inventory.splice(index, 1)" square class="q-px-md"/>
        </div>
      </div>
      <!-- Удобства на площадке -->
      <div class="col-6">
        <div class="text-m q-mb-xs">Удобства на площадке</div>
        <q-input outlined placeholder="Например, парковка " v-model="new_comfort">
          <template v-slot:append>
            <q-btn @click.stop="addComfort()" label="Добавить" :disable="!new_comfort" :color="new_comfort ? 'primary' : null" no-caps flat/>
          </template>
        </q-input>
        <div class="row q-gutter-xs q-mt-sm">
          <q-chip v-for="(comfort_el, index) in new_object.benefits" :label="comfort_el" removable @remove="new_object.benefits.splice(index, 1)" square class="q-px-md"/>
        </div>
      </div>
    </div>
    <!-- Описание площадки -->
    <div class="q-mt-xl">
      <div class="text-m q-mb-xs">Описание площадки</div>
      <q-input v-model="new_object.description" type="textarea" outlined placeholder="Например, просторная площадка для проведения лекций и семинаров"/>
    </div>
  </div>
</template>

<script>
import {useObjectsStore} from "@/stores/objects";

export default {
  data() {
    return {
      new_inventory: null,
      new_comfort: null,
      new_object: useObjectsStore().new_object
    }
  },
  methods: {
    addInventory() {
      this.new_object.inventory.push(this.new_inventory);
      this.new_inventory = null;
    },
    addComfort() {
      this.new_object.benefits.push(this.new_comfort);
      this.new_comfort = null;
    },
  }
}
</script>