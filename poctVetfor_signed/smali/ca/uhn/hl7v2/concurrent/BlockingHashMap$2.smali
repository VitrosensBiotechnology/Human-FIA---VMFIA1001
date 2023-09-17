.class Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;
.super Ljava/lang/Object;
.source "BlockingHashMap.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/concurrent/BlockingHashMap;->asyncPoll(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
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

.field private final synthetic val$timeout:J

.field private final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/concurrent/BlockingHashMap;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->this$0:Lca/uhn/hl7v2/concurrent/BlockingHashMap;

    iput-object p2, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$key:Ljava/lang/Object;

    iput-wide p3, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$timeout:J

    iput-object p5, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$unit:Ljava/util/concurrent/TimeUnit;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
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

    .line 120
    iget-object v0, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->this$0:Lca/uhn/hl7v2/concurrent/BlockingHashMap;

    iget-object v1, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$key:Ljava/lang/Object;

    iget-wide v2, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$timeout:J

    iget-object v4, p0, Lca/uhn/hl7v2/concurrent/BlockingHashMap$2;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lca/uhn/hl7v2/concurrent/BlockingHashMap;->poll(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
