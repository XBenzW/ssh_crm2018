<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<!-- ECharts单文件引入 -->
<script src="${pageContext.request.contextPath }/js/echarts.min.js"></script>
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
</head>
<body>
	<table>
		<tr>
			<td>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main" style="width: 600px; height: 400px;"></div> <script
					type="text/javascript">
					// 基于准备好的dom，初始化echarts实例
					var myChart = echarts.init(document.getElementById('main'));

					// 指定图表的配置项和数据
					option = {
						title : {
							text : '客户行业统计',
							subtext : '可能存在误差'
						},
						tooltip : {
							trigger : 'axis'
						},
						legend : {
							data : [ '客户数量' ]
						},
						toolbox : {
							show : true,
							feature : {
								mark : {
									show : true
								},
								dataView : {
									show : true,
									readOnly : false
								},
								magicType : {
									show : true,
									type : [ 'line', 'bar' ]
								},
								restore : {
									show : true
								},
								saveAsImage : {
									show : true
								}
							}
						},
						calculable : true,
						xAxis : [ {
							type : 'category',
							data : [ '电话营销', '网络营销' ]
						} ],
						yAxis : [ {
							type : 'value'
						} ],
						series : [ {
							name : '客户数量',
							type : 'bar',
							data : [ 3, 5 ],
							markPoint : {
								data : [ {
									type : 'max',
									name : '最大值'
								}, {
									type : 'min',
									name : '最小值'
								} ]
							},
							markLine : {
								data : [ {
									type : 'average',
									name : '平均值'
								} ]
							}
						},

						]
					};

					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				</script>

			</td>
		</tr>
	</table>
</body>
</html>