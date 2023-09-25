.class Lcom/wen/fluorescence/Fragment/SettingFragment$3;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/Fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingFragment;

    .line 185
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .line 188
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08005c

    if-eq v0, v1, :cond_1

    const v1, 0x7f080072

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->access$200(Lcom/wen/fluorescence/Fragment/SettingFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    .line 192
    nop

    .line 197
    :goto_0
    return-void
.end method
