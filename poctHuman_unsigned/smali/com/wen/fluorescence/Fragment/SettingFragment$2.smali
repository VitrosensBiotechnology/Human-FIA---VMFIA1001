.class Lcom/wen/fluorescence/Fragment/SettingFragment$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingFragment;->setViewIncident()V
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

    .line 175
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .line 178
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment$2;->this$0:Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-static {v0, p2}, Lcom/wen/fluorescence/Fragment/SettingFragment;->access$100(Lcom/wen/fluorescence/Fragment/SettingFragment;I)V

    .line 179
    return-void
.end method
