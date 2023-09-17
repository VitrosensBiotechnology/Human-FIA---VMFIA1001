.class public interface abstract Lca/uhn/hl7v2/HapiContext;
.super Ljava/lang/Object;
.source "HapiContext.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract getCodeStoreRegistry()Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;
.end method

.method public abstract getConformanceValidator()Lca/uhn/hl7v2/conf/check/Validator;
.end method

.method public abstract getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;
.end method

.method public abstract getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
.end method

.method public abstract getMessageValidator()Lca/uhn/hl7v2/validation/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lca/uhn/hl7v2/validation/Validator<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;
.end method

.method public abstract getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;
.end method

.method public abstract getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;
.end method

.method public abstract getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;
.end method

.method public abstract getServerConfiguration()Lca/uhn/hl7v2/app/ServerConfiguration;
.end method

.method public abstract getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;
.end method

.method public abstract getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
.end method

.method public abstract getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
.end method

.method public abstract getXMLParser()Lca/uhn/hl7v2/parser/XMLParser;
.end method

.method public abstract newClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newLazyClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newLazyClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newMessage(Ljava/lang/Class;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lca/uhn/hl7v2/model/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newMessage(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract newServer(IIZ)Lca/uhn/hl7v2/app/HL7Service;
.end method

.method public abstract newServer(IZ)Lca/uhn/hl7v2/app/HL7Service;
.end method

.method public abstract setCodeStoreRegistry(Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;)V
.end method

.method public abstract setExecutorService(Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract setLowerLayerProtocol(Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V
.end method

.method public abstract setModelClassFactory(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
.end method

.method public abstract setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V
.end method

.method public abstract setProfileStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V
.end method

.method public abstract setServerConfiguration(Lca/uhn/hl7v2/app/ServerConfiguration;)V
.end method

.method public abstract setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V
.end method

.method public abstract setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
.end method

.method public abstract setValidationContext(Ljava/lang/String;)V
.end method

.method public abstract setValidationExceptionHandlerFactory(Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "TR;>;)V"
        }
    .end annotation
.end method

.method public abstract setValidationRuleBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
.end method

.method public abstract setValidationRuleBuilder(Ljava/lang/String;)V
.end method
