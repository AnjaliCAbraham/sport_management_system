
<script>
window.onload=function(){ with (new XMLHttpRequest()) {
  onreadystatechange=cb; open('GET','data/lidn.txt',true); responseType='text';send();
}}
function cb(){if(this.readyState===4)document.getElementById('main')
                                             .innerHTML=tbl(this.responseText); }
function tbl(csv){ // do whatever is necessary to create your table here ...
 return csv.split('\n')
           .map(function(tr,i){return '<tr><td>'
                                     +tr.replace(/\t/g,'</td><td>')
                                     +'</td></tr>';})
           .join('\n'); }
</script>
<body>
<h2>Hey, this is my fabulous "dynamic" html page!</h2>
<table id="main"></table>
</body>