
<%@ page language="java" pageEncoding="utf-8" session="true"%>


<%-- ---------------------------------------------------------------------- --%>
<%-- JAVA IMPORTS															--%>
<%-- ---------------------------------------------------------------------- --%>


<%@include file="/WEB-INF/jsp/commons/angular/angularResource.jspf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="profileAttributesManagementModule">
<head>
<%@include file="/WEB-INF/jsp/commons/angular/angularImport.jsp"%>

<!-- Styles -->
<link rel="stylesheet" type="text/css"	href="/knowage/themes/glossary/css/generalStyle.css">

<script type="text/javascript" src="/knowage/js/src/angular_1.4/tools/commons/angular-table/AngularTable.js"></script>

<script type="text/javascript" src="/knowage/js/src/angular_1.4/tools/catalogues/profileAttributesManagement.js"></script>


</head>
<body class="bodyStyle" ng-controller="profileAttributesManagementController as ctrl" >
	<angular_2_col>
		<left-col>
			<div class="leftBox">
				<md-toolbar class="md-blue minihead">
					<div class="md-toolbar-tools">
						<div>{{translate.load("sbi.profileattributes.title");}}</div>
						<md-button 
							class="md-fab md-ExtraMini addButton"
							style="position:absolute; right:11px; top:0px;"
							ng-click="createProfileAttribute()"> 
							<md-icon
								md-font-icon="fa fa-plus" 
								style=" margin-top: 6px ; color: white;">
							</md-icon> 
						</md-button>
					</div>
				</md-toolbar>
				<md-content layout-padding style="background-color: rgb(236, 236, 236);" class="ToolbarBox miniToolbar noBorder leftListbox">
					<angular-table 
						layout-fill
						id="ana"
						ng-model="attributeList"
						columns='["NAME","DESCRIPTION"]'
						columns-search='["NAME","DESCRIPTION"]'
						show-search-bar=true
						highlights-selected-item=true
						selected-item="selectedAttribute"
						speed-menu-option="paSpeedMenu"	
						click-function="loadAttribute(item)"					
					>						
					</angular-table>
				</md-content>
			</div>
		</left-col>
		<right-col>
			<form layout-fill ng-submit="saveProfileAttribute()" class="detailBody md-whiteframe-z1" novalidate>
				<div ng-show="showMe">
					<md-toolbar class="md-blue minihead">
						<div class="md-toolbar-tools h100">
							<div style="text-align: center; font-size: 24px;">{{translate.load("sbi.profileattributes.title");}}</div>
							<div style="position: absolute; right: 0px" class="h100">
								<md-button type="button" tabindex="-1" aria-label="cancel"
								class="md-raised md-ExtraMini" style=" margin-top: 2px;"
								ng-click="cancel()">{{translate.load("sbi.browser.defaultRole.cancel");}}
								</md-button>
								<md-button type="submit"
								aria-label="save layer" class="md-raised md-ExtraMini"
								style=" margin-top: 2px;"
								>
								{{translate.load("sbi.browser.defaultRole.save");}} </md-button>
							</div>
							</div>
					</md-toolbar>
					<md-content flex style="margin-left:20px;" class="ToolbarBox miniToolbar noBorder">
						<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter">
       								<label>{{translate.load("sbi.ds.name")}}</label>
       								<input ng-model="selectedAttribute.NAME" required
        							maxlength="100" ng-maxlength="100" md-maxlength="100"> </md-input-container>
      						</div>
    					</div>
    					<div layout="row" layout-wrap>
      						<div flex=100>
       							<md-input-container class="small counter">
       								<label>{{translate.load("sbi.ds.description")}}</label>
       								<input ng-model="selectedAttribute.DESCRIPTION"
        							maxlength="100" ng-maxlength="100" md-maxlength="100"> </md-input-container>
      						</div>
    					</div>
					</md-content>
				
				</div>
			</form>
		</right-col>
	
	</angular_2_col>
</body>
</html>