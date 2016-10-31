"use strict"
//
// Hydrate context
var context_object_instantiation_descriptions = 
[ 
    {
        module_path: __dirname + "/../MainWindow/MainWindowController",
        instance_key: "mainWindowController",
        options: {}
    },
	{
		module_path: __dirname + "/../NeDBPersister/NeDBPersister",
		instance_key: "persister",
		options: {}
	}
]
function NewHydratedContext(app) 
{
    var initialContext = 
    {
        app: app,
		userDataAbsoluteFilepath: app.getPath('userData')
    }

    return require("../runtime_utils/runtime-context").NewHydratedContext(context_object_instantiation_descriptions, initialContext)
}
module.exports.NewHydratedContext = NewHydratedContext