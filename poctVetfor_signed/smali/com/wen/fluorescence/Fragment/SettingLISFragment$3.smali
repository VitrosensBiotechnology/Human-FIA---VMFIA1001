.class Lcom/wen/fluorescence/Fragment/SettingLISFragment$3;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "SettingLISFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingLISFragment;->setViewIncident()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 231
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .line 234
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-static {v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->access$700(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    .line 236
    return-void
.end method
