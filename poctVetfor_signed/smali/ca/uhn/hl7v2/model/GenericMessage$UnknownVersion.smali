.class public Lca/uhn/hl7v2/model/GenericMessage$UnknownVersion;
.super Lca/uhn/hl7v2/model/GenericMessage;
.source "GenericMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/model/GenericMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownVersion"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x423e67d9d83e5ba4L


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V
    .locals 0
    .param p1, "factory"    # Lca/uhn/hl7v2/parser/ModelClassFactory;

    .line 68
    invoke-direct {p0, p1}, Lca/uhn/hl7v2/model/GenericMessage;-><init>(Lca/uhn/hl7v2/parser/ModelClassFactory;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lca/uhn/hl7v2/Version;->latestVersion()Lca/uhn/hl7v2/Version;

    move-result-object v0

    invoke-virtual {v0}, Lca/uhn/hl7v2/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
