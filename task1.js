type =['graduation','post graduation'];

data=[['eee','ece','cse'],['ms in eee','ms in ece','masters in cse']];


function fillDD()
{
var Typedd =document.getElementById('type');
for(i=0;i<type.length;i++)
{
var ele= document.createElement('option');
ele.text=type[i];
Typedd.add(ele,i+1);

}
}


function fillData()
{

var Typedd =document.getElementById('type');
var selectedIdx= Typedd.selectedIndex;

var Datadd =document.getElementById('data');

Datadd.innerText=null;

for(i=0;i<data[selectedIdx-1].length;i++)
{
var ele=document.createElement('option');
ele.text=data[selectedIdx-1][i];
Datadd.add(ele,i+1);

}

}