<template>
    <AccountContainer>
        <div class="row">
            <div class="col-lg-7 col-md-12 col-xs-12 q-mt-md q-mr-auto">
                <div class="column">
                    <span class="text-m-b text-01">Имя по документам</span>
                    <span class="text-xs text-02">Имя здесь должно совпадать с именем в вашем паспорте</span>
                    <q-input outlined v-model="text" readonly class="base-03" />
                </div>
                <div class="column q-mt-lg">
                    <span class="text-m-b text-01">Документ подтверждающий личность</span>
                    <span class="text-xs text-02">Удостоверение личности государственного образца</span>
                    <q-btn label="Загрузить документ" class="link q-mt-sm" style="width: fit-content" outline unelevated
                        no-caps />
                </div>
                <div class="column q-mt-lg">
                    <span class="text-m-b text-01">Дата рождения</span>
                    <span class="text-xs text-02">Пользоваться сервисом могут лица, старше 18 лет</span>
                    <q-input outlined v-model="date" type="date" />
                </div>
                <div class="column q-mt-lg">
                    <span class="text-m-b text-01">Номер телефона</span>
                    <span class="text-xs text-02">Для связи с CreativeHub и гостями по подтверждённым
                        бронированиям</span>
                    <q-input mask="+7(###)###-##-##" fill-mask="_" outlined v-model="phone" />
                    <q-btn label="Добавить другой номер" class="link text-s-b" style="width: fit-content" flat no-caps />
                </div>
                <div class="column q-mt-lg">
                    <span class="text-m-b text-01">Электронная почта</span>
                    <span class="text-xs text-02">Для связи с CreativeHub и гостями по подтверждённым
                        бронированиям</span>
                    <q-input outlined v-model="mail" />
                </div>
                <div class="column q-mt-lg">
                    <span class="text-m-b text-01">Информация о себе</span>
                    <span class="text-xs text-02">Расскажите своим гостям и арендодателям о себе</span>
                    <q-input outlined v-model="about" type="textarea" />
                </div>



            </div>
            <div class="col-lg-4 col-md-12 col-xs-12 q-mt-md flex column">
                <div class="info-card">
                    <img src="../assets/images/OTP-amico 1.svg" />
                    <span class="text-m-b text-01">Повысьте безопасность аккаунта</span>
                    <span class="text-s text-01">Безопасность нашего сообщества в приоритете. По этой причине мы проверяем
                        степень защиты всех аккаунтов.</span>
                </div>
            </div>
        </div>
    </AccountContainer>
</template>
<script>
import { ref } from 'vue';
import AccountContainer from '../components/AccountContainer.vue';

export default {
    data() {
        return {

        };
    },
    name: "Home",
    components: { AccountContainer }
}


</script>

<style scoped></style>
