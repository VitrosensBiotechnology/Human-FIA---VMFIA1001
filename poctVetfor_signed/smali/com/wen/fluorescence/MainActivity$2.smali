.class Lcom/wen/fluorescence/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/MainActivity;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/MainActivity;

    .line 132
    iput-object p1, p0, Lcom/wen/fluorescence/MainActivity$2;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$2;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v0}, Lcom/wen/fluorescence/MainActivity;->access$300(Lcom/wen/fluorescence/MainActivity;)V

    .line 136
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$2;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-static {v0}, Lcom/wen/fluorescence/MainActivity;->access$400(Lcom/wen/fluorescence/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity$2;->this$0:Lcom/wen/fluorescence/MainActivity;

    iget-object v1, v1, Lcom/wen/fluorescence/MainActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method
