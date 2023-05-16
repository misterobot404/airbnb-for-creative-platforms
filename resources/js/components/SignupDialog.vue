<template>
    <q-dialog v-model="show_signup" persistent>
        <q-card>
            <form @submit.prevent="signup()">
                <q-card-section class="row items-center">
                    <div class="text-h6">Регистрация</div>
                    <q-space/>
                    <q-btn icon="close" flat round dense v-close-popup/>
                </q-card-section>

                <q-separator/>

                <q-card-section class="q-gutter-y-md">
                    <q-input v-model="signup_name" label="Введите имя" filled required>
                        <template v-slot:prepend>
                            <q-icon name="face"/>
                        </template>
                    </q-input>
                    <q-input v-model="signup_email" label="Введите электронную почту" filled type="email" required>
                        <template v-slot:prepend>
                            <q-icon name="email"/>
                        </template>
                    </q-input>
                    <q-input v-model="signup_password" label="Введите пароль" filled type="password" required
                             minlength="6">
                        <template v-slot:prepend>
                            <q-icon name="password"/>
                        </template>
                    </q-input>
                    <q-input v-model="signup_confirm_password" label="Повторите пароль" filled type="password" required
                             minlength="6">
                        <template v-slot:prepend>
                            <q-icon name="password"/>
                        </template>
                    </q-input>
                </q-card-section>

                <q-separator/>
                <q-card-section class="flex justify-end q-gutter-x-xs">
                    <q-btn @click="showSigninDialog()" flat label="Авторизация" color="primary" v-close-popup/>
                    <q-btn label="Подтвердить" color="primary" type="submit" :loading="signup_loading"/>
                </q-card-section>
            </form>
        </q-card>
    </q-dialog>
</template>

<script>
import {useUserStore} from "../stores/user";

export default {
    name: "SignupDialog",
    data() {
        return {
            USER_STORE: useUserStore(),
            signup_name: null,
            signup_email: null,
            signup_password: null,
            signup_confirm_password: null,
            signup_loading: false
        }
    },
    computed: {
        show_signup: {
            get() {
                return this.USER_STORE.show_signup_dialog;
            },
            set(newValue) {
                this.USER_STORE.show_signup_dialog = newValue;
            }
        }
    },
    methods: {
        signup() {
            if (this.signup_password.length < 6) {
                this.$q.notify({type: "negative", message: "Длина пароля менее 6 символов"});
                return;
            }

            if (this.signup_password !== this.signup_confirm_password) {
                this.$q.notify({type: "negative", message: "Пароли не совпадают"});
                return;
            }

            this.signup_loading = true;
            this.USER_STORE.signup(this.signup_name, this.signup_email, this.signup_password)
                .then(() => {
                    this.USER_STORE.signin(this.signup_email, this.signup_password).then(() => {
                        this.$q.notify({type: "positive", message: "Регистрация выполнена"});
                        this.USER_STORE.show_signup_dialog = false;
                    })
                })
                .catch((response) => {
                    if (response.status = 422) {
                        this.$q.notify({type: "negative", message: "Такая почта уже зарегистрирована"});
                    } else {
                        this.$q.notify({type: "negative", message: "Ошибка сервера"});
                    }
                })
                .finally(() => this.signup_loading = false)
        },
        showSigninDialog() {
            this.USER_STORE.show_signin_dialog = true;
        }
    }
}
</script>

<style scoped>

</style>