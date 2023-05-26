<template>
    <component :is="activeStep" />
    <div class="row q-mt-lg justify-center">
        <div class="navigator flex items-center">
            <div class="col">
                <q-btn @click="$refs.stepper.previous(), activeStep = 'Step0'" color="primary" label="Назад" outline
                    no-caps />
            </div>
            <div class="col-10 flex ">
                <q-stepper v-model="step" ref="stepper" color="primary" flat alternative-labels>
                    <q-step :name="1" title="Объект и его характеристики" :done="step > 1" />

                    <q-step :name="2" title="Местоположение" icon="place" :done="step > 2" />

                    <q-step :name="3" title="Цена" icon="money" :done="step > 3" />

                    <q-step :name="4" title="Публикация" icon="assignment" />

                </q-stepper>
            </div>
            <div class="col">
                <q-btn @click="$refs.stepper.next(), activeStep = 'Step1'" color="primary" no-caps unelevated
                    :label="step === 4 ? 'Готово' : 'Далее'" />
            </div>
        </div>
    </div>
</template>

<script>
import { ref } from 'vue'
import Step0 from '../components/Lease/Step0.vue'
import Step1 from '../components/Lease/Step1.vue'



export default {
    data() {
        return {
            activeStep: 'Step0',
            step: ref(1)
        };
    },
    name: "LeaseObject",
    components: {
        Step0,
        Step1,
    }
}
</script>

<style scoped>
:deep(.q-panel-parent) {
    display: none !important;
}


.navigator {
    position: absolute;
    bottom: 0;
    box-shadow: 0px 4px 24px rgba(0, 0, 0, 0.12);
    padding: 8px 16px;
}
</style>
