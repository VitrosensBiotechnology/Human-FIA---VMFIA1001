.class public Lca/uhn/hl7v2/model/GenericMessage$V25;
.super Lca/uhn/hl7v2/model/GenericMessage;
.source "GenericMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/GenericMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V25"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36a33753e273550bL


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 119
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/GenericMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lca/uhn/hl7v2/Version;->V25:Lca/uhn/hl7v2/Version;

    invoke-virtual {v0}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
