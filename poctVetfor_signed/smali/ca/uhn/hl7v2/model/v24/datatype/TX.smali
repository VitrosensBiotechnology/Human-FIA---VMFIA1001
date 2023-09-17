.class public Lca/uhn/hl7v2/model/v24/datatype/TX;
.super Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;
.source "TX.java"


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/model/Message;)V
    .locals 0
    .param p1, "message"    # Lca/uhn/hl7v2/model/Message;

    .line 11
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/primitive/AbstractTextPrimitive;-><init>(Lca/uhn/hl7v2/model/Message;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, "2.4"

    return-object v0
.end method
