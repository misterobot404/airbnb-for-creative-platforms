<template>
    <div class="row">
        <div class="col-12 q-mt-lg ">
            <h1 class="text-01">К какому типу относится ваша площадка?</h1>
        </div>
        <div class="col-3 q-mt-lg column ">
            <q-btn v-model="model" color="primary" label="Киностудия" value="videostudio" flat icon="mail"
                class="items-start" />
            <q-btn v-model="model" color="primary" label="Галерея" value="videostudio" flat icon="mail"
                class="items-start q-mt-md" />
        </div>
        <div class="col-3 q-mt-lg column ">
            <q-btn v-model="model" color="primary" label="Издательства" value="videostudio" flat icon="mail"
                class="items-start" />
            <q-btn v-model="model" color="primary" label="Книжные магазины" value="videostudio" flat icon="mail"
                class="items-start q-mt-md" />
        </div>
        <div class="col-3 q-mt-lg column ">
            <q-btn v-model="model" color="primary" label="Дизайн студии" value="videostudio" flat icon="mail"
                class="items-start" />
            <q-btn v-model="model" color="primary" label="Креативные пространства" value="videostudio" flat icon="mail"
                class="items-start q-mt-md" />
        </div>
        <div class="col-3 q-mt-lg column ">
            <q-btn v-model="model" color="primary" label="Кинотеатры" value="videostudio" flat icon="mail"
                class="items-start" />
            <q-btn v-model="model" color="primary" label="Звукозаписывающие студии" value="videostudio" flat icon="mail"
                class="items-start q-mt-md" />
        </div>
    </div>
</template>

<script>
import { ref } from 'vue';


export default {
    data() {
        return {
            model: ref("")
        }
    },
}
</script>