.class public Lca/uhn/hl7v2/model/GenericPrimitive;
.super Lca/uhn/hl7v2/model/AbstractPrimitive;
.source "GenericPrimitive.java"

# interfaces
.implements Lca/uhn/hl7v2/model/Primitive;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 17
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/AbstractPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
