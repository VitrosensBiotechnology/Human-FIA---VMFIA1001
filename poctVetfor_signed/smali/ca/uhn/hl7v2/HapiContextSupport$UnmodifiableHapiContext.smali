.class Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;
.super Ljava/lang/Object;
.source "HapiContextSupport.java"

# interfaces
.implements Lca/uhn/hl7v2/HapiContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/HapiContextSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableHapiContext"
.end annotation


# instance fields
.field private context:Lca/uhn/hl7v2/HapiContext;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->close()V

    .line 254
    return-void
.end method

.method public getCodeStoreRegistry()Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;
    .locals 1

    .line 97
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getCodeStoreRegistry()Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getConformanceValidator()Lca/uhn/hl7v2/conf/check/Validator;
    .locals 1

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getConformanceValidator()Lca/uhn/hl7v2/conf/check/Validator;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 1

    .line 108
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 112
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;
    .locals 1

    .line 116
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v0

    return-object v0
.end method

.method public getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1

    .line 120
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getMessageValidator()Lca/uhn/hl7v2/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lca/uhn/hl7v2/validation/Validator<",
            "TR;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getMessageValidator()Lca/uhn/hl7v2/validation/Validator;

    move-result-object v0

    return-object v0
.end method

.method public getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;
    .locals 1

    .line 128
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    return-object v0
.end method

.method public getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;
    .locals 1

    .line 132
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;
    .locals 1

    .line 136
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;

    move-result-object v0

    return-object v0
.end method

.method public getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;
    .locals 1

    .line 140
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfiguration()Lca/uhn/hl7v2/app/ServerConfiguration;
    .locals 1

    .line 245
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getServerConfiguration()Lca/uhn/hl7v2/app/ServerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;
    .locals 1

    .line 144
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 1

    .line 148
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "TR;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationExceptionHandlerFactory()Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 1

    .line 156
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getXMLParser()Lca/uhn/hl7v2/parser/XMLParser;
    .locals 1

    .line 160
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getXMLParser()Lca/uhn/hl7v2/parser/XMLParser;

    move-result-object v0

    return-object v0
.end method

.method public newClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3, p4}, Lca/uhn/hl7v2/HapiContext;->newClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/HapiContext;->newClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newLazyClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3, p4}, Lca/uhn/hl7v2/HapiContext;->newLazyClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newLazyClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/HapiContext;->newLazyClient(Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/Class;)Lca/uhn/hl7v2/model/Message;
    .locals 1
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

    .line 192
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/HapiContext;->newMessage(Ljava/lang/Class;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/model/Message;
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "triggerEvent"    # Ljava/lang/String;
    .param p3, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/HapiContext;->newMessage(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public newServer(IIZ)Lca/uhn/hl7v2/app/HL7Service;
    .locals 1
    .param p1, "inboundPort"    # I
    .param p2, "outboundPort"    # I
    .param p3, "tls"    # Z

    .line 184
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2, p3}, Lca/uhn/hl7v2/HapiContext;->newServer(IIZ)Lca/uhn/hl7v2/app/HL7Service;

    move-result-object v0

    return-object v0
.end method

.method public newServer(IZ)Lca/uhn/hl7v2/app/HL7Service;
    .locals 1
    .param p1, "port"    # I
    .param p2, "tls"    # Z

    .line 180
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1, p2}, Lca/uhn/hl7v2/HapiContext;->newServer(IZ)Lca/uhn/hl7v2/app/HL7Service;

    move-result-object v0

    return-object v0
.end method

.method public setCodeStoreRegistry(Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;)V
    .locals 2
    .param p1, "store"    # Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLowerLayerProtocol(Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V
    .locals 2
    .param p1, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModelClassFactory(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 2
    .param p1, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProfileStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V
    .locals 2
    .param p1, "store"    # Lca/uhn/hl7v2/conf/store/ProfileStore;

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServerConfiguration(Lca/uhn/hl7v2/app/ServerConfiguration;)V
    .locals 2
    .param p1, "theServerConfiguration"    # Lca/uhn/hl7v2/app/ServerConfiguration;

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V
    .locals 2
    .param p1, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 2
    .param p1, "context"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidationContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "contextClassName"    # Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidationExceptionHandlerFactory(Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "TR;>;)V"
        }
    .end annotation

    .line 233
    .local p1, "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    iget-object v0, p0, Lca/uhn/hl7v2/HapiContextSupport$UnmodifiableHapiContext;->context:Lca/uhn/hl7v2/HapiContext;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/HapiContext;->setValidationExceptionHandlerFactory(Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;)V

    .line 234
    return-void
.end method

.method public setValidationRuleBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 2
    .param p1, "ruleBuilder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidationRuleBuilder(Ljava/lang/String;)V
    .locals 2
    .param p1, "builderClassName"    # Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
