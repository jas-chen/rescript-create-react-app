type webVitals<'onPerfEntry> = {
  getCLS: ('onPerfEntry) => (),
  getFID: ('onPerfEntry) => (),
  getFCP: ('onPerfEntry) => (),
  getLCP: ('onPerfEntry) => (),
  getTTFB: ('onPerfEntry) => (),
};

let reportWebVitals = (onPerfEntry: ('metric) => ()) => {
  let importWebVitals: Js.Promise.t<webVitals<'onPerfEntry>> = %raw(`import('web-vitals')`)
  let _ = importWebVitals->Js.Promise.then_(
    webVitals => {
      webVitals.getCLS(onPerfEntry)
      webVitals.getFID(onPerfEntry)
      webVitals.getFCP(onPerfEntry)
      webVitals.getLCP(onPerfEntry)
      webVitals.getTTFB(onPerfEntry)
      Js.Promise.resolve()
    },
    _
  )
}

let default = reportWebVitals

// reportWebVitals(Js.log)