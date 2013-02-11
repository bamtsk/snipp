(function () {
  var converter1 = Markdown.getSanitizingConverter();
  var editor1 = new Markdown.Editor(converter1);
  editor1.run();
  
  var converter2 = new Markdown.Converter();

  converter2.hooks.chain("preConversion", function (text) {
    return text.replace(/\b(a\w*)/gi, "*$1*");
  });

  converter2.hooks.chain("plainLinkText", function (url) {
    return "This is a link to " + url.replace(/^https?:\/\//, "");
  });
  
  var help = function () { alert("Do you need help?"); }
  
  var editor2 = new Markdown.Editor(converter2, "-second", { handler: help });
  
  editor2.run();
})();