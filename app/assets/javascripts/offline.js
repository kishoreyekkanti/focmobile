/* Make the application work offline */
$(function () {
	if(!!window.applicationCache) {
		var appCache = window.applicationCache;

		var complete = function () {
            display_toast("showSuccessToast","Content is now available for offline reading!");
		}
        var failure = function(){
            display_toast("showErrorToast","Failed to cache the contents");
        }
		appCache.addEventListener("cached", complete, false);
		appCache.addEventListener("error", failure, false);
	}

    function display_toast(toastType, message){
        $().toastmessage({stayTime: 10000, position: 'left-bottom'});
        $().toastmessage(toastType, message);
    }

});