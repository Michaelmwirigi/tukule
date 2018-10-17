<template>
	<div class="centered row carousel-view">
		<div class="ten wide center aligned column">
			<h1 class="ui centered header">{{this.slides[this.sliderPosition].title}}</h1>
		</div>
	    <transition-group
	        name="slide-fade"
	        class="eight wide column carousel"
	        tag="div"
	    >
			<Order key="0" v-if="sliderPosition === 0"/>
			<Contact key="1" v-if="sliderPosition === 1"/>
			<Payment key="1" v-if="sliderPosition === 2"/>
		</transition-group>
	    <div class='carousel-controls sixteen wide center aligned column'>
	        <button class='carousel-controls__button ui basic icon button left' @click="openSlide(sliderPosition - 1)" v-if="!(sliderPosition === 0)"><i class="arrow left icon"></i></button>
	        <button class='carousel-controls__button ui basic icon button right' @click="openSlide(sliderPosition + 1)" v-if="!(sliderPosition === slides.length - 1)" ><i class="arrow right icon"></i></button>
	    </div>
	</div>
</template>

<script>
import Order from './order';
import Contact from './contact';
import Payment from './payment';

export default {
	data: function() {
    	return {
    		
    		sliderPosition: 0,
    		slides: [
		        {
		            title: "Place your Order",
		            position: 0,
		        },
		        {
		            title: "Contact info",
		            position: 1,
		            text: '',
		        },
		        {
		            title: "Payment",
		            position: 2,
		            text: '',
		        },
		    ],
    	}
  	},
  	methods: {
        openSlide: function(position) {
            this.sliderPosition = position;
        },
    },
	components: {
		Order, Contact, Payment,
	},
}
</script>
