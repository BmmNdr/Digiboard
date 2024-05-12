const timeElement = document.getElementById("date");
function setdata(){
  const month = ["Gennaio","Febbraio","Marzo","Aprile","Maggio","Giugno","Luglio","Agosto","Settembre","Ottobre","Novembre","Dicembre"];
  n =  new Date();
  y = n.getFullYear();
  m = n.getMonth();
  d = n.getDate();
  date.innerHTML = d + " " + month[m] + " " + y + " " + n.toLocaleTimeString('it-IT');
}
setInterval(setdata, 1000);
setdata();