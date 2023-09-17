.class public abstract Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;
.super Ljava/lang/Object;
.source "IDGenerator.java"

# interfaces
.implements Lca/uhn/hl7v2/util/idgenerator/IDGenerator$Ordered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/idgenerator/IDGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OrderedSupport"
.end annotation


# instance fields
.field private increment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;-><init>(I)V

    .line 85
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;->increment:I

    .line 80
    iput p1, p0, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;->increment:I

    .line 81
    return-void
.end method


# virtual methods
.method public getIncrement()I
    .locals 1

    .line 91
    iget v0, p0, Lca/uhn/hl7v2/util/idgenerator/IDGenerator$OrderedSupport;->increment:I

    return v0
.end method

.method public reset()V
    .locals 0

    .line 88
    return-void
.end method
