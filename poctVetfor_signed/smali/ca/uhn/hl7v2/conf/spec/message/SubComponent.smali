.class public Lca/uhn/hl7v2/conf/spec/message/SubComponent;
.super Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;
.source "SubComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lca/uhn/hl7v2/conf/spec/message/AbstractComponent<",
        "Lca/uhn/hl7v2/conf/spec/message/SubComponent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/spec/message/AbstractComponent;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getChildrenAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
