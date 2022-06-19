___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "categories": [
    "UTILITY",
    "TAG_MANAGEMENT"
  ],
  "version": 1,
  "securityGroups": [],
  "displayName": "GA Standard Ecommerce Products to GA4 Items Array",
  "description": "This template variable would convert the classic/standard e-commerce transactionProducts array into GA4\u0027s items array.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dataLayer = require('copyFromDataLayer');
const items = dataLayer('transactionProducts', 1);

if (items) {
	return items.map(function (i) {
		return {
			item_name: i.name,
			item_id: i.sku,
			price: i.price,
			item_category: i.category,
			quantity: i.quantity,
		};
	});
}
return undefined;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "transactionProducts.*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 6/19/2022, 8:03:00 PM


