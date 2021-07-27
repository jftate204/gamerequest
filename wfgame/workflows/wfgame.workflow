{
	"contents": {
		"306cbfe3-4fc1-45e6-b828-09608b4c52d8": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfgame",
			"subject": "wfgame",
			"name": "wfgame",
			"documentation": "Workflow to request new game",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"37911767-00b2-463e-85ad-996c6f5b431a": {
					"name": "Request Game"
				}
			},
			"sequenceFlows": {
				"49c41d6f-8e1b-4bca-81d5-2e7163ed9f8f": {
					"name": "SequenceFlow2"
				},
				"e6b28e0f-6021-4b9d-88c5-9c5f375c4576": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"37911767-00b2-463e-85ad-996c6f5b431a": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Please Approve the requested game",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://titworkflowgame.detitdemogamerequest/de.tit.demo.gamerequest",
			"recipientUsers": "jean-francois.tatetsiledze@itelligence.de",
			"id": "usertask1",
			"name": "Request Game"
		},
		"49c41d6f-8e1b-4bca-81d5-2e7163ed9f8f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "37911767-00b2-463e-85ad-996c6f5b431a"
		},
		"e6b28e0f-6021-4b9d-88c5-9c5f375c4576": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "37911767-00b2-463e-85ad-996c6f5b431a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"7b1a4998-6f5e-448a-a559-087803b16dbe": {},
				"6e57ea3c-0615-4628-b5ee-b30dafbd0ef8": {},
				"422e5ee2-9113-436e-b170-bde1dcf0e2c2": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7b1a4998-6f5e-448a-a559-087803b16dbe": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 180,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "37911767-00b2-463e-85ad-996c6f5b431a"
		},
		"6e57ea3c-0615-4628-b5ee-b30dafbd0ef8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 180.5,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7b1a4998-6f5e-448a-a559-087803b16dbe",
			"object": "49c41d6f-8e1b-4bca-81d5-2e7163ed9f8f"
		},
		"422e5ee2-9113-436e-b170-bde1dcf0e2c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "230,116.75 340.5,116.75",
			"sourceSymbol": "7b1a4998-6f5e-448a-a559-087803b16dbe",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e6b28e0f-6021-4b9d-88c5-9c5f375c4576"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		}
	}
}