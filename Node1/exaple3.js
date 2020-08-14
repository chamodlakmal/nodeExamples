exports.myDateTime = function () {
	return Date();
};

exports.myTime = function () {
	var d = new Date();
	return d.getHours() + ":" + d.getMinutes();
};

exports.add = function (a, b) {
	return a + b;
};
exports.taxAdd = function (a) {
	return a + a * 14 / 100;
};