// Generated by ReScript, PLEASE EDIT WITH CARE

import * as App from "./App.bs.js";
import * as React from "react";
import * as ReactDom from "react-dom";
import * as ReportWebVitals from "./ReportWebVitals.bs.js";

import './index.css'
;

var root = document.querySelector("#root");

if (!(root == null)) {
  ReactDom.render(React.createElement(App.make, {}), root);
}

ReportWebVitals.reportWebVitals(function (prim) {
      console.log(prim);
      
    });

export {
  
}
/*  Not a pure module */
