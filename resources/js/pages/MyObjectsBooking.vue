<template>
    <ObjectContainer>
        <div class="q-mt-lg">
            <q-btn-toggle v-model="model" class="my-custom-toggle" no-caps unelevated toggle-color="primary" color="white"
                text-color="text-01" :options="[
                        { label: 'Все', value: 'all' },
                        { label: 'Активные', value: 'active' },
                        { label: 'Предстоящие', value: 'future' },
                        { label: 'Завершённые', value: 'finished' },
                        { label: 'Отменённые', value: 'Canceled' },
                    ]" />
        </div>
        <div class="q-mt-md">
            <q-markup-table flat>
                <thead>
                    <tr>
                        <th class="text-left">Dessert (100g serving)</th>
                        <th class="text-right">Calories</th>
                        <th class="text-right">Fat (g)</th>
                        <th class="text-right">Carbs (g)</th>
                        <th class="text-right">Protein (g)</th>
                        <th class="text-right">Sodium (mg)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-left">Frozen Yogurt</td>
                        <td class="text-right">159</td>
                        <td class="text-right">6</td>
                        <td class="text-right">24</td>
                        <td class="text-right">4</td>
                        <td class="text-right">87</td>
                    </tr>
                    <tr>
                        <td class="text-left">Ice cream sandwich</td>
                        <td class="text-right">237</td>
                        <td class="text-right">9</td>
                        <td class="text-right">37</td>
                        <td class="text-right">4.3</td>
                        <td class="text-right">129</td>
                    </tr>
                    <tr>
                        <td class="text-left">Eclair</td>
                        <td class="text-right">262</td>
                        <td class="text-right">16</td>
                        <td class="text-right">23</td>
                        <td class="text-right">6</td>
                        <td class="text-right">337</td>
                    </tr>
                    <tr>
                        <td class="text-left">Cupcake</td>
                        <td class="text-right">305</td>
                        <td class="text-right">3.7</td>
                        <td class="text-right">67</td>
                        <td class="text-right">4.3</td>
                        <td class="text-right">413</td>
                    </tr>
                    <tr>
                        <td class="text-left">Gingerbread</td>
                        <td class="text-right">356</td>
                        <td class="text-right">16</td>
                        <td class="text-right">49</td>
                        <td class="text-right">3.9</td>
                        <td class="text-right">327</td>
                    </tr>
                </tbody>
            </q-markup-table>
        </div>
    </ObjectContainer>
</template>

<script>
import { ref } from 'vue';
import ObjectContainer from '../components/ObjectContainer.vue';

export default {
    data() {
        return {
            model: ref("all")
        }
    },
    name: "MyObjects",
    components: { ObjectContainer }
}
</script>

<style scoped>
.my-custom-toggle {
    border: 1px solid #EDEDED
}
</style>
