function init(){
	var stretchers = document.getElementsByClassName('index-box');
	var toggles = document.getElementsByClassName('index-tab');
	var myAccordion = new fx.Accordion(
		toggles, stretchers, {opacity: false, height: true, duration: 600}
	);
	//hash functions
	var found = false;
	toggles.each(function(h3, i){
		var div = Element.find(h3, 'nextSibling');
			if (window.location.href.indexOf(h3.title) > 0) {
				myAccordion.showThisHideOpen(div);
				found = true;
			}
		});
	if (!found) myAccordion.showThisHideOpen(stretchers[0]);
}