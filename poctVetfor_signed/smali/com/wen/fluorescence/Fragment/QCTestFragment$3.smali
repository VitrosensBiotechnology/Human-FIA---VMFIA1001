.class Lcom/wen/fluorescence/Fragment/QCTestFragment$3;
.super Ljava/lang/Object;
.source "QCTestFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/QCTestFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/QCTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/QCTestFragment;

    .line 254
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .line 257
    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/QCTestFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/QCTestFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/QCTestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "STANDARD_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setBooleanData(Ljava/lang/String;Z)V

    .line 260
    :cond_0
    return-void
.end method
