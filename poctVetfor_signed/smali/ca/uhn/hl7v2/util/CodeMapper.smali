.class public abstract Lca/uhn/hl7v2/util/CodeMapper;
.super Ljava/lang/Object;
.source "CodeMapper.java"


# static fields
.field private static codeMapper:Lca/uhn/hl7v2/util/CodeMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lca/uhn/hl7v2/util/CodeMapper;->codeMapper:Lca/uhn/hl7v2/util/CodeMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lca/uhn/hl7v2/util/CodeMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    const-class v0, Lca/uhn/hl7v2/util/CodeMapper;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lca/uhn/hl7v2/util/CodeMapper;->codeMapper:Lca/uhn/hl7v2/util/CodeMapper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lca/uhn/hl7v2/util/FileCodeMapper;

    invoke-direct {v1}, Lca/uhn/hl7v2/util/FileCodeMapper;-><init>()V

    sput-object v1, Lca/uhn/hl7v2/util/CodeMapper;->codeMapper:Lca/uhn/hl7v2/util/CodeMapper;

    .line 27
    :cond_0
    sget-object v1, Lca/uhn/hl7v2/util/CodeMapper;->codeMapper:Lca/uhn/hl7v2/util/CodeMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInt(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "hl7Table"    # I
    .param p2, "localCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 43
    invoke-static {}, Lca/uhn/hl7v2/util/CodeMapper;->getInstance()Lca/uhn/hl7v2/util/CodeMapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lca/uhn/hl7v2/util/CodeMapper;->getInterfaceCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocal(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "hl7Table"    # I
    .param p2, "interfaceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation

    .line 35
    invoke-static {}, Lca/uhn/hl7v2/util/CodeMapper;->getInstance()Lca/uhn/hl7v2/util/CodeMapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lca/uhn/hl7v2/util/CodeMapper;->getLocalCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getInterfaceCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract getLocalCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract refreshCache()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/HL7Exception;
        }
    .end annotation
.end method

.method public abstract throwExceptionIfNoMatch(Z)V
.end method
