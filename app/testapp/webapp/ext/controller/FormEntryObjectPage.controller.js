sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('testapp.ext.controller.FormEntryObjectPage', {
		override: {
			editFlow: {
				onAfterSave: function () {
					this.base.getExtensionAPI().editFlow.createDocument("/RootEntity", { creationMode: "NewPage" })
				}
			}
		}
	});
});
