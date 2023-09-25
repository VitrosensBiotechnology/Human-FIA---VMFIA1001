.class Lcom/wen/fluorescence/Fragment/HomeFragment$17;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/util/MyDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/HomeFragment;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/HomeFragment;

    .line 987
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$17;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelListener()V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$17;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 996
    return-void
.end method

.method public okListener()V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/HomeFragment$17;->this$0:Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/HomeFragment;->access$400(Lcom/wen/fluorescence/Fragment/HomeFragment;)V

    .line 991
    return-void
.end method
