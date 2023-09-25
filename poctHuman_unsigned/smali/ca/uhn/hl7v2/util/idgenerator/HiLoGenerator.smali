.class public abstract Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;
.super Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;
.source "HiLoGenerator.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private base:I

.field private lo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 43
    sput-object v0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->LOG:Lorg/slf4j/Logger;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    .line 41
    return-void
.end method

.method private nextBase()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->getNextHiId()I

    move-result v0

    .line 63
    .local v0, "base":I
    const/4 v1, 0x0

    iput v1, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    .line 64
    return v0
.end method


# virtual methods
.method public declared-synchronized getID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    if-gez v0, :cond_0

    .line 51
    sget-object v0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Obtain next hi ID"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->nextBase()I

    move-result v0

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->getNextLoId()I

    move-result v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->getMaxLo()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 55
    sget-object v0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Obtain next hi ID"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->nextBase()I

    move-result v0

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    .line 58
    :cond_1
    iget v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    iget v1, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getMaxLo()I
.end method

.method protected abstract getNextHiId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getNextLoId()I
    .locals 1

    .line 84
    iget v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->lo:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->base:I

    .line 93
    invoke-virtual {p0}, Lca/uhn/hl7v2/util/idgenerator/HiLoGenerator;->resetHiId()V

    .line 94
    return-void
.end method

.method protected abstract resetHiId()V
.end method
