// @ts-nocheck
sap.ui.define([
		"sap/ui/core/mvc/Controller"
	],
	/**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
	function (Controller) {
		"use strict";

		return Controller.extend("de.tit.demo.gamerequest.controller.View1", {
			onInit: function () {
                if(!this.getView().getModel("context")) {
                    this.getView().byId("toolbar1").setVisible(true);
    
                    this.getView().setModel(new sap.ui.model.json.JSONModel({
                        gamename: "",
                        requestor: "",
                        apiResponse: ""
                    }), "context");

                }
			},

            startWorkflowInstance: function () {
                var model = this.getView().getModel("context");
                var definitionId = "wfgame"; //TODO Change to your workflow definition ID
                var initialContext = {
                    gamename:  model.getProperty("/gamename"),
                    requestor:  model.getProperty("/requestor")
                };
                var data = {
                    definitionId: definitionId,
                    context: initialContext
                };
                $.ajax({
                    url: this._getWorkflowRuntimeBaseURL() + "/workflow-instances",
                    method: "POST",
                    async: false,
                    contentType: "application/json",
                    headers: {
                        "X-CSRF-Token": this._fetchToken()
                    },
                    data: JSON.stringify(data),
                    success: function (result, xhr, data) {
                        model.setProperty("/apiResponse", JSON.stringify(result, null, 4));
                        window.history.back();
                    },
                    error: function (request, status, error) {
                        var response = JSON.parse(request.responseText);
                        model.setProperty("/apiResponse", JSON.stringify(response, null, 4));
                        alert("An error occured!");
                    }
                });
            },

            _fetchToken: function () {
                var fetchedToken;
                jQuery.ajax({
                    url: this._getWorkflowRuntimeBaseURL() + "/xsrf-token",
                    method: "GET",
                    async: false,
                    headers: {
                        "X-CSRF-Token": "Fetch"
                    },
                    success(result, xhr, data) {
                        fetchedToken = data.getResponseHeader("X-CSRF-Token");
                    }
                });
                return fetchedToken;
            },
            _getWorkflowRuntimeBaseURL: function () {
                var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
                var appPath = appId.replaceAll(".", "/");
                var appModulePath = jQuery.sap.getModulePath(appPath);
                return appModulePath + "/bpmworkflowruntime/v1";
            }
		});
	});
