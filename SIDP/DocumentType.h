//
//  DocumentType.h
//  scdp
//
//  Created by Miguel Angel Vásquez Jiménez on 10/03/13.
//  Copyright (c) 2013 Miguel Angel Vásquez Jiménez. All rights reserved.
//

@interface DocumentType: NSObject
{
    int pkDocumentType;
    NSString* documentTypeName;
    NSString* shortDescription;
}

@property int pkDocumentType;
@property NSString* documentTypeName;
@property NSString* shortDescription;

+ (NSMutableArray*) listDocumentType;
@end
