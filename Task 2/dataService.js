
const btn = document.getElementById("btn");
const mainTbl = document.getElementById("mainTbl");

function loadCountries() {
  fetch("https://restcountries.eu/rest/v2/region/africa")
    .then(data => data.json())
    .then(d => populateData(d))
    .catch(err => console.log(err.message));
}

function populateData(dataObj) {
  const { name, capital, population, timezones, flag } = dataObj;
  
  for (let i = 0; i < dataObj.length; i++){
    
    const myTr = 
    `
      <tr>
        <td>${dataObj[i].name}</td>
        <td>${dataObj[i].capital}</td>
        <td>${dataObj[i].population}</td>
        <td id="${dataObj[i].name}">${dataObj[i].timezones}</td>
        <td><img src="${dataObj[i].flag}" style="width:20px; height:20px;"/></td>
      </tr>
    `
    mainTbl.insertAdjacentHTML("beforeend", myTr);
  }
  
}


btn.addEventListener('click', loadCountries);
