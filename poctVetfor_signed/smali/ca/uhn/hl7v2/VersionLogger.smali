.class public Lca/uhn/hl7v2/VersionLogger;
.super Ljava/lang/Object;
.source "VersionLogger.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static ourInitialized:Z

.field private static ourVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lca/uhn/hl7v2/VersionLogger;->ourInitialized:Z

    .line 20
    const-class v0, Lca/uhn/hl7v2/VersionLogger;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static checkDOMImplementation()V
    .locals 3

    .line 44
    :try_start_0
    invoke-static {}, Lca/uhn/hl7v2/util/XMLUtils;->getDOMImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DOMImplementation;

    .line 45
    .local v0, "impl":Lorg/w3c/dom/DOMImplementation;
    if-nez v0, :cond_0

    .line 46
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "DOM Level 3 (Load and Save) is NOT supported by the XML library found first on your classpath!"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 47
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "XML parsing and encoding as well as working with Conformance Profiles will fail."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "impl":Lorg/w3c/dom/DOMImplementation;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error occured while trying to retrieve a DOMImplementation."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "XML parsing and encoding as well as working with Conformance Profiles will fail."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static checkStructureLibraries()V
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lca/uhn/hl7v2/Version;->availableVersions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 63
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "No HL7 structure libraries found on the classpath!"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Default Structure libraries found for HL7 versions {}"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :goto_1
    return-void

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/Version;

    .line 59
    .local v2, "v":Lca/uhn/hl7v2/Version;
    invoke-virtual {v2}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .end local v2    # "v":Lca/uhn/hl7v2/Version;
    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lca/uhn/hl7v2/VersionLogger;->ourVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 33
    sget-boolean v0, Lca/uhn/hl7v2/VersionLogger;->ourInitialized:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->printHapiVersion()V

    .line 35
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->checkStructureLibraries()V

    .line 36
    invoke-static {}, Lca/uhn/hl7v2/VersionLogger;->checkDOMImplementation()V

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lca/uhn/hl7v2/VersionLogger;->ourInitialized:Z

    .line 39
    :cond_0
    return-void
.end method

.method private static printHapiVersion()V
    .locals 4

    .line 70
    const/4 v0, 0x0

    .line 76
    .local v0, "is":Ljava/io/InputStream;
    const-string v1, "2.2"

    sput-object v1, Lca/uhn/hl7v2/VersionLogger;->ourVersion:Ljava/lang/String;

    .line 77
    sget-object v1, Lca/uhn/hl7v2/VersionLogger;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HAPI version is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lca/uhn/hl7v2/VersionLogger;->ourVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 89
    return-void
.end method
