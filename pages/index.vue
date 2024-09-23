<template>
  <div>selammmm</div>
</template>

<script setup>
import { onMounted } from "vue";

async function login() {
  await $fetch("http://34.243.145.118:8080/signup", {
    method: "POST",
    body: {
      email: "test3@test.com",
      password: "test3",
    },
  });
}

onMounted(() => {
  login();
});
</script>
