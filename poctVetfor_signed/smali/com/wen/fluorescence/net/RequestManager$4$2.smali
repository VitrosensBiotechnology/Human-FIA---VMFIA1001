.class Lcom/wen/fluorescence/net/RequestManager$4$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/RequestManager$4;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/net/RequestManager$4;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/RequestManager$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/net/RequestManager$4;

    .line 292
    iput-object p1, p0, Lcom/wen/fluorescence/net/RequestManager$4$2;->this$0:Lcom/wen/fluorescence/net/RequestManager$4;

    iput-object p2, p0, Lcom/wen/fluorescence/net/RequestManager$4$2;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/wen/fluorescence/net/RequestManager$4$2;->val$json:Ljava/lang/String;

    iget-object v1, p0, Lcom/wen/fluorescence/net/RequestManager$4$2;->this$0:Lcom/wen/fluorescence/net/RequestManager$4;

    iget-object v1, v1, Lcom/wen/fluorescence/net/RequestManager$4;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/net/RequestManager;->access$200(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 296
    return-void
.end method
