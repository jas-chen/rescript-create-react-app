%%raw(`import './index.css'`)
@bs.module("./reportWebVitals") external reportWebVitals: ('metric) => () = "default"

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<App />, root)
| None => ()
}

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals()
