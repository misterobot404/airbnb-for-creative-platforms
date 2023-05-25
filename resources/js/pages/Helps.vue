<template>
    <div class="q-px-lg q-py-md">
        <q-timeline color="secondary">
            <h5 class="q-my-lg">Ответы на часто задаваемые вопросы</h5>

            <q-timeline-entry v-for="item in items" :title="item.title" :body="item.body" />

        </q-timeline>
    </div>git
</template>

<script>
export default {
    data() {
        return {
            items: [
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },
                { title: "Question_Title", body: "body" },

            ],

        };
    },
    name: "Helps"
}
</script>

<style scoped></style>
