let select=document.querySelector('.selectop');
let option=document.querySelector('.options');
let dynamic=document.querySelector('#dynamic');
let dynamic_image=document.querySelector('#dynaimg');
let option_hide=document.querySelector('.options-hide');


select.addEventListener('click',()=>{
    option.classList.toggle('options-hide')
})
function change(a){
    if(a==='Bhim'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/BHIM.png'
        dynamic.innerHTML=a
    }
    if(a==='Paytm'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PAYTM.png'
        dynamic.innerHTML=a
    }
    if(a==='PhonePay'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/PHONEPE.png'
        dynamic.innerHTML=a
    }
    if(a==='AmazonPay'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/AMAZONPAY.png'
        dynamic.innerHTML=a
    }
    if(a==='Gpay'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/GPAY.png'
        dynamic.innerHTML=a
    }
    if(a==='Others'){
        dynamic_image.src='https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/OTHER@2x.png'
        dynamic.innerHTML=a
    }
    option.classList.toggle('options-hide')
}