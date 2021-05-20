Highcharts.chart('container', {
		  data: {
		    table: 'datatable'
		  },
		  chart: {
		    type: 'column'
		  },
		  title: {
		    text: '선수별 연봉 예측 그래프'
		  },
		  yAxis: {
		    allowDecimals: false,
		    title: {
		      text: '연봉'
		    }
		  },
		  tooltip: {
		    formatter: function () {
		      return '<b>' + this.series.name + '</b><br/>' +
		        this.point.y + ' ' + this.point.name.toLowerCase();
		    }
		  }
		});