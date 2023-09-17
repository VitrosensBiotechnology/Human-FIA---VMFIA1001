.class Lcom/wen/fluorescence/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/LoginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/LoginActivity;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/LoginActivity;

    .line 78
    iput-object p1, p0, Lcom/wen/fluorescence/LoginActivity$1;->this$0:Lcom/wen/fluorescence/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/LoginActivity$1;->this$0:Lcom/wen/fluorescence/LoginActivity;

    invoke-static {v0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/database/DBManager;->updateItemForPreSet()V

    .line 82
    return-void
.end method
