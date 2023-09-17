.class Lcom/wen/fluorescence/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/MainActivity;->determineTime()V
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

    .line 158
    iput-object p1, p0, Lcom/wen/fluorescence/MainActivity$3;->this$0:Lcom/wen/fluorescence/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 0

    .line 167
    return-void
.end method

.method public okListener()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity$3;->this$0:Lcom/wen/fluorescence/MainActivity;

    const v1, 0x7f08007c

    invoke-static {v0, v1}, Lcom/wen/fluorescence/MainActivity;->access$500(Lcom/wen/fluorescence/MainActivity;I)V

    .line 162
    return-void
.end method
