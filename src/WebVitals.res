type webVitals<'metric> = {
  getCLS: ('metric) => (),
  getFID: ('metric) => (),
  getFCP: ('metric) => (),
  getLCP: ('metric) => (),
  getTTFB: ('metric) => (),
};

let report = (onPerfEntry: ('metric) => ()) => {
  let importWebVitals: Js.Promise.t<webVitals<'m>> = %raw(`import('web-vitals')`)
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

let default = report
