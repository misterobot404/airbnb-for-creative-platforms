<template>
    <q-layout>
        <q-page-container>
            <div class="row q-mt-lg">
                <div class="col-12">
                    <div class="q-gutter-y-md" style="width: fit-content;">
                        <q-tabs v-model="tab" class="text-01 text-m" indicator-color="primary" no-caps>
                            <q-route-tab name="myObjects" to="/my_objects" label="Мои объекты" />
                            <q-route-tab name="booking" to="/my_objects/booking" label="Бронирования"> <q-badge color="red"
                                    floating>2</q-badge> </q-route-tab>
                            <q-route-tab name="finance" to="/my_objects/finance" label="Финансы" />
                        </q-tabs>
                    </div>
                </div>
            </div>
            <slot />
        </q-page-container>
    </q-layout>
</template>

<script>
export default {
    data() {
        return {
            tab: ""
        };
    },
}

</script>