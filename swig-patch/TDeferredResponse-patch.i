%{

#include "../../../../SourceSpace/ThriftMe/ThriftMe/inc/TDeferredResponse.h"

namespace thrift {	

class THRIFTME_EXPORT TDeferredResponseExt : public TDeferredResponse
{
public:
    TDeferredResponseExt()
        : TDeferredResponse(0, 0, logging::TLogLevel::LOG_INFO, nullptr)
    {}
    virtual ~TDeferredResponseExt()
    {}

    TDeferredResponseExt& operator=(const TDeferredResponse &other)
    {
        if (this != &other)
        {
            this->_serviceId       = other.getServiceId();
            this->_seqId           = other.getSeqId();
            this->_logLevel        = other.getLogLevel();
            this->_outputTransport = other.getOutputTransport();
        }
        return *this;
    }
};

}

#define TDeferredResponse TDeferredResponseExt
%}
