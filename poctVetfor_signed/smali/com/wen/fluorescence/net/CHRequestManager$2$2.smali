.class Lcom/wen/fluorescence/net/CHRequestManager$2$2;
.super Ljava/lang/Object;
.source "CHRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/CHRequestManager$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/net/CHRequestManager$2;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CHRequestManager$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/net/CHRequestManager$2;

    .line 284
    iput-object p1, p0, Lcom/wen/fluorescence/net/CHRequestManager$2$2;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$2;

    iput-object p2, p0, Lcom/wen/fluorescence/net/CHRequestManager$2$2;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/wen/fluorescence/net/CHRequestManager$2$2;->val$json:Ljava/lang/String;

    iget-object v1, p0, Lcom/wen/fluorescence/net/CHRequestManager$2$2;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$2;

    iget-object v1, v1, Lcom/wen/fluorescence/net/CHRequestManager$2;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    invoke-static {v0, v1}, Lcom/wen/fluorescence/net/CHRequestManager;->access$100(Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 288
    return-void
.end method
