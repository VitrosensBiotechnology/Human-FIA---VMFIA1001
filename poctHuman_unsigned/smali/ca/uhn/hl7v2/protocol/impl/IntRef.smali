.class public Lca/uhn/hl7v2/protocol/impl/IntRef;
.super Ljava/lang/Object;
.source "IntRef.java"


# instance fields
.field private myValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lca/uhn/hl7v2/protocol/impl/IntRef;->myValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "theValue"    # I

    .line 57
    iput p1, p0, Lca/uhn/hl7v2/protocol/impl/IntRef;->myValue:I

    .line 58
    return-void
.end method
