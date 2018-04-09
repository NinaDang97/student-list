/**
 * 
 */

function getStudentData(){
	var urlString = "http://localhost:8080/Khanh_Dang_Chapter13/StudentList/StudentListJsonServlet";
	
	var request = new XMLHttpRequest();
	request.onreadystatechange = requestListener;
	request.open("GET", urlString, true);
	request.send();
	
	function requestListener(){
		if(request.readyState === 4 && request.status === 200){
			console.log("The Servlet returned the following JSON text: " +
			request.responseText);
			showStudentList(request.responseText);
		}
	}
}

function showStudentList(jsonText){
	var jsonObj = JSON.parse(jsonText);
	var studentArray = jsonObj.students;
	console.log(studentArray);
	
	var outputText = "";
	for(var i = 0; i < studentArray.length; i++){
		outputText = outputText + studentArray[i].id + ", " + studentArray[i].firstname + ", " + studentArray[i].lastname
		+ " (" + studentArray[i].streetaddress + " " + studentArray[i].postcode + studentArray[i].postoffice + ")<br />";
	}
	
	document.getElementById("pOutput").innerHTML = outputText;
}

(function run(){
	getStudentData();
})();

//End