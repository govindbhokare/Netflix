let pack11;
let price11;
let pack1;
let price1;
function setCookie(pack1,price1){
	pack11=pack1
	price11=price1
}
function savef(){
	if(pack11==null||price11==null){
		alert('Please Choose One Plan')
	}else{
		let link=document.querySelector('.link')
		link.href="registration.jsp?pack="+pack11+"&price="+price11
	}
}
let premium_container=document.querySelector('.premium-container')
let standard_container=document.querySelector('.Standard-container')
let basic_container=document.querySelector('.Basic-container')
let mobile_container=document.querySelector('.Mobile-container')
let premium_checkbox=document.querySelector('.premium-chec');
let standard_checkbox=document.querySelector('.standard-chec');
let basic_checkbox=document.querySelector('.basic-chec');
let mobile_checkbox=document.querySelector('.mobile-chec');
premium_container.addEventListener('click',()=>{
   
        premium_container.classList.toggle('premium-container-visible')
        standard_container.classList.remove('Standard-container-visible')
        basic_container.classList.remove('Basic-container-visible')
        mobile_container.classList.remove('Mobile-container-visible')

        premium_checkbox.classList.toggle('premium-chec')

        standard_checkbox.classList.add('standard-chec')
        basic_checkbox.classList.add('basic-chec')
        mobile_checkbox.classList.add('mobile-chec')
pack1="premium package";
price1="649";

setCookie(pack1,price1)
   
})
standard_container.addEventListener('click',()=>{
    
        standard_container.classList.toggle('Standard-container-visible')
        basic_container.classList.remove('Basic-container-visible')
        mobile_container.classList.remove('Mobile-container-visible')
        premium_container.classList.remove('premium-container-visible')


        premium_checkbox.classList.add('premium-chec')

        standard_checkbox.classList.toggle('standard-chec')
        basic_checkbox.classList.add('basic-chec')
        mobile_checkbox.classList.add('mobile-chec')
    pack1="standard package";
price1="499";

setCookie(pack1,price1)
})
basic_container.addEventListener('click',()=>{
  
        basic_container.classList.toggle('Basic-container-visible')
        mobile_container.classList.remove('Mobile-container-visible')
        premium_container.classList.remove('premium-container-visible')
        standard_container.classList.remove('Standard-container-visible')

        premium_checkbox.classList.add('premium-chec')

        standard_checkbox.classList.add('standard-chec')
        basic_checkbox.classList.toggle('basic-chec')
        mobile_checkbox.classList.add('mobile-chec')
    pack1="basic package";
price1="199";

setCookie(pack1,price1)
})

mobile_container.addEventListener('click',()=>{
    
        mobile_container.classList.toggle('Mobile-container-visible')
        premium_container.classList.remove('premium-container-visible')
        standard_container.classList.remove('Standard-container-visible')
        basic_container.classList.remove('Basic-container-visible')

        premium_checkbox.classList.add('premium-chec')

        standard_checkbox.classList.add('standard-chec')
        basic_checkbox.classList.add('basic-chec')
        mobile_checkbox.classList.toggle('mobile-chec')
    
   pack1="mobile package";
price1="149";

setCookie(pack1,price1)
})