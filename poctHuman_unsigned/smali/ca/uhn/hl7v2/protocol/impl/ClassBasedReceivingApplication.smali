.class public abstract Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication;
.super Ljava/lang/Object;
.source "ClassBasedReceivingApplication.java"

# interfaces
.implements Lca/uhn/hl7v2/protocol/ReceivingApplication;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lca/uhn/hl7v2/model/Message;",
        ">",
        "Ljava/lang/Object;",
        "Lca/uhn/hl7v2/protocol/ReceivingApplication<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication;, "Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication;->clazz:Ljava/lang/Class;

    .line 43
    return-void
.end method


# virtual methods
.method public canProcess(Lca/uhn/hl7v2/model/Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication;, "Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication<TT;>;"
    .local p1, "theMessage":Lca/uhn/hl7v2/model/Message;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lca/uhn/hl7v2/protocol/impl/ClassBasedReceivingApplication;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
