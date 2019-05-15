<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>안전 음식 홈페이지</title>
<!-- Custom fonts for this template-->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- Custom styles for this template-->
<link href="/css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
.navbar-nav {
	margin-left: 0px;
}

.div1 {
	display: inline-grid;
	width: 300px;
}

.div2 {
	display: inline-block;
	width: auto;
}

.div3 {
	display: inline-block;
	float: right;
	width: 1300px;
}

.div3#body {
	height: 500px;
}

/* #nutritionfacts {
	width: 244px;
} */
#nutritionfacts td {
	color: black;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
	font-size: 8pt;
	padding: 0;
}

#nutritionfacts td.header {
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
	font-size: 28px;
	white-space: nowrap;
}

#nutritionfacts div.label {
	float: left;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
}

#nutritionfacts div.serving {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 8pt;
	text-align: center;
}

#nutritionfacts div.weight {
	display: inline;
	font-family: Arial, Helvetica, sans-serif;
	padding-left: 1px;
}

#nutritionfacts div.dv {
	display: inline;
	float: right;
	font-family: 'Arial Black', 'Helvetica Bold', sans-serif;
}

#nutritionfacts table.vitamins td {
	font-family: Arial, Helvetica, sans-serif;
	white-space: nowrap;
	width: 33%;
}

#nutritionfacts div.line {
	border-top: 1px solid black;
}

#nutritionfacts div.labellight {
	float: left;
	font-family: Arial, Helvetica, sans-serif;
}

#nutritionfacts .highlighted {
	border: 1px dotted grey;
	padding: 2px;
}
</style>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@include file="/WEB-INF/view/sidebar.jsp"%>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<%@include file="/WEB-INF/view/topbar.jsp"%>
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Portfolio Item Heading -->
					<h1 class="my-4">
						[식품 상세 정보] <small>${list.name }</small>
					</h1>
					<!-- Portfolio Item Row -->
					<div class="row" style="display: flow-root;">
						<div class="div1">
							<img class="img-fluid" src="/${list.img }" alt="${list.name }">
							<div class="div2" id="nutritionfacts">
								<table cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td align="center" class="header">Nutrition Facts</td>
										</tr>
										<tr>
											<td>
												<div class="serving">
													Per <span class="highlighted">${list.supportpereat}g</span> Serving Size
												</div>
											</td>
										</tr>
										<tr style="height: 7px">
											<td bgcolor="#000000"></td>
										</tr>
										<tr>
											<td style="font-size: 7pt">
												<div class="line">Amount Per Serving</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Calories
														<div class="weight">${list.calory}</div>
													</div>
													<!-- <div style="padding-top: 1px; float: right;"
														class="labellight">
														Calories from Fat
														<div class="weight">56</div>
													</div> -->
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="dvlabel">
														% Daily Value<sup>*</sup>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Total Fat
														<div class="weight">${list.fat}g</div>
													</div>
													<div class="dv">
														<!-- 10% -->
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="indent">
												<div class="line">
													<div class="labellight">
														Saturated Fat
														<div class="weight">${list.fattyacid}g</div>
													</div>
													<div class="dv">
														<!-- 17% -->
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="indent">
												<div class="line">
													<div class="labellight">
														<i>Trans</i> Fat
														<div class="weight">${list.transfat}g</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Cholesterol
														<div class="weight">${list.chole}mg</div>
													</div>
													<div class="dv">
														<!-- 7% -->
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Sodium
														<div class="weight">${list.natrium}mg</div>
													</div>
													<div class="dv">
														<!-- 26% -->
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Total Carbohydrates
														<div class="weight">${list.carbo}g</div>
													</div>
													<div class="dv">
														<!-- 11% -->
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td class="indent">
												<div class="line">
													<div class="labellight">
														Sugars
														<div class="weight">${list.sugar}g</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="label">
														Protein
														<div class="weight">${list.protein}g</div>
													</div>
												</div>
											</td>
										</tr>
										<tr style="height: 7px">
											<td bgcolor="#000000"></td>
										</tr>
										<tr>
											<td>
												<table cellspacing="0" cellpadding="0" border="0" class="vitamins">
													<c:set var="llm" value="${list.material.replaceAll( '\\\(.*?\\\)', ' ')}"></c:set>
													<c:set var="llm" value="${llm.replaceAll( '\\\{.*?\\\}', ' ')}"></c:set>
													<c:set var="llm" value="${llm.replaceAll( '\\\[.*?\\\]', ' ')}"></c:set>
													<c:set var="lm" value="${fn:split(llm, ',') }"></c:set>
													<tbody>
														<c:forEach var="i" items="${lm}" step="3" varStatus="s">
															<tr>
																<td align="center">•</td>
																<td class="col-md-5">${lm[s.index]}</td>
																<td>•</td>
																<td class="col-md-5">${lm[s.index+1]}</td>
																<td>•</td>
																<td class="col-md-5">${lm[s.index+2]}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td>
												<div class="line">
													<div class="labellight">
														* Based on a regular <a href="#">2000 calorie diet</a> <br> <br> <i>Nutritional details are an estimate and should only be used as a guide for approximation.</i>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="div3">
							<!-- A web application created by Group 1: Keshav Iyengar, Soumaya Chaoui, Roldan Biete -->
							<!DOCTYPE html>
							<html lang="UTF-8">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah|Montserrat" rel="stylesheet">
