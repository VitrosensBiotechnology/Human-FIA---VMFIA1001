.class public Lca/uhn/hl7v2/parser/DefaultModelClassFactory;
.super Lca/uhn/hl7v2/parser/AbstractModelClassFactory;
.source "DefaultModelClassFactory.java"


# static fields
.field static final CUSTOM_PACKAGES_RESOURCE_NAME_TEMPLATE:Ljava/lang/String; = "custom_packages/{0}"

.field private static final log:Lorg/slf4j/Logger;

.field private static ourVersions:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->packages:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    .line 65
    invoke-static {}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->reloadPackages()V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;-><init>()V

    return-void
.end method

.method private static findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lca/uhn/hl7v2/parser/Parser;->assertVersionExists(Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->packageList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "packageList":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 313
    return-object v1

    .line 317
    :cond_0
    const-string v2, "message|group|segment|datatype"

    .line 318
    .local v2, "types":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t find "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v4, " -- type must be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-direct {v1, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_1
    const/4 v3, 0x0

    .line 324
    .local v3, "compClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 325
    .local v4, "c":I
    :goto_0
    if-nez v3, :cond_6

    array-length v5, v0

    if-lt v4, v5, :cond_2

    goto :goto_2

    .line 326
    :cond_2
    move-object v5, v1

    .line 328
    .local v5, "classNameToTry":Ljava/lang/String;
    :try_start_0
    aget-object v6, v0, v4

    .line 329
    .local v6, "p":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 331
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 333
    sget-object v7, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 334
    sget-object v7, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v8, "Trying to load: {}"

    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :cond_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 337
    sget-object v7, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 338
    sget-object v7, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v8, "Loaded: {} class: {}"

    invoke-interface {v7, v8, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v6    # "p":Ljava/lang/String;
    goto :goto_1

    .line 341
    :catch_0
    move-exception v6

    .line 342
    .local v6, "cne":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v8, "Failed to load: {}"

    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    .end local v6    # "cne":Ljava/lang/ClassNotFoundException;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 345
    .end local v5    # "classNameToTry":Ljava/lang/String;
    goto :goto_0

    .line 347
    :cond_6
    :goto_2
    return-object v3
.end method

.method private static findClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 156
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "classNameToTry":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    sget-object v2, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", using default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :cond_1
    invoke-static {p0, p1, p2}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 157
    .end local v0    # "classNameToTry":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getHighestKnownVersion()Ljava/lang/String;
    .locals 2

    .line 382
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    sget-object v1, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 383
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVersionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getVersionPackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "packg":Ljava/lang/String;
    const/16 v3, 0x5c

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v2    # "packg":Ljava/lang/String;
    .local v1, "packg":Ljava/lang/String;
    return-object v1
.end method

.method public static getVersionPackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    .line 186
    .local v0, "v":Lca/uhn/hl7v2/Version;
    if-nez v0, :cond_0

    .line 187
    new-instance v1, Lca/uhn/hl7v2/HL7Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The HL7 version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lca/uhn/hl7v2/ErrorCode;->UNSUPPORTED_VERSION_ID:Lca/uhn/hl7v2/ErrorCode;

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/String;Lca/uhn/hl7v2/ErrorCode;)V

    throw v1

    .line 189
    :cond_0
    invoke-virtual {v0}, Lca/uhn/hl7v2/Version;->modelPackageName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "pkg":Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static loadPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 261
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v1, "custom_packages/{0}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    nop

    .line 263
    .local v1, "customPackagesResourceName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 265
    .local v2, "resourceInputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 268
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_0

    .line 278
    .end local v5    # "line":Ljava/lang/String;
    nop

    .line 281
    if-eqz v4, :cond_3

    .line 283
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :goto_1
    goto :goto_4

    :catch_0
    move-exception v5

    .line 285
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v6, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 273
    .local v5, "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    sget-object v6, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v7, "Adding package to user-defined package list: {}"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 280
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 278
    :catch_1
    move-exception v5

    .line 279
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v6, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v7, "Can\'t load all the custom package list - user-defined classes may not be recognized"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_3

    .line 283
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 284
    :catch_2
    move-exception v5

    .line 285
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v6, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 280
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 281
    if-eqz v4, :cond_1

    .line 283
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 284
    goto :goto_3

    :catch_3
    move-exception v5

    .line 285
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Lca/uhn/hl7v2/HL7Exception;

    invoke-direct {v6, v5}, Lca/uhn/hl7v2/HL7Exception;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 288
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v5

    .line 292
    .end local v4    # "in":Ljava/io/BufferedReader;
    :cond_2
    sget-object v4, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "No user-defined packages for version {}"

    invoke-interface {v4, v5, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_3
    :goto_4
    invoke-static {p0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getVersionPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static packageList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 250
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->packages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static reloadPackages()V
    .locals 7

    .line 357
    sget-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    .line 359
    invoke-static {}, Lca/uhn/hl7v2/Version;->values()[Lca/uhn/hl7v2/Version;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 370
    return-void

    .line 359
    :cond_0
    aget-object v3, v0, v1

    .line 361
    .local v3, "v":Lca/uhn/hl7v2/Version;
    :try_start_0
    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->loadPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "versionPackages":[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_1

    .line 363
    sget-object v5, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->ourVersions:Ljava/util/List;

    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_1
    sget-object v5, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->packages:Ljava/util/Map;

    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lca/uhn/hl7v2/HL7Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v4    # "versionPackages":[Ljava/lang/String;
    nop

    .line 359
    .end local v3    # "v":Lca/uhn/hl7v2/Version;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .restart local v3    # "v":Lca/uhn/hl7v2/Version;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Lca/uhn/hl7v2/HL7Exception;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Version \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is invalid. This is a programming error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getGroupClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 110
    const-string v0, "group"

    invoke-static {p1, p2, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 96
    if-nez p3, :cond_0

    .line 97
    invoke-static {p2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_0
    const-string v0, "message"

    invoke-static {p1, p2, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "mc":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-nez v0, :cond_1

    .line 101
    invoke-static {p2}, Lca/uhn/hl7v2/model/GenericMessage;->getGenericMessageClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    :cond_1
    return-object v0
.end method

.method public getMessageClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .param p3, "isExplicit"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 141
    if-nez p3, :cond_0

    .line 142
    invoke-static {p2}, Lca/uhn/hl7v2/Version;->versionOf(Ljava/lang/String;)Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_0
    const-string v0, "message"

    invoke-static {p1, p2, v0, p4}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClassInASpecificPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    .local v0, "mc":Ljava/lang/Class;, "Ljava/lang/Class<+Lca/uhn/hl7v2/model/Message;>;"
    if-nez v0, :cond_1

    .line 147
    invoke-static {p2}, Lca/uhn/hl7v2/model/GenericMessage;->getGenericMessageClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    :cond_1
    return-object v0
.end method

.method public getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lca/uhn/hl7v2/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 395
    invoke-super {p0, p1, p2}, Lca/uhn/hl7v2/parser/AbstractModelClassFactory;->getMessageStructureForEvent(Ljava/lang/String;Lca/uhn/hl7v2/Version;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "structure":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public getSegmentClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 118
    const-string v0, "segment"

    invoke-static {p1, p2, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getTypeClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lca/uhn/hl7v2/model/Type;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 126
    const-string v0, "datatype"

    invoke-static {p1, p2, v0}, Lca/uhn/hl7v2/parser/DefaultModelClassFactory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
