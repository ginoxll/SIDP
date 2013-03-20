//Clase para recepcion, envio y decodificacion de datos json
//Con Cariño de Gino LLuen Para Jasoft - 2013

#import "InputOutputJson.h"

@implementation InputOutputJson

- (NSArray *) getJsonURL:(NSString *)url llaves:(NSArray *)llaves valores:(NSArray *)valores{
	ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
	int i;
    int cantidad;
    for (i = 0, cantidad = [llaves count]; i < cantidad; i = i + 1)
    {
       NSString *llave = [llaves objectAtIndex:i];
	   NSString *valor = [valores objectAtIndex:i];
	   [request setPostValue:llave forKey:valor]; 
    }
	[request setDidFinishSelector:@selector(requestFinished:)];
	[request setDidFailSelector:@selector(requestFailed:)];
	NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	NSError *jsonParsingError = nil;
	NSArray *resultado = [NSJSONSerialization JSONObjectWithData:response options:0 error:&jsonParsingError];
	return resultado;
}

- (int) sendJsonUrl:(NSString *)url llaves:(NSArray *)llaves valores:(NSArray *)valores{
		ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
		int i;
		int cantidad;
		for (i = 0, cantidad = [llaves count]; i < cantidad; i = i + 1)
		{
		   NSString *llave = [llaves objectAtIndex:i];
		   NSString *valor = [valores objectAtIndex:i];
		   [request setPostValue:llave forKey:valor]; 
		}
		[request setDidFinishSelector:@selector(requestFinished:)];
		[request setDidFailSelector:@selector(requestFailed:)];
		[request startAsynchronous];
		return 1;
}
	
- (int) saveJsonFile: (NSDictionary *)datos{
	NSError *error = nil;
	NSData *jsonData = [NSJSONSerialization dataWithJSONObject:datos options:NSJSONWritingPrettyPrinted error:&writeError];

	NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *documents = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *path = [NSString stringWithFormat:@"%@/expor_peru_pez.json", documents];
    NSOutputStream *stream = [[NSOutputStream alloc] initToFileAtPath:path append:YES];
    [stream open];
    NSError *writeError = nil;
    NSInteger bytesWritten = [NSJSONSerialization writeJSONObject:tweets toStream:stream options:NSJSONWritingPrettyPrinted error:&writeError];
    if (bytesWritten <= 0) {
        return 0;
    }
	else
	{
		return 1;
	}
}  
@end
