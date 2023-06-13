<template>
  <!-- Название площадки -->
  <div class="q-pt-lg">
    <h1 class="text-01">Время сдачи объекта</h1>
    <div class="flex items-start no-wrap q-pt-md">
      <div class="full-width q-pr-xl">
        <div class="text-01 q-mb-sm">Укажите диапазон дат для возможного бронирования</div>
        <div class="flex items-center no-wrap q-gutter-x-sm">
          <q-input @focus="dataStartFocus()" filled hide-bottom-space v-model="new_object.schedule_date_start" style="width: 100%" clearable>
            <template v-slot:append>
              <q-icon name="event" class="cursor-pointer">
                <q-popup-proxy cover transition-show="scale" transition-hide="scale" ref="start_date">
                  <q-date v-model="new_object.schedule_date_start" minimal mask="DD.MM.YYYY"/>
                </q-popup-proxy>
              </q-icon>
            </template>
          </q-input>
          <q-icon name="navigate_next" size="24px"/>
          <q-input @focus="dataEndFocus()" filled hide-bottom-space v-model="new_object.schedule_date_end" style="width: 100%" clearable>
            <template v-slot:append>
              <q-icon name="event" class="cursor-pointer">
                <q-popup-proxy cover transition-show="scale" transition-hide="scale" ref="end_date">
                  <q-date v-model="new_object.schedule_date_end" minimal mask="DD.MM.YYYY"/>
                </q-popup-proxy>
              </q-icon>
            </template>
          </q-input>
        </div>
        <div class="text-01 q-mb-sm q-mt-md">Укажите период времени</div>
        <div class="flex items-center no-wrap q-gutter-x-sm">
          <q-input @focus="timeStartFocus()" filled hide-bottom-space v-model="new_object.schedule_time_start" style="width: 100%" clearable>
            <template v-slot:append>
              <q-icon name="schedule" class="cursor-pointer">
                <q-popup-proxy cover transition-show="scale" transition-hide="scale" ref="time_start">
                  <q-time v-model="new_object.schedule_time_start" :minute-options="[0]"/>
                </q-popup-proxy>
              </q-icon>
            </template>
          </q-input>
          <q-icon name="navigate_next" size="24px"/>
          <q-input @focus="timeEndFocus()" filled hide-bottom-space v-model="new_object.schedule_time_end" style="width: 100%" clearable>
            <template v-slot:append>
              <q-icon name="schedule" class="cursor-pointer">
                <q-popup-proxy cover transition-show="scale" transition-hide="scale" ref="time_end">
                  <q-time v-model="new_object.schedule_time_end" :minute-options="[0]"/>
                </q-popup-proxy>
              </q-icon>
            </template>
          </q-input>
        </div>
      </div>
      <div class="info-card" style="max-width: 340px">
        <q-img src="/assets/images/site-amico-1.svg" no-spinner width="110px" height="110px"/>
        <span class="text-m-b text-01">Настраивайте время сдачи под себя</span>
        <span class="text-s text-01 text-center">
          Изменить указанные даты можно в любой момент в личном кабинете. Это никак не скажется на уже подтверждённых бронированиях.
        </span>
      </div>
    </div>
  </div>
</template>

<script>
import {useObjectsStore} from "@/stores/objects";

export default {
  data() {
    return {
      new_object: useObjectsStore().new_object
    }
  },
  methods: {
    dataStartFocus() {
      if (!this.new_object.schedule_date_start) {
        this.$refs.start_date.show();
      }
    },
    dataEndFocus() {
      if (!this.new_object.schedule_date_end) {
        this.$refs.end_date.show();
      }
    },
    timeStartFocus() {
      if (!this.new_object.schedule_time_start) {
        this.$refs.time_start.show();
      }
    },
    timeEndFocus() {
      if (!this.new_object.schedule_time_end) {
        this.$refs.time_end.show();
      }
    },
  },
  watch: {
    'new_object.schedule_date_start'(){
      this.$refs.start_date.hide();
    },
    'new_object.schedule_date_end'(){
      this.$refs.end_date.hide();
    },
    'new_object.schedule_time_start'(){
      this.$refs.time_start.hide();
    },
    'new_object.schedule_time_end'(){
      this.$refs.time_end.hide();
    }
  }
}
</script>