<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<meta name="fragment" content="!">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

		<link type="image/ico" rel="shortcut icon" href="resources/tpl/viewer/icons/favicon.ico">
		<link type="image/ico" rel="icon"  href="resources/tpl/viewer/icons/favicon.ico">

		<!--
			To correctly reference your Map Journal in search engine:
			 - create and fill out extensively an ArcGIS Online item that link to your final application
			 - edit the following four tags as well as the title tag above on line 4
			 - see https://developerscorner.storymaps.arcgis.com/grow-your-story-maps-audience-with-open-graph-tags-b7639cb65d5c
		-->
		<meta name="description" content="This story map was created with the Story Map Journal application in ArcGIS Online.">

		<!-- Social sharing -->
		<meta property="og:type" content="article"/>
		<meta property="og:title" content="Story Map Journal"/>
		<meta property="og:description" content="This story map was created with the Story Map Journal application in ArcGIS Online."/>
		<meta property="og:image" content="http://www.arcgis.com/apps/MapJournal/resources/common/icons/esri-globe.png"/>

		<!--
			This application is released under the Apache License V2.0 by Esri http://www.esri.com/
			Checkout the project repository on GitHub to access source code, latest revision, developer documentation, FAQ and tips
			https://github.com/Esri/map-journal-storytelling-template-js
		-->

		<script type="text/javascript">
			//-------------------------------------------------------------------------------------------
			//     Application configuration (ignored on ArcGIS Online, Portal and during development)
			//-------------------------------------------------------------------------------------------
			var configOptions = {
				// Enter an application ID created through the Map Journal builder
				appid: "",
				// Optionally to secure Journal's access, use an OAuth application ID (example: 6gyOg377fLUhUk6f)
				// User will need to sign-in to access the viewer even if your application is public
				oAuthAppId: "",
				// Optionally, to use the appid URL parameter, configure authorizedOwners to reference
				//    members whose stories can be viewed by this storytelling app.
				// To authorize stories owned by...
				//    specific members: use ["member"] or ["member1", "member2", ...]
				//    any ArcGIS member: use ["*"]
				//    any member of one or more organizations: use ["[orgID]"] or ["[orgID1]", "[orgID2]", ...] (Note the use of brackets in this case, e.g., ["[nzS0F0zdNLvs7nc8]"])
				//        You can get your orgID by going to My Organization and clicking Find...The most viewed items in the organization.
				//        Your orgID will be shown in the search box.
				authorizedOwners: [""]
			};
			// Optionally sharing and proxy URLs can be configured in app/config.js. This is only required
			//  when the webmap is not hosted on ArcGIS Online or a Portal for ArcGIS instance and the application isn't deployed as /home/MapJournal/ or /apps/MapJournal/.
			// Optionally Bing Maps key, Geometry and Geocode service's URLs can be configured in app/config.js. This is only required
			//  if the Organization or Portal for ArcGIS instance default configuration has to be overwritten.
		</script>

		<!--

			Edit below at your own risk

		-->

		<script type="text/javascript">
			var app = {
				version: '1.13.1',
				pathJSAPI: 'https://js.arcgis.com/3.23/'
			};
		</script>
		<noscript>
			<div style="position: fixed; top: 0px; left: 0px; z-index: 3000;
								height: 100%; width: 100%; background-color: #FFFFFF">
				<p style="margin: 50px">This story map requires JavaScript, but running JavaScript is not currently allowed by your web browser. If you wish to view this story, please enable JavaScript in this browser or try a different browser.</p>
			</div>
		</noscript>
	</head>
	<body class="claro">
		<style>
			/* CUSTOM CSS RULES */
		</style>

		<!-- Builder top panel is injected here -->
		<div id="builderPanel" class="hide mainViewAboveMap"></div>
		<button class="skip-to-content visible-on-focus"></button>

		<!-- Content -->
		<div id="contentPanel" class="mobileView">
			<table class="containerPanelInner">
				<tr>
					<!-- Text panel of the Side Panel layout -->
					<td id="sidePanel">
						<div id="sidePanelInner" class="mainViewSideMap sidePanel sectionPanel">
							<div class="navDots vertical">
								<!-- navigation dots -->
							</div>
							<div class="header" role="banner">
								<div class="linkSocialContainer">
									<span class="linkContainer"></span>
									<span class="shareBtns">
										<button class="shareIcon blackHover share_facebook icon-facebook-squared"></button>
										<button class="shareIcon blackHover share_twitter icon-twitter"></button>
										<button class="shareIcon blackHover share_bitly icon-link"></button>
										<button type="button" class="switchBuilder btn btn-xs btn-primary"></button>
									</span>
								</div>
								<table class="logoContainer">
									<tr>
										<td class="logoWrapper">
											<a class="logoLink" target="_blank">
												<img class="logoImg" />
											</a>
										</td>
									</tr>
								</table>
							</div>
							<!-- <div class="resizer"></div> -->
							<button class="scroll" tabindex="-1">
								<div class="scrollInner" data-toggle="tooltip"></div>
							</button>
							<div class="appTitle" tabindex="-1" aria-hidden="true"></div>
							<span class="error-status">
								<button class="btn btn-xs btn-warning check-story"></button>
								<button class="btn btn-xs btn-warning share-story"></button>
							</span>
							<div class="separator"></div>
							<div class="sectionsWrapper">
								<div class="panelEditBtn">
									<div class="panelEditBtnInner"></div>
								</div>
								<div class="sections" role="main">
									<!-- sections injected here -->
								</div>
								<div class="centering loop-wrapper">
									<button class="visible-on-focus loop-to-top"></button>
								</div>
							</div>
							<div class="builder builder-content-panel">
								<div class="builder-content-panel-group builder-add">
									<div class="builder-btn"></div>
									<div class="builder-lbl"></div>
								</div>
								<div class="builder-content-panel-group builder-organize">
									<div class="builder-btn"></div>
									<div class="builder-lbl"></div>
								</div>
							</div>
							<div class="builder-mask"></div>
							<div class="firstAddExplain"></div>
						</div>
					</td>
					<!-- Map -->
					<td id="mainStagePanel" class="mainStagePanel" role="complementary">
						<div id="mainStagePanelInner">
							<div class="medias">
								<!-- Maps and media injected here -->
							</div>
							<div id="mainStageLoadingIndicator" class="loadingIndicator" role="alert" aria-live="polite">
							  <img class="loadingGif" src="resources/tpl/viewer/icons/loading-light.gif"/>
							</div>
							<!-- Back button -->
							<div class="mediaBackContainer">
								<button class="backButton">
									<div class="backArrow"></div>
									<span class="backLbl"></span>
								</button>
							</div>
							<!-- Builder -->
							<div id="builderQuotes" class="centerAlignOnFloat"></div>
							<div id="builderLanding" class="centerAlignOnFloat"></div>
							<div id="builderHelp" class="centerAlignOnFloat"></div>
							<div class="firstAddExplain"></div>
							<!-- Autoplay -->
							<div id="autoplay" class="autoplay"></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<!-- /Content -->

		<div id="floatingPanel" class="floatingPanel sectionPanel">
			<div class="backdrop"></div>
			<div class="header" role="banner">
				<div class="linkSocialContainer">
					<span class="linkContainer"></span>
					<span class="shareBtns">
						<button class="shareIcon blackHover share_facebook icon-facebook-squared"></button>
						<button class="shareIcon blackHover share_twitter icon-twitter"></button>
						<button class="shareIcon blackHover share_bitly icon-link"></button>
						<button type="button" class="switchBuilder btn btn-xs btn-primary"></button>
					</span>
				</div>
				<table class="logoContainer">
					<tr>
						<td class="logoWrapper">
							<a class="logoLink" target="_blank">
								<img class="logoImg"/>
							</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="appTitle" tabindex="-1" aria-hidden="true"></div>
			<span class="error-status">
				<button class="btn btn-xs btn-warning check-story"></button>
				<button class="btn btn-xs btn-warning share-story"></button>
			</span>
			<div class="separator"></div>
			<div class="panelEditBtn">
				<div class="panelEditBtnInner"></div>
			</div>
			<div class="sections">
				<div class="swiper-container">
					<div class="swiper-wrapper" role="main">
						<!-- sections injected here -->
					</div>
					<div class="centering loop-wrapper">
						<button class="visible-on-focus loop-to-top"></button>
					</div>
				</div>
			</div>
			<div class="builder builder-content-panel">
				<div class="builder-content-panel-group builder-add">
					<div class="builder-btn"></div>
					<div class="builder-lbl"></div>
				</div>
				<div class="builder-content-panel-group builder-organize">
					<div class="builder-btn"></div>
					<div class="builder-lbl"></div>
				</div>
			</div>
			<div class="navDots vertical">
				<!-- navigation dots -->
			</div>
			<button class="scroll" tabindex="-1">
				<div class="scrollInner" data-toggle="tooltip"></div>
			</button>
			<div class="builder-mask"></div>
			<div class="firstAddExplain"></div>
		</div>

		<!-- Mobile -->
		<div id="mobileView" class="floatingSwiper">
			<div class="swiper-container">
				<div class="backdrop"></div>
				<div class="embed-btn-container embed-btn-left">
					<div class="embed-btn"></div>
				</div>
				<div class="swiper-wrapper">
					<!-- sections injected here -->
				</div>
				<div class="embed-btn-container embed-btn-right">
					<div class="embed-btn"></div>
				</div>
			</div>
			<div class="header">
				<div class="backdrop"></div>
				<div class="linkSocialContainer">
					<span class="linkContainer"></span>
					<span class="shareBtns">
						<i class="shareIcon share_facebook icon-facebook-squared"></i>
						<i class="shareIcon share_twitter icon-twitter"></i>
						<i class="shareIcon share_bitly icon-link"></i>
					</span>
				</div>
			</div>
		</div>

		<!-- Loading -->
		<style>
			#loadingOverlay {
				position: absolute;
				top: 0;
				left: 0;
				z-index: 1100;
				width: 100%;
				height: 100%;
				overflow: hidden;
				background-color: #E5E5E5;
				-webkit-box-shadow: inset 0px 0px 82px 19px rgba(0,0,0,0.3);
				-moz-box-shadow: inset 0px 0px 82px 19px rgba(0,0,0,0.3);
				box-shadow: inset 0px 0px 82px 19px rgba(0,0,0,0.3);
			}

			@keyframes fadein { from { opacity: 0; } to { opacity: 1; } }
			@-moz-keyframes fadein { from { opacity: 0; } to { opacity: 1; } }
			@-webkit-keyframes fadein { from { opacity: 0; } to { opacity: 1; } }
			@-ms-keyframes fadein { from { opacity: 0; } to { opacity: 1; } }
			@-o-keyframes fadein { from { opacity: 0; } to { opacity: 1; } }

			@keyframes fadeout { from { opacity: 1; } to { opacity: 0; } }
			@-moz-keyframes fadeout { from { opacity: 1; } to { opacity: 0; } }
			@-webkit-keyframes fadeout { from { opacity: 1; } to { opacity: 0; } }
			@-ms-keyframes fadeout { from { opacity: 1; } to { opacity: 0; } }
			@-o-keyframes fadeout { from { opacity: 1; } to { opacity: 0; } }

			#loadingOverlay.fadeOut {
				-webkit-animation: fadeout 1.1s;
				-moz-animation: fadeout 1.1s;
				-ms-animation: fadeout 1.1s;
				-o-animation: fadeout 1.1s;
				animation: fadeout 1.1s;
				-webkit-animation-fill-mode:forwards;
				-moz-animation-fill-mode:forwards;
				animation-fill-mode:forwards;
			}

			#loadingIndicator {
				position: fixed;
				top: 50%;
				left: 50%;
				z-index: 1101;
			}

			.loadingIndicator {
				margin-left: -17px;
				margin-top: -20px;
			}
		</style>

		<div id="loadingOverlay"></div>
		<div id="loadingIndicator" class="loadingIndicator" role="alert" aria-live="polite">
			<img class="loadingGif" src="resources/tpl/viewer/icons/loading-light.gif"/>
		</div>
		<div id="loadingMessage"></div>

		<!-- Share dialog -->
		<div class="modal fade shareDialog" id="shareDialog" role="dialog" data-backdrop="static" tabindex="-1"></div>

		<!-- Builder views are injected here -->
		<div id="builder-views"></div>

		<!-- Fatal error box -->
		<div id="fatalError">
			<table border="0">
				<tr>
					<td width="70px" align="center" id="fatalError-icon"></td>
					<td id="fatalError-msg">
						<b class="error-title"></b>
						<p class="error-msg"></p>
					</td>
				</tr>
			</table>
		</div>

		<div class="print-warning"></div>

		<script type="text/javascript" src="app/main-config.js"></script>
	</body>
</html>
