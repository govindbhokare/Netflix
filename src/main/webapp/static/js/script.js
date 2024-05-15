let toggle=false;

function show(a){
    toggle=!toggle
    if(toggle)
    {
        document.querySelector(a).style.display='block';
    }
    else{
        document.querySelector(a).style.display='none';
    }
    
}