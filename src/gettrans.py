import json
import decimalencoder
import todoList


def gettrans(event, context):
    # create a response

    language = event['pathParameters']['language']
    id = event['pathParameters']['id']
    lan = event['pathParameters']['language']
    
    item = todoList.get_item_translate(id,lan)
    
    if item:
        response = {
            "statusCode": 200,
            "body": json.dumps(item,
                               cls=decimalencoder.DecimalEncoder)
        }
    else:
        response = {
            "statusCode": 404,
            "body": ""
        }
    return response
