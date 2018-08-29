
#import "LPRequestFactory.h"
#import "LeanplumRequest.h"

@interface LPRequestFactory()

@property (nonatomic, strong) LPFeatureFlagManager *featureFlagManager;

@end

@implementation LPRequestFactory

-(instancetype)initWithFeatureFlagManager:(LPFeatureFlagManager *)featureFlagManager {
    self = [super init];
    if (self) {
        _featureFlagManager = featureFlagManager;
    }
    return self;
}

- (id<LPRequesting>)createGetForApiMethod:(NSString *)apiMethod params:(NSDictionary *)params {
    return [LeanplumRequest get:apiMethod params:params];
}

- (id<LPRequesting>)createPostForApiMethod:(NSString *)apiMethod params:(NSDictionary *)params {
    return [LeanplumRequest post:apiMethod params:params];
}

@end