.class public Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;
.source "ConformanceProfileRule.java"


# static fields
.field private static final PARSER:Lca/uhn/hl7v2/conf/parser/ProfileParser;

.field private static final PROFILE_CACHE:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lca/uhn/hl7v2/conf/spec/RuntimeProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enableCaching:Z

.field private myProfileID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    const-class v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->log:Lorg/slf4j/Logger;

    .line 61
    new-instance v0, Lca/uhn/hl7v2/conf/parser/ProfileParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;-><init>(Z)V

    sput-object v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->PARSER:Lca/uhn/hl7v2/conf/parser/ProfileParser;

    .line 65
    new-instance v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule$1;

    const/16 v2, 0x64

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule$1;-><init>(IFZ)V

    sput-object v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->PROFILE_CACHE:Ljava/util/LinkedHashMap;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractMessageRule;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->enableCaching:Z

    .line 79
    const-string v0, "Unknown segments found in message"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->setDescription(Ljava/lang/String;)V

    .line 80
    const-string v0, "HL7 2.5 section 2.12"

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->setSectionReference(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theProfileID"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;-><init>()V

    .line 90
    iput-object p1, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->myProfileID:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private getDeclaredProfileIDs(Lca/uhn/hl7v2/model/Message;)[Ljava/lang/String;
    .locals 7
    .param p1, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 124
    new-instance v0, Lca/uhn/hl7v2/util/Terser;

    invoke-direct {v0, p1}, Lca/uhn/hl7v2/util/Terser;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 125
    .local v0, "t":Lca/uhn/hl7v2/util/Terser;
    const/4 v1, 0x0

    .line 126
    .local v1, "noMore":Z
    const/4 v2, 0x0

    .line 127
    .local v2, "c":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v3, "declaredProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 129
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MSH-21("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    .line 129
    .local v5, "c":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .end local v2    # "c":I
    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lca/uhn/hl7v2/util/Terser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "idRep":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "idRep":Ljava/lang/String;
    goto :goto_2

    .line 133
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "idRep":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 134
    nop

    .line 128
    .end local v4    # "idRep":Ljava/lang/String;
    .end local v5    # "c":I
    .local v2, "c":I
    :goto_2
    move v2, v5

    goto :goto_0
.end method

.method private declared-synchronized getProfile(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .locals 2
    .param p1, "profileString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->PROFILE_CACHE:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    .line 143
    .local v0, "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    if-nez v0, :cond_0

    .line 144
    sget-object v1, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->PARSER:Lca/uhn/hl7v2/conf/parser/ProfileParser;

    invoke-virtual {v1, p1}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->parse(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    move-result-object v1

    move-object v0, v1

    .line 145
    iget-boolean v1, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->enableCaching:Z

    if-eqz v1, :cond_0

    sget-object v1, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->PROFILE_CACHE:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-object v0

    .line 141
    .end local v0    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    .end local p1    # "profileString":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private testAgainstProfile(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 7
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/ProfileException;,
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lca/uhn/hl7v2/model/Message;->getParser()Lca/uhn/hl7v2/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/parser/Parser;->getHapiContext()Lca/uhn/hl7v2/HapiContext;

    move-result-object v0

    .line 153
    .local v0, "context":Lca/uhn/hl7v2/HapiContext;
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getConformanceValidator()Lca/uhn/hl7v2/conf/check/Validator;

    move-result-object v1

    .line 155
    .local v1, "validator":Lca/uhn/hl7v2/conf/check/Validator;
    :try_start_0
    invoke-interface {v0}, Lca/uhn/hl7v2/HapiContext;->getProfileStore()Lca/uhn/hl7v2/conf/store/ProfileStore;

    move-result-object v2

    .line 156
    .local v2, "profileStore":Lca/uhn/hl7v2/conf/store/ProfileStore;
    invoke-interface {v2, p2}, Lca/uhn/hl7v2/conf/store/ProfileStore;->getProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "profileString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 158
    invoke-direct {p0, v3}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->getProfile(Ljava/lang/String;)Lca/uhn/hl7v2/conf/spec/RuntimeProfile;

    move-result-object v4

    .line 159
    .local v4, "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    invoke-virtual {v4}, Lca/uhn/hl7v2/conf/spec/RuntimeProfile;->getMessage()Lca/uhn/hl7v2/conf/spec/message/StaticDef;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Lca/uhn/hl7v2/conf/check/Validator;->validate(Lca/uhn/hl7v2/model/Message;Lca/uhn/hl7v2/conf/spec/message/StaticDef;)[Lca/uhn/hl7v2/HL7Exception;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v4    # "profile":Lca/uhn/hl7v2/conf/spec/RuntimeProfile;
    move-object v4, v5

    .line 160
    .local v4, "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    nop

    .line 164
    .end local v2    # "profileStore":Lca/uhn/hl7v2/conf/store/ProfileStore;
    .end local v3    # "profileString":Ljava/lang/String;
    nop

    .line 167
    array-length v2, v4

    new-array v2, v2, [Lca/uhn/hl7v2/validation/ValidationException;

    .line 168
    .local v2, "result":[Lca/uhn/hl7v2/validation/ValidationException;
    const/4 v3, 0x0

    .line 168
    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 171
    .end local v3    # "i":I
    return-object v2

    .line 169
    .restart local v3    # "i":I
    :cond_0
    aget-object v5, v4, v3

    invoke-static {v5}, Lca/uhn/hl7v2/validation/ValidationException;->fromHL7Exception(Lca/uhn/hl7v2/HL7Exception;)Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v5

    aput-object v5, v2, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    .end local v4    # "exceptions":[Lca/uhn/hl7v2/HL7Exception;
    .local v2, "profileStore":Lca/uhn/hl7v2/conf/store/ProfileStore;
    .local v3, "profileString":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to find the profile "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .end local v2    # "profileStore":Lca/uhn/hl7v2/conf/store/ProfileStore;
    .end local v3    # "profileString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lca/uhn/hl7v2/conf/ProfileException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error retreiving profile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/conf/ProfileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 9
    .param p1, "msg"    # Lca/uhn/hl7v2/model/Message;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "problems":Ljava/util/List;, "Ljava/util/List<Lca/uhn/hl7v2/validation/ValidationException;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->myProfileID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 102
    .local v1, "ids":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->myProfileID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->getDeclaredProfileIDs(Lca/uhn/hl7v2/model/Message;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 106
    :cond_0
    array-length v2, v1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 116
    goto :goto_2

    .line 106
    :cond_1
    aget-object v4, v1, v3

    .line 107
    .local v4, "id":Ljava/lang/String;
    sget-object v5, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->log:Lorg/slf4j/Logger;

    const-string v6, "Testing message against profile: {}"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    invoke-direct {p0, p1, v4}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->testAgainstProfile(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v5

    .line 110
    .local v5, "shortList":[Lca/uhn/hl7v2/validation/ValidationException;
    sget-object v6, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->log:Lorg/slf4j/Logger;

    const-string v7, "{} non-conformances"

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lca/uhn/hl7v2/conf/ProfileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v5    # "shortList":[Lca/uhn/hl7v2/validation/ValidationException;
    goto :goto_1

    :catch_0
    move-exception v5

    .line 113
    .local v5, "e":Lca/uhn/hl7v2/conf/ProfileException;
    :try_start_2
    new-instance v6, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t validate against profile: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lca/uhn/hl7v2/conf/ProfileException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "e":Lca/uhn/hl7v2/conf/ProfileException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v3, Lca/uhn/hl7v2/validation/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t validate against profile: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lca/uhn/hl7v2/HL7Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lca/uhn/hl7v2/validation/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lca/uhn/hl7v2/validation/ValidationException;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lca/uhn/hl7v2/validation/ValidationException;

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Lca/uhn/hl7v2/model/Message;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->apply(Lca/uhn/hl7v2/model/Message;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "expected conformance to declared or predefined message profiles"

    return-object v0
.end method

.method public getProfileID()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->myProfileID:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionReference()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "HL7 2.5 section 2.12"

    return-object v0
.end method

.method public setEnableCaching(Z)V
    .locals 0
    .param p1, "enableCaching"    # Z

    .line 194
    iput-boolean p1, p0, Lca/uhn/hl7v2/validation/impl/ConformanceProfileRule;->enableCaching:Z

    .line 195
    return-void
.end method
