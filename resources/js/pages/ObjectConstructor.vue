<template>
  <!-- Активный шаг создания объекта -->
  <component :is="active_step"/>
  <!-- Навигация между шагами -->
  <div class="row q-mt-lg justify-center">
    <div class="navigator flex items-center">
      <q-btn @click="step === 1 ? $router.push('/object_constructor_previout') : $refs.stepper.previous()" flat text-color="primary" label="Назад" outline no-caps style="padding: 10px 18px; background-color: #EBEFFF"
             class="q-mb-lg" icon="arrow_back"/>
      <div class="flex q-mx-lg">
        <q-stepper v-model="step" ref="stepper" color="primary" flat alternative-labels>
          <q-step :name="1" title="Объект и его характеристики" :done="step > 3" icon="edit" color="primary"/>
          <q-step :name="2"/>
          <q-step :name="3"/>
          <q-step :name="4" title="Местоположение" icon="place" :done="step > 4"/>
          <q-step :name="5" title="Цена" icon="money" :done="step > 5"/>
          <q-step :name="6" title="Публикация" icon="assignment"/>
        </q-stepper>
      </div>
      <q-btn @click="$refs.stepper.next()" color="primary" style="padding: 10px 18px" no-caps unelevated :label="step === 4 ? 'Готово' : 'Далее'" class="q-mb-lg" icon-right="arrow_forward"/>
    </div>
  </div>
</template>

<script>
import Step1 from "@/components/ObjectConstructor/Step1.vue";
import Step2 from "@/components/ObjectConstructor/Step2.vue";
import Step3 from "@/components/ObjectConstructor/Step3.vue";

export default {
  name: "ObjectConstructor",
  components: {Step1, Step2, Step3},
  data() {
    return {
      step: 1
    }
  },
  computed: {
    active_step() {
      switch (this.step) {
        case 1:
          return 'Step1';
        case 2:
          return 'Step2';
        case 3:
          return 'Step3';
      }
    }
  }
}
</script>

<style scoped>
:deep(.q-panel-parent) {
  display: none !important;
}

:deep(.on-left) {
  margin-right: 6px;
}

:deep(.on-right) {
  margin-left: 6px;
}

:deep(.q-stepper__title) {
  width: 115px;
}

:deep(.q-stepper__dot) {
  font-size: 16px;
  width: 34px;
  min-width: 34px;
  height: 34px;
}

.navigator {
  position: absolute;
  bottom: 0;
  box-shadow: 0px 4px 24px rgba(0, 0, 0, 0.14);
  padding: 4px 36px;
}

:deep(.q-stepper__tab:nth-child(2)), :deep(.q-stepper__tab:nth-child(3)) {
  display: none;
}
</style>

