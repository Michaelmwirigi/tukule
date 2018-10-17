<template>
  <div class="ui container">
    <p>Chilli : {{this.chilli}}</p>
    <p>Plain : {{this.plain}}</p>
    <p>Total : {{this.total}}</p>
    <div class="ui form">
      <label>How many Samosas do you want?</label>
      <div class="field">
        <select v-model="type" class="ui select dropdown">
          <option value="chilli">Chilli</option>
          <option value="plain">Plain</option>
        </select>
      </div>
      <div class="field">
          <input v-if="this.type === 'chilli'" v-on:input="addTotal" type="text" name="number" placeholder="" v-model.number="chilli">
          <input v-if="this.type === 'plain'" v-on:input="addTotal" type="text" name="number" placeholder="" v-model.number="plain">
      </div>
      <div class="ui button" v-on:click="handleForm">Next</div>
    </div>
  </div>
</template>

<script>
export default {

  data: function() {
    return {
      total: 0,
      type: 'chilli',
      chilli: 0,
      plain: 0,
    }
  },

  methods: {
    addTotal: function() {
      this.total = this.chilli + this.plain
    },
    handleForm: function() {

    },
  },
}
</script>