<!-- <link rel="stylesheet" href="css/style.css"> -->
<link rel="icon" type="image/png" href="http://www.myiconfinder.com/uploads/iconsets/256-256-a88af6c72c39a3d5053dcc476ef130b1-oven.png" />
<title>Food Creator</title>
<style type="text/css">
/* 
 * A web application created by Group 1: Keshav Iyengar, Soumaya Chaoui, Roldan Biete 
*/

/*--------- Top ---------*/
body {
	background-color: #FFBE9F;
	z-index: -5;
}

#welcome {
	font-family: 'Gloria Hallelujah', none;
	border-bottom: 1px solid black;
	background-color: #FCFAE1;
}

#welcome h1 {
	color: #4C1B1B;
}

.lead {
	font-family: 'Montserrat', sans-serif;
	color: #4C1B1B;
	font-size: 20px;
}

/*--------- Side Bar ---------*/
#body {
	height: 500px;
}

.btn {
	font-family: 'Montserrat', sans-serif;
}

.side-selection {
	width: 30%;
	height: 500px;
	text-align: center;
	float: left;
	background-color: white;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	border-left: 1px solid black;
	position: relative;
	overflow: auto;
}

.side-selection2 {
	width: 30%;
	height: 500px;
	text-align: center;
	float: right;
	background-color: white;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	border-left: 1px solid black;
	position: relative;
	overflow: auto;
}

.side-selection h2 {
	padding: 10px;
	font-family: 'Gloria Hallelujah', cursive;
}

.accordion-style {
	width: 95%;
}

.accordion-style h3 {
	font-family: 'Gloria Hallelujah', cursive;
}

.accordion-style p {
	font-family: 'Montserrat', sans-serif;
}

#accordion .ui-accordion-header {
	background: #FCFAE1;
}

#accordion .ui-accordion-header.ui-state-active {
	background: #BD8D46;
}

.accordion-style .btn {
	font-family: 'Montserrat', sans-serif;
}

#accordion {
	margin-bottom: 10px;
}

.details {
	font-family: 'Montserrat', sans-serif;
	width: 90%;
}

ul {
	margin-left: 5%;
}

li {
	text-align: left;
	font-family: 'Montserrat', sans-serif;
}

hr {
	width: 70%;
	border-bottom: 1px solid black;
}

/*--------- App ---------*/
.cook-app {
	display: inline-block;
	width : 70%;
	height: 500px;
	float: right;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	position: relative;
	overflow-x: hidden;
	width: 70%;
}

.foodDiv {
	border-style: inset;
	display: inline-block;
	min-width: 100px;
	min-height: 60px;
	margin: 20px;
	padding: 10px;
	display: inline-block;
}

.img-resizer {
	width: 80px;
	height: 80px;
}

.hover-this:hover {
	cursor: grab;
	cursor: -moz-grab;
	cursor: -webkit-grab;
}

.hover-this:active {
	cursor: grabbing;
	cursor: -moz-grabbing;
	cursor: -webkit-grabbing;
}

.oven {
	width: 200px !important;
	height: 200px !important;
	margin-left: 50px;
	margin-top: 50px;
}

