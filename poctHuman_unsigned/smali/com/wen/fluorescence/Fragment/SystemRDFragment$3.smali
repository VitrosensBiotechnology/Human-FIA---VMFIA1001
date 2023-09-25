.class Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;
.super Ljava/lang/Object;
.source "SystemRDFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SystemRDFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    .line 184
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 187
    const v0, 0x7f08015e

    if-ne p2, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "MAC_Type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setIntData(Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "MAC_Type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->setIntData(Ljava/lang/String;I)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemRDFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;->access$1000(Lcom/wen/fluorescence/Fragment/SystemRDFragment;)V

    .line 193
    return-void
.end method
