.class public abstract Lca/uhn/hl7v2/conf/store/AbstractCodeStore;
.super Ljava/lang/Object;
.source "AbstractCodeStore.java"

# interfaces
.implements Lca/uhn/hl7v2/conf/store/CodeStore;


# static fields
.field private static final WILDCARDS:[Lca/uhn/hl7v2/conf/store/RegisteredPattern;

.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    const-class v0, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->log:Lorg/slf4j/Logger;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    .line 19
    new-instance v1, Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    const-string v2, "ISOnnnn"

    const-string v3, "ISO\\d\\d\\d\\d"

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/conf/store/RegisteredPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    const-string v2, "HL7nnnn"

    const-string v3, "HL7\\d\\d\\d\\d"

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/conf/store/RegisteredPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 21
    new-instance v1, Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    const-string v2, "99zzz"

    const-string v3, "99[\\w]*"

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/conf/store/RegisteredPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    const-string v2, "NNxxx"

    const-string v3, "99[\\w]*"

    invoke-direct {v1, v2, v3}, Lca/uhn/hl7v2/conf/store/RegisteredPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    sput-object v0, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->WILDCARDS:[Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_4

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    sget-object v0, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->WILDCARDS:[Lca/uhn/hl7v2/conf/store/RegisteredPattern;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v0, v4

    .line 61
    .local v5, "wildcard":Lca/uhn/hl7v2/conf/store/RegisteredPattern;
    invoke-virtual {v5, p2, p1}, Lca/uhn/hl7v2/conf/store/RegisteredPattern;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    return v1

    .line 60
    .end local v5    # "wildcard":Lca/uhn/hl7v2/conf/store/RegisteredPattern;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_4
    :goto_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v0, p2, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .local v0, "tok":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_6

    .line 59
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    nop

    .line 66
    :goto_2
    return v2

    .line 55
    .restart local v0    # "tok":Ljava/util/StringTokenizer;
    :cond_6
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "t":Ljava/lang/String;
    const-string v4, "or"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, p1, v3}, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->checkCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 57
    return v1
.end method


# virtual methods
.method public isValidCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "codeSystem"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->getValidCodes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 33
    return v0

    .line 30
    :cond_0
    aget-object v4, v1, v3

    .line 31
    .local v4, "validCode":Ljava/lang/String;
    invoke-direct {p0, p2, v4}, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->checkCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    .line 30
    .end local v4    # "validCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lca/uhn/hl7v2/conf/store/AbstractCodeStore;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error checking code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in code system "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return v0
.end method