.cookedText {
	font-family: 'Gloria Hallelujah', cursive;
	padding-top: 90px;
	padding-bottom: 50px;
	padding-left: 15px;
	font-size: 20px;
}

.cookedImg {
	height: 100px;
	width: 150px;
	margin: 10px;
}

/*--------- P5 Stuff ---------*/
#canvas {
	z-index: -1;
	margin-left: 30%;
	position: absolute;
}

/*--------- Footer ---------*/
#footer {
	display: block;
	width: 100%;
	height: 50px;
	background-color: #FCFAE1;
}

#footer p {
	font-size: 20px;
	padding-top: 15px;
	color: #4C1B1B;
	text-align: center;
	font-family: 'Montserrat', sans-serif;
}

/*--------- Images ---------*/
.prepped>.image.tomato {
	background-image:
		url("https://dish-environment-prod-contentbucket-10u8bszryovz3.s3.amazonaws.com/assets/s3fs-public/styles/content_image_medium/public/101739657_Diced-Tomatoes-in-Ramekin_Photo-by-Meredith.jpg?itok=MnsBSv99");
}

.prepped>.image.dough {
	background-image:
		url("https://images-gmi-pmc.edge-generalmills.com/4cb4c043-e72c-49cf-ba90-99bc4e76cd7b.jpg");
}

.prepped>.image.cheese {
	background-image:
		url("https://d3u5bsc6xz12oq.cloudfront.net/s3fs-public/styles/promo_slides/public/slideshow-images/shredded-hero-1.jpg?itok=yT0JA9G-");
}

.prepped>.image.pepperoni {
	background-image:
		url("https://images.eatthismuch.com/site_media/img/925_ldementhon_9b85ab48-5cf6-46ea-a887-4059fec23440.png");
}

.fade-enter-active, .fade-leave-active {
	transition: opacity .5s;
}

.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */
	{
	opacity: 0;
}
</style>
</head>
<body>
	<!-- Title -->
	<section id="welcome" class="py-3">
		<div class="primary-overlay text-dark">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h1 class="display-2" style="font-family: cursive; font-size: 4rem;">Food Ingestion Machine!</h1>
						<p class="lead">This is an interactive web application that allows the user to ingest foods! Give it a try below!</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Food Area -->
	<section id="body">
		<div id="canvas"></div>
		<div class="side-selection">
			<h2>Features of this machine</h2>
			<hr>
			<p class="details mx-auto">
				1. 식품을 선택한다.<br> 2. 섭취 버튼을 클릭하여 식품을 섭취한다.<br> 3. 잘못 선택한 식품을 선택 취소한다.<br>
			</p>
			<h2>How does it work?</h2>
			<hr>
			<div id="accordion" class="accordion-style mx-auto">
				<h3>1. How does it select food?</h3>
				<div>
					<p>
						식품을 입모양 이미지에<br> 'Drag & Drop' 하여 선택한다.<br>
					</p>
				</div>
				<h3>2. How does it ingest food?</h3>
				<div>
					<p>
						로그인시 나타나는 섭취 버튼을<br> 'Click' 하여 음식물을 섭취한다.<br>
					</p>
				</div>
				<h3>3. How does it cancel selection?</h3>
				<div>
					<p>
						선택된 음식을 위쪽에 표시된 공간으로<br> 'Drag & Drop' 하여 취소하거나,<br> 초기화 버튼을 'Click' 하여 선택 취소한다.<br>
					</p>
				</div>
			</div>
		</div>
		<div class="text-center cook-app" id="cook-app">
			<div id="app" style="display: inline-block;">
				<food-item></food-item>
				<dropcontainer></dropcontainer>
				<button onclick="app.cook(event)" class="btn btn-danger btn-lg my-5" id="cookBtn">섭취</button>
				<!-- <div id="fadecomponent"></div> -->
				<input type='button' onclick='location.reload();' value='초기화' class="btn btn-secondary btn-lg my-5" />
			</div>
			<div class="side-selection2">
				<h2>${id}님의 섭취 식품목록</h2>
				<c:if test="${empty id}"><h3>로그인시 섭취 목록이 보입니다</h3></c:if>
					<c:if test="${empty list2}">섭취하신 음식이 없습니다! 식품 정보에서 섭취를 해주세요~.~</c:if>
					<div class="row">
						<c:forEach var="j" begin="0" end="1">
							<div class="col-lg-6">
								<c:forEach var="i" items="${list2}" begin="${0+j}" end="${16+j}" step="1">
									<div class="card shadow mb-4">
										<div class="card-header py-3">
											<h6 class="m-0 font-weight-bold text-primary">${i.name}</h6>
										</div>
										<div class="card-body">
											<img class="card-img-top" src="/${i.img}" />
