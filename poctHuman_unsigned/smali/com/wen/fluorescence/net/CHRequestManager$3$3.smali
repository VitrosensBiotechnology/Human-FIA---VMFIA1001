.class Lcom/wen/fluorescence/net/CHRequestManager$3$3;
.super Ljava/lang/Object;
.source "CHRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/net/CHRequestManager$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/net/CHRequestManager$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/net/CHRequestManager$3;

    .line 366
    iput-object p1, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$3;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$3;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

    iget-object v0, v0, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$callBack:Lcom/wen/fluorescence/net/CallBack;

    iget-object v1, p0, Lcom/wen/fluorescence/net/CHRequestManager$3$3;->this$0:Lcom/wen/fluorescence/net/CHRequestManager$3;

    iget-object v1, v1, Lcom/wen/fluorescence/net/CHRequestManager$3;->val$barCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/wen/fluorescence/net/CallBack;->onSuccess(Ljava/lang/Object;)V

    .line 370
    return-void
.end method
