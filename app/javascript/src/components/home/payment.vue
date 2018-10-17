<template>
  <div class="ui container">
    <p>Chilli : {{this.chilli}}</p>
    <p>Plain : {{this.plain}}</p>
    <p>Total : {{this.total}}</p>
    <div class="ui form">
      Please COnfirm your Order before payment

      <div class="field">
        <label>Confirm Phone number</label>
        <div class="ui labeled input">
          <label for="contact" class="ui label">+254</label>
          <input type="text" name="contact" placeholder="" v-model="contact">
        </div>
      </div>
      <div class="inline fields">
          <label>Pay via</label>
          <div class="field">
            <div class="ui radio checkbox">
              <input type="radio" name="paymentChannel" checked="checked">
              <label>Mobile Money</label>
            </div>
          </div>
          <div class="field">
            <div class="ui radio checkbox">
              <input type="radio" name="paymentChannel">
              <label>Cash</label>
            </div>
          </div>
      </div>
      <div class="ui button" v-on:click="handleForm">Initiate Payment</div>
    </div>
  </div>
</template>

<script>
export default {

  data: function() {
    return {
      type: 'chilli',
      contact: 0,
      location: '',
      chilli: 0,
      plain: 0,
      total: 0,
    }
  },

  methods: {
    handleForm: function() {
      this.contact
    },
  },
}
</script>
