const line = () => {
  var line_it_tag = document.getElementById('line-it-button');
  line_it_tag.setAttribute('data-url', location.href);
};


window.addEventListener('load', function(event){
  line();
});
