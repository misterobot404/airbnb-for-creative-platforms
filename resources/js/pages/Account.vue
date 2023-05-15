<template>
    <q-layout>
        <q-page-container>
            <div class="row">
                <div class="col-12">
                    <div class="q-gutter-y-md" style="width: fit-content;">
                        <q-tabs v-model="tab" class="text-01 text-m" indicator-color="primary">
                            <q-tab name="profile" label="Мой профиль"/>
                            <q-route-tab name="security" to="/account_security" label="Безопасность" />
                            <q-route-tab name="payments" label="Платежи" />
                            <q-route-tab name="notifications" label="Уведомления" />
                        </q-tabs>
                    </div>
                </div>
            </div>
            <div class="row q-mt-md">
                <div class="col-3 col-6-md col-12-sm flex column items-center">
                        <img src="/assets/image/LeshaSVO.png" alt="Аватарка" style="width: fit-content">
                        <q-btn
                            class="self-center secondary link"
                            label="Загрузить фото"
                            unelevated
                            no-caps
                        />
                </div>
                <div class="col-4 ">
                    <div class="column">
                        <span class="text-m-b text-01">Имя по документам</span>
                        <span class="text-xs text-02">Имя здесь должно совпадать с именем в вашем паспорте</span>
                        <q-input
                            outlined
                            v-model="text"
                            readonly
                            class="base-03"
                        />
                    </div>
                    <div class="column q-mt-lg">
                        <span class="text-m-b text-01">Документ подтверждающий личность</span>
                        <span class="text-xs text-02">Удостоверение личности государственного образца</span>
                        <q-btn
                            label="Загрузить документ"
                            class="link q-mt-sm"
                            style="width: fit-content"
                            outline
                            unelevated
                            no-caps
                        />
                    </div>
                    <div class="column q-mt-lg">
                        <span class="text-m-b text-01">Дата рождения</span>
                        <span class="text-xs text-02">Пользоваться сервисом могут лица, старше 18 лет</span>
                        <q-input
                            outlined
                            v-model="date"
                            type="date"
                        />
                    </div>
                    <div class="column q-mt-lg">
                        <span class="text-m-b text-01">Номер телефона</span>
                        <span class="text-xs text-02">Для связи с CreativeHub и гостями по подтверждённым бронированиям</span>
                        <q-input
                            mask="+7(###)###-##-##"
                            fill-mask="_"
                            outlined
                            v-model="phone"
                        />
                        <q-btn
                        label="Добавить другой номер"
                        class="link text-s-b"
                        style="width: fit-content"
                        flat
                        no-caps
                        />
                    </div>
                    <div class="column q-mt-lg">
                        <span class="text-m-b text-01">Электронная почта</span>
                        <span class="text-xs text-02">Для связи с CreativeHub и гостями по подтверждённым бронированиям</span>
                        <q-input
                            outlined
                            v-model="mail"
                        />
                    </div>
                    <div class="column q-mt-lg">
                        <span class="text-m-b text-01">Информация о себе</span>
                        <span class="text-xs text-02">Расскажите своим гостям и арендодателям о себе</span>
                        <q-input
                            outlined
                            v-model="about"
                            type="textarea"
                        />
                    </div>



                </div>
                <div class="col-4 col-12-md col-12-sm flex column items-center flex-start">
                    <div class="info-card">
                        <object data="/assets/image/site-amico-1.svg"></object>
                        <span class="text-m-b text-01">Зачем вносить ваши данные?</span>
                        <span class="text-s text-01">Для заключения договоров на площадке CreativeHub необходимо подтвердить вашу личность.
                            Мы храним все персональные данные в соответствии с ФЗ-152 “О персональных данных”.</span>
                    </div>
                    <div class="info-card q-mt-lg">
                        <object data="/assets/image/analysis-amico-1.svg"></object>
                        <span class="text-m-b text-01">Зачем вносить ваши данные?</span>
                        <span class="text-s text-01">Для заключения договоров на площадке CreativeHub необходимо подтвердить вашу личность.
                            Мы храним все персональные данные в соответствии с ФЗ-152 “О персональных данных”.</span>
                    </div>
                </div>
            </div>
        </q-page-container>
    </q-layout>
</template>
<script>
import { ref } from 'vue';

export default {
    setup() {
        return {
            tab: ref('profile'),
            text: ref('Александр'),
            date: ref(''),
            phone: ref('+7'),
            mail: ref(''),
            about:ref("")

        }
    },
    name: "Home",
}

</script>

<style scoped></style>
