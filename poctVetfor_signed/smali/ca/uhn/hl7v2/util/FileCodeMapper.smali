.class public Lca/uhn/hl7v2/util/FileCodeMapper;
.super Lca/uhn/hl7v2/util/CodeMapper;
.source "FileCodeMapper.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field baseDir:Ljava/io/File;

.field private interfaceToLocal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private localToInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private throwIfNoMatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lca/uhn/hl7v2/util/FileCodeMapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lca/uhn/hl7v2/util/CodeMapper;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->throwIfNoMatch:Z

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lca/uhn/hl7v2/util/Home;->getHomeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/codemap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->baseDir:Ljava/io/File;

    .line 59
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/FileCodeMapper;->refreshCache()V

    .line 60
    return-void
.end method

.method private getCode(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "hl7Table"    # I
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 190
    .local p1, "interfaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v1, "tableName":Ljava/lang/StringBuffer;
    const-string v2, "HL7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_0

    .line 196
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :cond_0
    const/16 v2, 0x64

    if-ge p2, v2, :cond_1

    .line 198
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_1
    const/16 v2, 0xa

    if-ge p2, v2, :cond_2

    .line 200
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 205
    .local v2, "tableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 249
    :try_start_0
    invoke-static {}, Lca/uhn/hl7v2/util/CodeMapper;->getInstance()Lca/uhn/hl7v2/util/CodeMapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/util/CodeMapper;->throwExceptionIfNoMatch(Z)V

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local code for M is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "test"

    const-string v4, "M"

    invoke-static {v3, v1, v4}, Lca/uhn/hl7v2/util/CodeMapper;->getLocal(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface code for female is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "test"

    const-string v4, "female"

    invoke-static {v3, v1, v4}, Lca/uhn/hl7v2/util/CodeMapper;->getInt(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 257
    .end local v0    # "e":Lca/uhn/hl7v2/HL7Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getInterfaceCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "hl7Table"    # I
    .param p3, "localCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "interfaceCode":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->localToInterface:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 217
    .local v1, "interfaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, v1, p2, p3}, Lca/uhn/hl7v2/util/FileCodeMapper;->getCode(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 218
    .end local v1    # "interfaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "npe":Ljava/lang/NullPointerException;
    iget-boolean v2, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->throwIfNoMatch:Z

    if-eqz v2, :cond_0

    .line 221
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No interface mapping for the local code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, " for HL7 table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v4, " for the interface \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    sget-object v4, Lca/uhn/hl7v2/ErrorCode;->TABLE_VALUE_NOT_FOUND:Lca/uhn/hl7v2/ErrorCode;

    .line 221
    invoke-direct {v2, v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v2

    .line 231
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getLocalCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "hl7Table"    # I
    .param p3, "interfaceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "localCode":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->interfaceToLocal:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 169
    .local v1, "interfaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, v1, p2, p3}, Lca/uhn/hl7v2/util/FileCodeMapper;->getCode(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 170
    .end local v1    # "interfaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "npe":Ljava/lang/NullPointerException;
    iget-boolean v2, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->throwIfNoMatch:Z

    if-eqz v2, :cond_0

    .line 173
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No local mapping for the interface code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v4, " for HL7 table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v4, " for the interface \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    sget-object v4, Lca/uhn/hl7v2/ErrorCode;->TABLE_VALUE_NOT_FOUND:Lca/uhn/hl7v2/ErrorCode;

    .line 173
    invoke-direct {v2, v3, v4}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v2

    .line 183
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public refreshCache()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 67
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lca/uhn/hl7v2/util/FileCodeMapper;->localToInterface:Ljava/util/Map;

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lca/uhn/hl7v2/util/FileCodeMapper;->interfaceToLocal:Ljava/util/Map;

    .line 70
    sget-object v2, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    const-string v3, "Refreshing cache"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 74
    :try_start_0
    iget-object v2, v1, Lca/uhn/hl7v2/util/FileCodeMapper;->baseDir:Ljava/io/File;

    new-instance v3, Lca/uhn/hl7v2/util/FileCodeMapper$1;

    invoke-direct {v3, v1}, Lca/uhn/hl7v2/util/FileCodeMapper$1;-><init>(Lca/uhn/hl7v2/util/FileCodeMapper;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 84
    .local v2, "interfaceDirs":[Ljava/io/File;
    const/4 v3, 0x0

    .line 84
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 154
    .end local v2    # "interfaceDirs":[Ljava/io/File;
    .end local v3    # "i":I
    nop

    .line 159
    return-void

    .line 86
    .restart local v2    # "interfaceDirs":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_0
    sget-object v4, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    .line 87
    const-string v5, "Checking directory {} for interface code maps."

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    aget-object v4, v2, v3

    new-instance v5, Lca/uhn/hl7v2/util/FileCodeMapper$2;

    invoke-direct {v5, v1}, Lca/uhn/hl7v2/util/FileCodeMapper$2;-><init>(Lca/uhn/hl7v2/util/FileCodeMapper;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 103
    .local v4, "mapFiles":[Ljava/io/File;
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 104
    .local v5, "li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v6, v7

    .line 105
    .local v6, "il":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    .line 105
    .local v7, "j":I
    :goto_1
    array-length v8, v4

    if-lt v7, v8, :cond_1

    .line 150
    .end local v7    # "j":I
    iget-object v7, v1, Lca/uhn/hl7v2/util/FileCodeMapper;->interfaceToLocal:Ljava/util/Map;

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v7, v1, Lca/uhn/hl7v2/util/FileCodeMapper;->localToInterface:Ljava/util/Map;

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "mapFiles":[Ljava/io/File;
    .end local v5    # "li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "il":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .restart local v4    # "mapFiles":[Ljava/io/File;
    .restart local v5    # "li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v6    # "il":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7    # "j":I
    :cond_1
    sget-object v8, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    const-string v9, "Reading map entries from file {}"

    aget-object v10, v4, v7

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "fName":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "tableName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "mapDirection":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    const/16 v14, 0x19

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v13, "codeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 116
    .local v14, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    aget-object v11, v4, v7

    invoke-direct {v12, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v14, v15

    .line 117
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->ready()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_4

    .line 131
    nop

    .line 133
    if-eqz v14, :cond_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 137
    :cond_2
    const-string v11, "il"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v15, 0x3

    if-eqz v11, :cond_3

    .line 138
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v11, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    const-string v12, "Adding {} codes to interface -> local map for {} in {} interface"

    .line 140
    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v15, v17

    const/4 v1, 0x1

    aput-object v10, v15, v1

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v15, v16

    .line 139
    invoke-interface {v11, v12, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto :goto_3

    .line 143
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lca/uhn/hl7v2/util/FileCodeMapper;->log:Lorg/slf4j/Logger;

    const-string v11, "Adding {} codes to local -> interface map for {} in {} interface"

    .line 145
    new-array v12, v15, [Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v12, v17

    const/4 v15, 0x1

    aput-object v10, v12, v15

    aget-object v15, v2, v3

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v12, v16

    .line 144
    invoke-interface {v1, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .end local v8    # "fName":Ljava/lang/String;
    .end local v9    # "mapDirection":Ljava/lang/String;
    .end local v10    # "tableName":Ljava/lang/String;
    .end local v13    # "codeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "in":Ljava/io/BufferedReader;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 118
    .restart local v8    # "fName":Ljava/lang/String;
    .restart local v9    # "mapDirection":Ljava/lang/String;
    .restart local v10    # "tableName":Ljava/lang/String;
    .restart local v13    # "codeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :cond_4
    const/4 v15, 0x1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "line":Ljava/lang/String;
    const-string v11, "//"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 120
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, "\t"

    const/4 v15, 0x0

    invoke-direct {v11, v1, v12, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    .local v11, "tok":Ljava/util/StringTokenizer;
    const/4 v12, 0x0

    .line 122
    .local v12, "from":Ljava/lang/String;
    const/16 v16, 0x0

    .line 123
    .local v16, "to":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 124
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v12, v17

    .line 125
    :cond_5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 126
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 127
    .end local v16    # "to":Ljava/lang/String;
    .local v15, "to":Ljava/lang/String;
    :cond_6
    move-object/from16 v15, v16

    if-eqz v12, :cond_7

    if-eqz v15, :cond_7

    .line 128
    invoke-interface {v13, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v1    # "line":Ljava/lang/String;
    .end local v11    # "tok":Ljava/util/StringTokenizer;
    .end local v12    # "from":Ljava/lang/String;
    .end local v15    # "to":Ljava/lang/String;
    :cond_7
    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 132
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 133
    if-eqz v14, :cond_8

    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 134
    :cond_8
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 155
    .end local v2    # "interfaceDirs":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "mapFiles":[Ljava/io/File;
    .end local v5    # "li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "il":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "j":I
    .end local v8    # "fName":Ljava/lang/String;
    .end local v9    # "mapDirection":Ljava/lang/String;
    .end local v10    # "tableName":Ljava/lang/String;
    .end local v13    # "codeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 156
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lca/uhn/hl7v2/HL7Exception;

    .line 157
    const-string v3, "Can\'t read interface code maps from disk"

    .line 156
    invoke-direct {v2, v3, v1}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public throwExceptionIfNoMatch(Z)V
    .locals 0
    .param p1, "throwException"    # Z

    .line 240
    iput-boolean p1, p0, Lca/uhn/hl7v2/util/FileCodeMapper;->throwIfNoMatch:Z

    .line 241
    return-void
.end method
