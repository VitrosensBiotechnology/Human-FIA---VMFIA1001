.class Lcom/wen/fluorescence/Fragment/AccountFragment$1;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/AccountFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/AccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/AccountFragment;

    .line 141
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .line 144
    const v0, 0x7f080181

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p2, v0, :cond_1

    const v0, 0x7f080189

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$000(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$100(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$000(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/AccountFragment$1;->this$0:Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/AccountFragment;->access$100(Lcom/wen/fluorescence/Fragment/AccountFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    nop

    .line 154
    :goto_0
    return-void
.end method
