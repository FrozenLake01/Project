<script setup>
import { ref, computed, onMounted } from "vue";
import Sidebar from "../Components/Sidebar.vue";
import StudentInfoTable from "../Components/StudentInfoTable.vue";

defineProps({
  users: {
    type: Object,
    required: true,
  },
});

// Toggling Between Child Components
const currentComponent = ref(0);
const totalComponents = 2;

function prevPage() {
  if (currentComponent.value > 0) {
    currentComponent.value--;
  }
}

function nextPage() {
  if (currentComponent.value < totalComponents - 1) {
    currentComponent.value++;
  }
}
</script>


<template>
  <Sidebar />
  <StudentInfoTable :userInfo="users" />
</template>
