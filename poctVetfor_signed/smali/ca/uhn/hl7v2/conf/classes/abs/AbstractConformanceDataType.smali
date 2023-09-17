.class public abstract Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;
.super Ljava/lang/Object;
.source "AbstractConformanceDataType.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private hapiPrimitive:Lca/uhn/hl7v2/model/Primitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/model/Primitive;)V
    .locals 3
    .param p1, "hapiPrimitive"    # Lca/uhn/hl7v2/model/Primitive;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->hapiPrimitive:Lca/uhn/hl7v2/model/Primitive;

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->getConstantValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->getConstantValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;
    sget-object v1, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not enforce constant value."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getConstantValue()Ljava/lang/String;
.end method

.method public abstract getMaxLength()J
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->getMaxLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->getMaxLength()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 88
    new-instance v0, Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;

    const-string v1, "DataType length exceeds the Maximum allowable length"

    invoke-direct {v0, v1}, Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lca/uhn/hl7v2/conf/classes/abs/AbstractConformanceDataType;->hapiPrimitive:Lca/uhn/hl7v2/model/Primitive;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/model/Primitive;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lca/uhn/hl7v2/model/DataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lca/uhn/hl7v2/model/DataTypeException;
    new-instance v1, Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;

    const-string v2, "Invalid Data Populated"

    invoke-direct {v1, v2}, Lca/uhn/hl7v2/conf/classes/exceptions/ConfDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
