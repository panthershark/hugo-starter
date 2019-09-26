import hello from './elm/Hello.elm';
debugger;
const el = document.getElementById('hello');

if (el) {
  hello.Elm.Hello.init({
    node: el
  });
}
