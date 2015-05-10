$( document ).ready(function() {
    addTextAreaCallback("entry1",doAjaxStuff,1000);
});

function selectElementContents(el) {
    var body = document.body, range, sel;
    if (document.createRange && window.getSelection) {
        range = document.createRange();
        sel = window.getSelection();
        sel.removeAllRanges();
        try {
            range.selectNodeContents(el);
            sel.addRange(range);
        } catch (e) {
            range.selectNode(el);
            sel.addRange(range);
        }
    } else if (body.createTextRange) {
        range = body.createTextRange();
        range.moveToElementText(el);
        range.select();
    }
}

function addTextAreaCallback(entry, callback, delay) {
	var textArea = document.getElementById(entry + "-traditional");
    var timer = null;
    textArea.onkeypress = function() {
        if (timer) {
            window.clearTimeout(timer);
        }
        timer = window.setTimeout( function() {
            timer = null;
            callback(entry);
        }, delay );
    };
    textArea = null;
}

function doAjaxStuff(entry) {

	var traditional = document.getElementById(entry + "-traditional");
	var simplified = document.getElementById(entry + "-simplified");
	var pinyin = document.getElementById(entry + "-pinyin");
	$.ajax({
		type: 'POST',
		url: 'welcome/fill',
		data: {traditional: traditional.value},
		dataType: 'json',
		success: function(data) {
			simplified.value=data.simplified;
			pinyin.value=data.pinyin;
		},
		error: function() {
			alert('Ajax error!');
		}

	});
}