<%-- 											<a href="/deleteingest?ingest_no=${i.ingest_no }" class="btn btn-primary">섭취 취소</a> --%>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<section id="footer">
		<div class="spacer">
			<p>All Rights Reserved - Copyright &copy; Food Creator</p>
		</div>
	</section>
	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/vue"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.3/p5.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.7.3/addons/p5.dom.min.js"></script>
	<!-- 	<script src="scripts/app.js"></script> -->
	<!-- 	<script src="scripts/p5App.js"></script> -->
	<script>
//A web application created by Group 1: Keshav Iyengar, Soumaya Chaoui, Roldan Biete

//   $(function () {
//       $("#accordion").accordion({
//           collapsible: true
//       });
//   });

  var recipes = {
      cheesePizza: ["oven", "dough", "tomato", "cheese"].sort(),
      pepperoniPizza: ["oven", "dough", "tomato", "cheese", "pepperoni"].sort()
  };

  Vue.component("food-item", {
      data() {
          return {
              foods: [ {
                  src: "/img/${list.name }.jpg",
                  id: 'cheese',
                  class: 'img-resizer cheese mx-3 hover-this',
                  name: 'Cheese',
                  alt: 'Cheese Image'
              }]
          };
      },
      template:
          `<div>
              <div v-for="food in foods" class="foodDiv" ondrop="app.drop(event)" ondragover="app.allowDrop(event)">
                  <img :src="food.src" :class="food.class" :id="food.id" draggable="true" ondragstart="app.drag(event)" :alt="food.alt">  
              </div>
          </div>`,
  });

  Vue.component("dropcontainer", {
      template: `
          <div class="row"> 
              <div id="dropZone" ondrop="app.drop(event)" ondragover="app.allowDrop(event)">
                  <img src="/img/입.png" alt="oven" class="oven img-resizer" id="oven">  
              </div>
              <div id="cookZone"></div>
          </div>
      `
  });

  // var fadecomponent = new Vue({
