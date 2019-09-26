import demo from './elm/Demo.elm';

const el = document.getElementById('loader_demo');

if (el) {
  demo.Elm.Demo.init({
    node: el
  });
}
