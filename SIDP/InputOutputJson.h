//Clase para recepcion, envio y decodificacion de datos json
//Con Cariño de Gino LLuen Para Jasoft - 2013

#import <Foundation/Foundation.h>

@interface InputOutputJson : NSObject{
}
- (NSArray *) getJsonURL:(NSString *)url llaves:(NSArray *)llaves valores:(NSArray *)valores;
- (int) sendJsonUrl:(NSString *)url llaves:(NSArray *)llaves valores:(NSArray *)valores;	
- (int) sendJsonFile: (NSDictionary *)datos;
@end