//       el: "#fadecomponent",
//       data: {
//           show: true
//       },
//       template: `
//         <div>
//         <button v-on:click="show = !show">
//         Toggle
//         </button>
//         <transition name="fade">
//           <p v-if="show">fade</p>
//         </transition>
//         </div>
//       `
  // });
  var app = new Vue({
      el: "#app",
      data: {
          show: true
      },
      methods: {
          allowDrop(ev) {
              ev.preventDefault();
          },
          drag(ev) {
              ev.target.classList.add("drag");
              ev.dataTransfer.setData("text", "drag");
          },
          drop(ev) {
              console.log("drop");
              ev.preventDefault();
              var data = ev.dataTransfer.getData("text");
              if (ev.target !== this.$el.querySelector("." + data)) {
                  if (ev.target.classList.contains("img-resizer")) {
                      ev.target.parentNode.appendChild(this.$el.querySelector("." + data));
                  } else {
                      ev.target.appendChild(this.$el.querySelector("." + data));
                  }
              }
              this.$el.querySelector("." + data).classList.remove("drag");
          },
          cook(ev) {
              console.log("cook");
              var ingredients = [];
              var dropContainer = document.getElementById("dropZone");

              //store all the ingredients in the ingredients array
              for (var i = 0; i < dropContainer.children.length; i++) {
                  ingredients.push(dropContainer.children[i].id);
              }

              ingredients.sort();

              //check ingredients is equal to cheese pizza recipe
//             	  alert(ingredients.length);
              if(ingredients.length === 2)
            	  {
            	  location.href="/addingest?foodcode=${list.code}";
            	  this.showCookedItem("${list.name }");
            	  }
              if (recipes.cheesePizza.length === ingredients.length &&
                  recipes.cheesePizza.every(function (value, index) { return value === ingredients[index] })) {
                  this.showCookedItem("https://i.postimg.cc/L6JjkQ4j/cheese-pizza.png");

                  //check for pepperoni ingredients
              } else if (recipes.pepperoniPizza.length === ingredients.length &&
                  recipes.pepperoniPizza.every(function (value, index) { return value === ingredients[index] })) {
                  this.showCookedItem("https://i.postimg.cc/WpgPpLDG/pepperoni-pizza.png");
              }

          },
          showCookedItem(itemImageUrl) {
              var dropCenter = document.getElementById("dropZone");
              var cookZone = document.getElementById("cookZone");
              var oven = document.getElementById("oven");
              var cookBtn = document.getElementById("cookBtn");

              oven.src = "/img/배부름.jpg";

              cookBtn.style.display = "none";

              //clear the ingredients images
              for (var i = 0; i < dropCenter.children.length; i++) {
                  if (dropCenter.children[i].id != "oven") {
                      dropCenter.children[i].style.display = "none";
                  }
              }

              var img = new Image();
              var cookedItem;
				
              /* switch (itemImageUrl) {
                  case "https://i.postimg.cc/L6JjkQ4j/cheese-pizza.png":
                      cookedItem = "Cheese Pizza";
                      break;
                  case "https://i.postimg.cc/WpgPpLDG/pepperoni-pizza.png":
                      cookedItem = "Pepperoni Pizza";
                      break;
                  default:
                      break;
              } */
              cookedItem = "${list.name }";

              var header = document.createTextNode("You Ingested: " + cookedItem);
              cookZone.classList.add("cookedText");
              cookZone.appendChild(header);
              img.id = "cookedPizza";
              img.classList.add("cookedImg");
              img.src = itemImageUrl;
//               cookZone.appendChild(img);
          }
      }
  });

  let chefsHat;
  let steam;
  var x = 0;
  var y = 0;
  var steamRiser = 0;

  function preload() {
      chefsHat = loadImage("https://i.postimg.cc/4NJYRMtW/chefhat.png");
      steam = loadImage("https://i.postimg.cc/ydCZgypx/steam-tiny.png");
      steamLg = loadImage("https://i.postimg.cc/d0NJgsrY/steam200.png");
  }

  function setup() {
      let elementDims = document.getElementById("cook-app");
      let canvas = createCanvas(elementDims.clientWidth, elementDims.clientHeight + 2);
      canvas.parent('#canvas');
      noStroke();
  }

  function draw() {
      background(255, 190, 160);
      let cookZoneCheck = document.getElementById("cookZone");
      x = lerp(x, mouseX, 0.05);
      y = lerp(y, mouseY, 0.05);

      fill(255);
      stroke(255);
      image(chefsHat, mouseX - 8, mouseY - 28); //Chefs hat for cursor

      for (var i = 0; i < cookZoneCheck.children.length; i++) {
          if (cookZoneCheck.children[i].id == "cookedPizza") {
              let cookedPosition = document.getElementById("cookedPizza");
              frameRate(30);

              image(steam, cookedPosition.offsetLeft + 8, cookedPosition.offsetHeight + (90 + steamRiser)); //Steam left
              image(steamLg, cookedPosition.offsetLeft + 28, cookedPosition.offsetHeight + (70 + steamRiser)); //Large steam middle
              image(steam, cookedPosition.offsetLeft + 48, cookedPosition.offsetHeight + (90 + steamRiser)); //Steam right

              steamRiser = steamRiser - 5;

              if (steamRiser > height) {
                  steamRiser = -(steamRiser);
              } else if (steamRiser + 80 < 0) {
                  steamRiser = 10;
              }
          }
      }
  }


  
  </script>
</body>
							</html>
							<%-- 							<%@ include file="NewFile.html"%> --%>
						</div>
					</div>
					<!-- Related Projects Row -->
					<h3 class="my-4">Related Projects</h3>
					<div class="row">
						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid" src="/${list.img}" alt="">
							</a>
						</div>
						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid" src="http://placehold.it/500x300" alt="">
							</a>
						</div>
						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid" src="http://placehold.it/500x300" alt="">
							</a>
						</div>
						<div class="col-md-3 col-sm-6 mb-4">
							<a href="#"> <img class="img-fluid" src="http://placehold.it/500x300" alt="">
							</a>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script src="/vendor/jquery/jquery.min.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="/js/sb-admin-2.min.js"></script>
</body>
</html>
