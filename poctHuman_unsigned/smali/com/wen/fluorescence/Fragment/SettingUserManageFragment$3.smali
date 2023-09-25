.class Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;
.super Ljava/lang/Object;
.source "SettingUserManageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;->addUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    .line 197
    iput-object p1, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;->this$0:Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    iput-object p2, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    return-void
.end method
