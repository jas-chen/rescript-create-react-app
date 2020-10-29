%%raw(`import './index.css'`)

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => ()
}

// If you want to start measuring performance in your app, pass a function
// to log results (for example: WebVitals.report(Js.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
WebVitals.report(Js.log)
