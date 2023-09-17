.class Lcom/wen/fluorescence/net/RequestManager$5$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/RequestManager$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/net/RequestManager$5;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/RequestManager$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/net/RequestManager$5;

    .line 377
    iput-object p1, p0, Lcom/wen/fluorescence/net/RequestManager$5$2;->this$0:Lcom/wen/fluorescence/net/RequestManager$5;

    iput-object p2, p0, Lcom/wen/fluorescence/net/RequestManager$5$2;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/wen/fluorescence/net/RequestManager$5$2;->this$0:Lcom/wen/fluorescence/net/RequestManager$5;

    iget-object v0, v0, Lcom/wen/fluorescence/net/RequestManager$5;->val$AppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/wen/fluorescence/net/RequestManager$5$2;->val$json:Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/net/RequestManager$5$2;->this$0:Lcom/wen/fluorescence/net/RequestManager$5;

    iget-object v2, v2, Lcom/wen/fluorescence/net/RequestManager$5;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/net/RequestManager;->access$300(Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 381
    return-void
.end method
