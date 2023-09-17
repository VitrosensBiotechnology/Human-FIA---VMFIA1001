.class public Lca/uhn/hl7v2/DefaultHapiContext;
.super Ljava/lang/Object;
.source "DefaultHapiContext.java"

# interfaces
.implements Lca/uhn/hl7v2/HapiContext;


# instance fields
.field private codeStoreRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

.field private connectionHub:Lca/uhn/hl7v2/app/ConnectionHub;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private genericParser:Lca/uhn/hl7v2/parser/GenericParser;

.field private llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

.field private modelClassFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

.field private parserConfiguration:Lca/uhn/hl7v2/parser/ParserConfiguration;

.field private pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

.field private profileStore:Lca/uhn/hl7v2/conf/store/ProfileStore;

.field private serverConfiguration:Lca/uhn/hl7v2/app/ServerConfiguration;

.field private socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

.field private validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

.field private validationExceptionHandlerFactory:Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private validationRuleBuilder:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

.field private validator:Lca/uhn/hl7v2/validation/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lca/uhn/hl7v2/validation/Validator<",
            "*>;"
        }
    .end annotation
.end field

.field private xmlParser:Lca/uhn/hl7v2/parser/XMLParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/HapiContext;)V
    .locals 3
    .param p1, "context"    # Lca/uhn/hl7v2/HapiContext;

    .line 140
    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;

    move-result-object v0

    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    .line 141
    invoke-interface {p1}, Lca/uhn/hl7v2/HapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/ValidationContext;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 2
    .param p1, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 100
    new-instance v0, Lca/uhn/hl7v2/parser/ParserConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;-><init>()V

    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->defaultValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    .line 101
    invoke-direct {p0, v0, v1, p1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/ValidationContext;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/ValidationContext;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 2
    .param p1, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .param p2, "validationContext"    # Lca/uhn/hl7v2/validation/ValidationContext;
    .param p3, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->init()V

    .line 115
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;->setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 116
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 117
    invoke-virtual {p0, p3}, Lca/uhn/hl7v2/DefaultHapiContext;->setModelClassFactory(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 118
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>(Z)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setLowerLayerProtocol(Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V

    .line 119
    new-instance v0, Lca/uhn/hl7v2/util/StandardSocketFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/util/StandardSocketFactory;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V

    .line 120
    new-instance v0, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/validation/ReportingValidationExceptionHandler;-><init>(Z)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationExceptionHandlerFactory(Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;)V

    .line 121
    invoke-static {}, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setProfileStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V

    .line 122
    new-instance v0, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setCodeStoreRegistry(Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;)V

    .line 123
    new-instance v0, Lca/uhn/hl7v2/app/ServerConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/app/ServerConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setServerConfiguration(Lca/uhn/hl7v2/app/ServerConfiguration;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 2
    .param p1, "parserConfiguration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;
    .param p2, "builder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .param p3, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->init()V

    .line 129
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;->setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V

    .line 130
    invoke-virtual {p0, p2}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationRuleBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V

    .line 131
    invoke-virtual {p0, p3}, Lca/uhn/hl7v2/DefaultHapiContext;->setModelClassFactory(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 132
    new-instance v0, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/llp/MinLowerLayerProtocol;-><init>(Z)V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setLowerLayerProtocol(Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V

    .line 133
    new-instance v0, Lca/uhn/hl7v2/util/StandardSocketFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/util/StandardSocketFactory;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V

    .line 134
    invoke-static {}, Lca/uhn/hl7v2/conf/store/ProfileStoreFactory;->getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setProfileStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V

    .line 135
    new-instance v0, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;

    invoke-direct {v0}, Lca/uhn/hl7v2/conf/store/DefaultCodeStoreRegistry;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setCodeStoreRegistry(Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;)V

    .line 136
    new-instance v0, Lca/uhn/hl7v2/app/ServerConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/app/ServerConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setServerConfiguration(Lca/uhn/hl7v2/app/ServerConfiguration;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 2
    .param p1, "validationContext"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 105
    new-instance v0, Lca/uhn/hl7v2/parser/ParserConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;-><init>()V

    new-instance v1, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/ValidationContext;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 2
    .param p1, "builder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 109
    new-instance v0, Lca/uhn/hl7v2/parser/ParserConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/ParserConfiguration;-><init>()V

    new-instance v1, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v1}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>(Lca/uhn/hl7v2/parser/ParserConfiguration;Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 95
    invoke-direct {p0}, Lca/uhn/hl7v2/DefaultHapiContext;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/DefaultHapiContext;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 97
    return-void
.end method

.method static synthetic access$2(Lca/uhn/hl7v2/DefaultHapiContext;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 73
    iget-object p0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/app/ConnectionHub;->discardAll()V

    .line 146
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->isDefaultService(Ljava/util/concurrent/ExecutorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 149
    :cond_0
    return-void
.end method

.method public getCodeStoreRegistry()Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;
    .locals 1

    .line 257
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->codeStoreRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    return-object v0
.end method

.method public getConformanceValidator()Lca/uhn/hl7v2/conf/check/Validator;
    .locals 1

    .line 265
    new-instance v0, Lca/uhn/hl7v2/conf/check/DefaultValidator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/conf/check/DefaultValidator;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    return-object v0
.end method

.method public getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;
    .locals 1

    .line 171
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->connectionHub:Lca/uhn/hl7v2/app/ConnectionHub;

    if-nez v0, :cond_0

    .line 172
    invoke-static {p0}, Lca/uhn/hl7v2/app/ConnectionHub;->getNewInstance(Lca/uhn/hl7v2/HapiContext;)Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->connectionHub:Lca/uhn/hl7v2/app/ConnectionHub;

    .line 174
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->connectionHub:Lca/uhn/hl7v2/app/ConnectionHub;

    return-object v0
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lca/uhn/hl7v2/concurrent/DefaultExecutorService;->getDefaultService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lca/uhn/hl7v2/DefaultHapiContext$1;

    invoke-direct {v1, p0}, Lca/uhn/hl7v2/DefaultHapiContext$1;-><init>(Lca/uhn/hl7v2/DefaultHapiContext;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->genericParser:Lca/uhn/hl7v2/parser/GenericParser;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lca/uhn/hl7v2/parser/GenericParser;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/parser/GenericParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->genericParser:Lca/uhn/hl7v2/parser/GenericParser;

    .line 286
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->genericParser:Lca/uhn/hl7v2/parser/GenericParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLowerLayerProtocol()Lca/uhn/hl7v2/llp/LowerLayerProtocol;
    .locals 1

    .line 314
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    return-object v0
.end method

.method public declared-synchronized getMessageValidator()Lca/uhn/hl7v2/validation/Validator;
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

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validator:Lca/uhn/hl7v2/validation/Validator;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lca/uhn/hl7v2/validation/DefaultValidator;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/validation/DefaultValidator;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validator:Lca/uhn/hl7v2/validation/Validator;

    .line 294
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validator:Lca/uhn/hl7v2/validation/Validator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;
    .locals 1

    .line 241
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->modelClassFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    if-nez v0, :cond_0

    new-instance v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->modelClassFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    :goto_0
    return-object v0
.end method

.method public getParserConfiguration()Lca/uhn/hl7v2/parser/ParserConfiguration;
    .locals 1

    .line 178
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->parserConfiguration:Lca/uhn/hl7v2/parser/ParserConfiguration;

    return-object v0
.end method

.method public declared-synchronized getPipeParser()Lca/uhn/hl7v2/parser/PipeParser;
    .locals 1

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lca/uhn/hl7v2/parser/PipeParser;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/parser/PipeParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;

    .line 272
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->pipeParser:Lca/uhn/hl7v2/parser/PipeParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;
    .locals 1

    .line 249
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->profileStore:Lca/uhn/hl7v2/conf/store/ProfileStore;

    return-object v0
.end method

.method public getServerConfiguration()Lca/uhn/hl7v2/app/ServerConfiguration;
    .locals 1

    .line 354
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->serverConfiguration:Lca/uhn/hl7v2/app/ServerConfiguration;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lca/uhn/hl7v2/app/ServerConfiguration;

    invoke-direct {v0}, Lca/uhn/hl7v2/app/ServerConfiguration;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->serverConfiguration:Lca/uhn/hl7v2/app/ServerConfiguration;

    .line 357
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->serverConfiguration:Lca/uhn/hl7v2/app/ServerConfiguration;

    return-object v0
.end method

.method public getSocketFactory()Lca/uhn/hl7v2/util/SocketFactory;
    .locals 1

    .line 322
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    return-object v0
.end method

.method public getValidationContext()Lca/uhn/hl7v2/validation/ValidationContext;
    .locals 2

    .line 195
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    nop

    .line 199
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    invoke-static {v0}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->fromBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 200
    goto :goto_0

    .line 202
    :cond_0
    :try_start_0
    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->getContext()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->defaultValidation()Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 208
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

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

    .line 299
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationExceptionHandlerFactory:Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/validation/DefaultValidationExceptionHandler;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationExceptionHandlerFactory:Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    .line 302
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationExceptionHandlerFactory:Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    return-object v0
.end method

.method public getValidationRuleBuilder()Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;
    .locals 1

    .line 224
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationRuleBuilder:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    return-object v0
.end method

.method public declared-synchronized getXMLParser()Lca/uhn/hl7v2/parser/XMLParser;
    .locals 1

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultXMLParser;

    invoke-direct {v0, p0}, Lca/uhn/hl7v2/parser/DefaultXMLParser;-><init>(Lca/uhn/hl7v2/HapiContext;)V

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;

    .line 279
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->xmlParser:Lca/uhn/hl7v2/parser/XMLParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;

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

    .line 338
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lca/uhn/hl7v2/app/ConnectionHub;->attach(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newLazyClient(Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "outboundPort"    # I
    .param p3, "inboundPort"    # I
    .param p4, "tls"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IIZ)Lca/uhn/hl7v2/app/Connection;

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

    .line 346
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getConnectionHub()Lca/uhn/hl7v2/app/ConnectionHub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lca/uhn/hl7v2/app/ConnectionHub;->attachLazily(Lca/uhn/hl7v2/DefaultHapiContext;Ljava/lang/String;IZ)Lca/uhn/hl7v2/app/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/Class;)Lca/uhn/hl7v2/model/Message;
    .locals 2
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

    .line 380
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lca/uhn/hl7v2/util/ReflectionUtil;->instantiateMessage(Ljava/lang/Class;Lca/uhn/hl7v2/parser/ModelClassFactory;)Lca/uhn/hl7v2/model/Message;

    move-result-object v0

    .line 381
    .local v0, "msg":Lca/uhn/hl7v2/model/Message;, "TT;"
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getGenericParser()Lca/uhn/hl7v2/parser/GenericParser;

    move-result-object v1

    invoke-interface {v0, v1}, Lca/uhn/hl7v2/model/Message;->setParser(Lca/uhn/hl7v2/parser/Parser;)V

    .line 382
    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/String;Lca/uhn/hl7v2/Version;)Lca/uhn/hl7v2/model/Message;
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "triggerEvent"    # Ljava/lang/String;
    .param p3, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "structure":Ljava/lang/String;
    invoke-virtual {p0}, Lca/uhn/hl7v2/DefaultHapiContext;->getModelClassFactory()Lca/uhn/hl7v2/parser/ModelClassFactory;

    move-result-object v1

    invoke-virtual {p3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lca/uhn/hl7v2/parser/ModelClassFactory;->getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 371
    .local v1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    invoke-virtual {p0, v1}, Lca/uhn/hl7v2/DefaultHapiContext;->newMessage(Ljava/lang/Class;)Lca/uhn/hl7v2/model/Message;

    move-result-object v2

    .line 372
    .local v2, "msg":Lca/uhn/hl7v2/model/Message;
    move-object v3, v2

    check-cast v3, Lca/uhn/hl7v2/model/AbstractMessage;

    const-string v4, "P"

    invoke-virtual {v3, p1, p2, v4}, Lca/uhn/hl7v2/model/AbstractMessage;->initQuickstart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-object v2

    .line 374
    .end local v0    # "structure":Ljava/lang/String;
    .end local v1    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    .end local v2    # "msg":Lca/uhn/hl7v2/model/Message;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v1, v0}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic newServer(IIZ)Lca/uhn/hl7v2/app/HL7Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lca/uhn/hl7v2/DefaultHapiContext;->newServer(IIZ)Lca/uhn/hl7v2/app/TwoPortService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newServer(IZ)Lca/uhn/hl7v2/app/HL7Service;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lca/uhn/hl7v2/DefaultHapiContext;->newServer(IZ)Lca/uhn/hl7v2/app/SimpleServer;

    move-result-object p1

    return-object p1
.end method

.method public newServer(IZ)Lca/uhn/hl7v2/app/SimpleServer;
    .locals 1
    .param p1, "port"    # I
    .param p2, "tls"    # Z

    .line 330
    new-instance v0, Lca/uhn/hl7v2/app/SimpleServer;

    invoke-direct {v0, p0, p1, p2}, Lca/uhn/hl7v2/app/SimpleServer;-><init>(Lca/uhn/hl7v2/HapiContext;IZ)V

    return-object v0
.end method

.method public newServer(IIZ)Lca/uhn/hl7v2/app/TwoPortService;
    .locals 1
    .param p1, "port1"    # I
    .param p2, "port2"    # I
    .param p3, "tls"    # Z

    .line 334
    new-instance v0, Lca/uhn/hl7v2/app/TwoPortService;

    invoke-direct {v0, p0, p1, p2, p3}, Lca/uhn/hl7v2/app/TwoPortService;-><init>(Lca/uhn/hl7v2/HapiContext;IIZ)V

    return-object v0
.end method

.method public setCodeStoreRegistry(Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;)V
    .locals 0
    .param p1, "codeStoreRegistry"    # Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    .line 261
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->codeStoreRegistry:Lca/uhn/hl7v2/conf/store/CodeStoreRegistry;

    .line 262
    return-void
.end method

.method public declared-synchronized setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    monitor-enter p0

    .line 167
    :try_start_0
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local p1    # "executorService":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLowerLayerProtocol(Lca/uhn/hl7v2/llp/LowerLayerProtocol;)V
    .locals 0
    .param p1, "llp"    # Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 318
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->llp:Lca/uhn/hl7v2/llp/LowerLayerProtocol;

    .line 319
    return-void
.end method

.method public setModelClassFactory(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "modelClassFactory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 245
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->modelClassFactory:Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 246
    return-void
.end method

.method public setParserConfiguration(Lca/uhn/hl7v2/parser/ParserConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lca/uhn/hl7v2/parser/ParserConfiguration;

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParserConfiguration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->parserConfiguration:Lca/uhn/hl7v2/parser/ParserConfiguration;

    .line 185
    return-void
.end method

.method public setProfileStore(Lca/uhn/hl7v2/conf/store/ProfileStore;)V
    .locals 0
    .param p1, "profileStore"    # Lca/uhn/hl7v2/conf/store/ProfileStore;

    .line 253
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->profileStore:Lca/uhn/hl7v2/conf/store/ProfileStore;

    .line 254
    return-void
.end method

.method public setServerConfiguration(Lca/uhn/hl7v2/app/ServerConfiguration;)V
    .locals 2
    .param p1, "theServerConfiguration"    # Lca/uhn/hl7v2/app/ServerConfiguration;

    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Server configuration can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->serverConfiguration:Lca/uhn/hl7v2/app/ServerConfiguration;

    .line 365
    return-void
.end method

.method public setSocketFactory(Lca/uhn/hl7v2/util/SocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Lca/uhn/hl7v2/util/SocketFactory;

    .line 326
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->socketFactory:Lca/uhn/hl7v2/util/SocketFactory;

    .line 327
    return-void
.end method

.method public setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V
    .locals 0
    .param p1, "context"    # Lca/uhn/hl7v2/validation/ValidationContext;

    .line 212
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;

    .line 213
    return-void
.end method

.method public setValidationContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "contextClassName"    # Ljava/lang/String;

    .line 217
    :try_start_0
    invoke-static {p1}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->customValidation(Ljava/lang/String;)Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationContext:Lca/uhn/hl7v2/validation/ValidationContext;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .line 221
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValidationExceptionHandlerFactory(Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<",
            "TR;>;)V"
        }
    .end annotation

    .line 307
    .local p1, "factory":Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;, "Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory<TR;>;"
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ValidationExceptionHandlerFactory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationExceptionHandlerFactory:Lca/uhn/hl7v2/validation/ValidationExceptionHandlerFactory;

    .line 311
    return-void
.end method

.method public setValidationRuleBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    .locals 1
    .param p1, "validationRuleBuilder"    # Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 228
    iput-object p1, p0, Lca/uhn/hl7v2/DefaultHapiContext;->validationRuleBuilder:Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    .line 229
    invoke-static {p1}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->fromBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)Lca/uhn/hl7v2/validation/ValidationContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationContext(Lca/uhn/hl7v2/validation/ValidationContext;)V

    .line 230
    return-void
.end method

.method public setValidationRuleBuilder(Ljava/lang/String;)V
    .locals 2
    .param p1, "builderClassName"    # Ljava/lang/String;

    .line 234
    :try_start_0
    invoke-static {p1}, Lca/uhn/hl7v2/validation/impl/ValidationContextFactory;->customBuilder(Ljava/lang/String;)Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/DefaultHapiContext;->setValidationRuleBuilder(Lca/uhn/hl7v2/validation/builder/ValidationRuleBuilder;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    nop

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
