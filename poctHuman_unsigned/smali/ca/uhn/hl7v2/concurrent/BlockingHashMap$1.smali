.class Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;
.super Ljava/lang/Object;
.source "BlockingHashMap.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/concurrent/BlockingHashMap;->asyncTake(Ljava/lang/Object;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/concurrent/BlockingHashMap;

.field private final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/concurrent/BlockingHashMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;->this$0:Lca/uhn/hl7v2/concurrent/BlockingHashMap;

    iput-object p2, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;->val$key:Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;->this$0:Lca/uhn/hl7v2/concurrent/BlockingHashMap;

    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->take(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
