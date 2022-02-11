import Chart, { LineController } from 'chart.js/dist/chart.js'

let ctx = ''

document.addEventListener("turbolinks:load", () => {
  console.log('turbolinks load')
  runChartBuilder()
});

// Extend chart.
class LineWithLine extends LineController {
  draw(ease){
    Chart.controllers.line.prototype.draw.call(this, ease);

    if (this.chart.tooltip._active && this.chart.tooltip._active.length) {
      
      let activePoint = this.chart.tooltip._active[0],
        ctx = this.chart.ctx,
        x = activePoint.tooltipPosition().x,
        topY = this.chart.scales['y-axis-0'].top,
        bottomY = this.chart.scales['y-axis-0'].bottom;

      // draw line
      ctx.save();
      ctx.beginPath();
      ctx.moveTo(x, topY);
      ctx.lineTo(x, bottomY);
      ctx.lineWidth = .5;
      ctx.strokeStyle = '#808080';
      ctx.stroke();
      ctx.restore();
    }
  }
}

LineWithLine.id = 'LineWithLine';
LineWithLine.defaults = LineController.defaults;

// Stores the controller so that the chart initialization routine can look it up
Chart.register(LineWithLine);


function runChartBuilder() {
  let selectedTechs = ['SQL', 'Python', 'JavaScript', 'AWS', 'Docker'];
  ctx = document.getElementById('myChart').getContext('2d');
  
  let data = fetchSkills().then(skills => {
    let dates = skills['python']['dates']
    
    let chart = buildChart(dates)
    
    selectedTechs.forEach(tech => addData(chart, skills, tech));
  });
}

// Init vars for state.
async function fetchSkills() {
  let data = {}
  const response = await fetch("./skills.json")
    .then(res => res.json())
    .then(d => {
      // Assign fetched data to 'data'.
      data = d;
    });

  return data;
}

// Available colors for the chart.
const availableColors = [
  ["#2164F3", 'notInUse'], // indeed blue
  ["#FF6600", 'notInUse'], // Orange
  ["#FFB100", 'notInUse'], // Yellow:
  ["#008040", 'notInUse'], // Green
  ["#CD29C0", 'notInUse'], // Magenta
  ["#551A8B", 'notInUse'],  // Purple:
  ["#0000CC", 'notInUse'], // Light blue
  ["#99CCFF", 'notInUse']
];

// Random techs generator.
const randomTechs = () => {
  // Counter.
  let i = 0;

  // Random techs array.
  const randomTechsArray = [
    ['numpy', 'scipy', 'pandas', 'jupyter'],           // python data science tools
    ['typescript', 'jquery', 'node/node.js', 'ajax'],  // javascript full stack tools
    ['php', 'node/node.js', 'django', 'ruby'],         // popular server languages/frameworks
    ['theano', 'keras', 'caffe', 'tensorflow'],        // open-source deep learning libraries
    ['postgresql', 'mysql', 'sql server', 'mongodb'],  // popular databases
    ['aws', 'google cloud platform', 'azure'],         // popular cloud platforms
    ['react/react.js', 'vue/vue.js', 'angular'],       // popular front end frameworks
    ['kafka', 'rabbitmq'],                             // open source message brokers
    ['c', 'java', 'javascript', 'python', 'ruby'],     // general programming languages
    ['hadoop', 'mapreduce', 'apache'],                 // open source big data technologies
    ['solr', 'elasticsearch'],                         // open source search engines
    ['r', 'python', 'stata']                           // data science programming languages
  ];

  return () => {
    // Get the random techs.
    outputTechs = randomTechsArray[i];

    // Increment i.
    i = (i + 1 === randomTechsArray.length) ? 0 : i + 1;

    // Return random techs.
    return outputTechs;
  };
}

// Months.
const monthNames = [
  "January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];

// Chooses a color to use.
const selectColor = (colors) => {
  
  let rtnColor = '#000000';
  for (let color in colors) {
    if (colors[color][1] == 'notInUse') {
      rtnColor = colors[color][0];
      colors[color][1] = 'inUse';
      return rtnColor;
    }
  }
  return rtnColor;
}

// Resets colors not in use.
const resetColor = (colors, colorToReset) => {
  for (color in colors) {
    if (colors[color][0] === colorToReset) {
      colors[color][1] = 'notInUse';
      break;
    }
  }
}

// Adds data to the chart.
const addData = (chart, data, tech) => {
  // Get a color.
  
  const color = selectColor(availableColors);

  
  const newDataset = {
    label: tech,
    data: data[tech.toLowerCase()]['dates'].map((date, idx) => {return { t: new Date(date), y: data[tech.toLowerCase()]['counts'][idx] }}),
    fill: false,
    borderColor: color,
    backgroundColor: color,
    borderWidth: 3.0,
    pointRadius: 0,
    pointHoverRadius: 5,
    pointHoverBackgroundColor: color,
    pointHoverBorderColor: "#000000"
  };
  // Update chart.
  chart.data.datasets.push(newDataset);
  chart.update();

  // Update colors.
  $(".tag").filter(function() { return this.innerText == tech; })
           .css('background-color', color);
}

// Removes data from the chart.
const removeData = (chart, tech) => {
  for (let i = 0; i < chart.data.datasets.length; i++) {
    if (chart.data.datasets[i].label == tech) {
      resetColor(availableColors, chart.data.datasets[i].borderColor);
      chart.data.datasets.splice(i,1);
      break;
    }
  }
  chart.update();
}

// Var to skip over callbacks when programmaticly entering text.
let suggesting = false;

// Fetch local data.

function buildChart(dates) {
  let myChart = new Chart(ctx, {
    type: 'LineWithLine',
    data: {
      labels: dates,
      datasets: [],
    },
    options: {
      plugins: {
        legend: {
          title: {
            display: true
          }
        }
      },
      tooltips : {
        mode: 'index',
        intersect: false,
        backgroundColor: "rgb(255,255,255, 0.9)",
        titleFontSize: 14,
        titleSpacing: 4,
        bodyFontSize: 14,
        bodySpacing: 4,
        bodyFontColor: "#000000",
        titleFontColor: "#000000",
        borderColor: "#000000",
        borderWidth: 0.5,
        itemSort: (item1, item2) => { return item2.yLabel - item1.yLabel },
        callbacks: {
          title: tooltipItems => {
            const date = new Date(tooltipItems[0].xLabel);
            return monthNames[date.getMonth()] + ' ' + date.getFullYear();
          },
          label: (tooltipItem, data) => {
            const label = data.datasets[tooltipItem.datasetIndex].label || '';
            return "  " + label + " " + "(" + tooltipItem.yLabel.toFixed(1) + "%)";
          }
        }

      },
      hover: {
        animationDuration: 0,
        mode: 'index',
        intersect: false

      },
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true,
            ticks: { fontFamil: "Helvetica Neue Light" },
          },
          gridLines: {
            display: false
          },
          drawBorder: false
        }],
        xAxes: [{
          ticks: { fontFamil: "Helvetica Neue Light" },
          type: 'time',
          time: {
            unit: 'year'
          },
          gridLines: {
            display: false
          }
        }]
      }
    }
  });
  return myChart;

}
