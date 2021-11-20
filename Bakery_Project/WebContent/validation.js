function disableEmptyInputs(form) {
  var controls = form.elements;
  for (var i=0, iLen=controls.length; i<iLen;) {
	if (controls[i].value == ''){
    	controls[i].disabled = true;
		controls[i+1].disabled = true;
		controls[i+2].disabled = true;
    }
	i = i+3;
  }
}