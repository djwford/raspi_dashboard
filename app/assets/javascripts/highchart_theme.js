Highcharts.theme = {
  chart: {
    backgroundColor: 'rgba(175,172,172,0.48)',
    animation: Highcharts.svg,
    plotBackgroundColor: null,
    style:{
      fontSize: '12px',
    }
  },
  title: {
      style: {
        color: '#000',
        font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
      }
  },
  
  legend: {
      itemStyle: {
          font: '9pt Trebuchet MS, Verdana, sans-serif',
          color: 'black'
      },
      itemHoverStyle:{
          color: 'gray'
      }
  },
  xAxis: {
    labels: {
      style:{
        color: "#E8FCB9",
        fontSize: '15px'
      }
    }
  },
  yAxis:{
    labels: {
      style:{
        color: "#E8FCB9",
        fontSize: '15px'
      }
    }
  }
};
$(document).ready(function(){
  // Apply the theme
  Highcharts.setOptions(Highcharts.theme);
});
