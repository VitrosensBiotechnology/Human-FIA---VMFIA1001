.class public Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemMaintainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;
    }
.end annotation


# instance fields
.field private Path_Ethernet:Ljava/lang/String;

.field private Path_Setting:Ljava/lang/String;

.field private appEthernetCLS:Ljava/lang/String;

.field private appEthernetPKG:Ljava/lang/String;

.field private appSetCLS:Ljava/lang/String;

.field private appSetPKG:Ljava/lang/String;

.field private btnEthernetSettings:Landroid/widget/Button;

.field private btnFirmUpdate:Landroid/widget/Button;

.field private btnLogout:Landroid/widget/Button;

.field private btnNetUpdate:Landroid/widget/Button;

.field private btnSettings:Landroid/widget/Button;

.field private btnSoftUpdate:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private etPassWord:Landroid/widget/EditText;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private final pwdHight:Ljava/lang/String;

.field private final pwdRD:Ljava/lang/String;

.field private final pwdReaset:Ljava/lang/String;

.field private final pwdUpdate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetPKG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetCLS:Ljava/lang/String;

    .line 61
    const-string v0, "com.android.settings.Settings"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->Path_Setting:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetPKG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetCLS:Ljava/lang/String;

    .line 63
    const-string v0, "com.example.ethernet.MainActivity"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->Path_Ethernet:Ljava/lang/String;

    .line 65
    const-string v0, "123456"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->pwdHight:Ljava/lang/String;

    .line 66
    const-string v0, "666666"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->pwdRD:Ljava/lang/String;

    .line 67
    const-string v0, "up"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->pwdUpdate:Ljava/lang/String;

    .line 68
    const-string v0, "reset"

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->pwdReaset:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->setSoftWareUpgrading()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->gotoSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->setFirmWareUpgrading()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->showYRGoodsDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;
    .param p1, "x1"    # Lcom/wen/fluorescence/util/MyDialogInterface;

    .line 54
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->gotoEthernetSetting()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->logOut()V

    return-void
.end method

.method private byte4ToInt([B)I
    .locals 2
    .param p1, "b"    # [B

    .line 404
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private enterMode()V
    .locals 5

    .line 501
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;

    .line 502
    .local v0, "otherCallback":Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->etPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "pwd":Ljava/lang/String;
    const-string v2, "123456"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;->setUpAdvanced()V

    goto :goto_0

    .line 505
    :cond_0
    const-string v2, "666666"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-interface {v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;->setUpRD()V

    goto :goto_0

    .line 507
    :cond_1
    const-string v2, "up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/download/UpdateManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/download/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/download/UpdateManager;->startUpdateConfig()V

    goto :goto_0

    .line 509
    :cond_2
    const-string v2, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0186

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;

    invoke-direct {v4, p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$9;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    invoke-static {v2, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    goto :goto_0

    .line 525
    :cond_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01d5

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 527
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->etPassWord:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method

.method private gotoEthernetSetting()V
    .locals 4

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetPKG:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetPKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetCLS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v0, "componet":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetPKG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetCLS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->startActivity(Landroid/content/Intent;)V

    .line 488
    .end local v0    # "componet":Landroid/content/ComponentName;
    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Error!"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    goto :goto_1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 493
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private gotoSetting()V
    .locals 4

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetPKG:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetPKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetCLS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v0, "componet":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetPKG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetCLS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->startActivity(Landroid/content/Intent;)V

    .line 467
    .end local v0    # "componet":Landroid/content/ComponentName;
    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Error!"

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    goto :goto_1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 472
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 80
    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSoftUpdate:Landroid/widget/Button;

    .line 81
    const v0, 0x7f080051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnFirmUpdate:Landroid/widget/Button;

    .line 82
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSettings:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0800dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->etPassWord:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSure:Landroid/widget/Button;

    .line 85
    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnNetUpdate:Landroid/widget/Button;

    .line 86
    const v0, 0x7f08004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnEthernetSettings:Landroid/widget/Button;

    .line 87
    const v0, 0x7f08005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnLogout:Landroid/widget/Button;

    .line 88
    return-void
.end method

.method private logOut()V
    .locals 3

    .line 289
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;)V

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 302
    return-void
.end method

.method private setFirmWareUpgrading()V
    .locals 25

    .line 309
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "names":[Ljava/lang/String;
    const v3, 0x7f0c016b

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 312
    return-void

    .line 314
    :cond_0
    const-string v5, ""

    .line 315
    .local v5, "fileName":Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v10, v2, v8

    .line 316
    .local v10, "s":Ljava/lang/String;
    const-string v11, "Easy11_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CHF200_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v11, 0x1

    .line 317
    .local v11, "a":Z
    :goto_2
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v12

    .line 318
    .local v12, "b":Z
    const-string v13, ".bin"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 319
    .local v13, "c":Z
    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    .line 320
    move-object v5, v10

    .line 321
    const-string v7, "as"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "......fileName:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    goto :goto_3

    .line 315
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "a":Z
    .end local v12    # "b":Z
    .end local v13    # "c":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 326
    :cond_4
    :goto_3
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_5

    .line 327
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    return-void

    .line 398
    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v5

    .line 398
    .end local v2    # "names":[Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .local v18, "names":[Ljava/lang/String;
    .local v20, "fileName":Ljava/lang/String;
    :goto_4
    move-object v2, v0

    goto/16 :goto_7

    .line 330
    .end local v18    # "names":[Ljava/lang/String;
    .end local v20    # "fileName":Ljava/lang/String;
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v8, :cond_6

    .line 332
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 333
    return-void

    .line 335
    :cond_6
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 336
    .local v3, "in":Ljava/io/InputStream;
    const/4 v8, 0x4

    new-array v8, v8, [B

    .line 337
    .local v8, "tempInt":[B
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 338
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v10

    .line 339
    .local v10, "c":I
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 340
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v11

    .line 341
    .local v11, "h":I
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 342
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v12

    .line 343
    .local v12, "y":I
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 344
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v13

    .line 346
    .local v13, "l":I
    const/16 v14, 0x43

    if-ne v10, v14, :cond_a

    const/16 v14, 0x48

    if-ne v11, v14, :cond_a

    const/16 v14, 0x59

    if-ne v12, v14, :cond_a

    const/16 v14, 0x4c

    if-eq v13, v14, :cond_7

    .line 347
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v24, v7

    goto/16 :goto_6

    .line 351
    :cond_7
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 352
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v14

    .line 353
    .local v14, "iLen":I
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 354
    invoke-direct {v1, v8}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->byte4ToInt([B)I

    move-result v15

    .line 356
    .local v15, "iV":I
    new-array v4, v14, [B

    .line 357
    .local v4, "fileData":[B
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 359
    const/4 v9, 0x2

    new-array v9, v9, [B

    .line 360
    .local v9, "fileCRC":[B
    invoke-virtual {v3, v9}, Ljava/io/InputStream;->read([B)I

    .line 362
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 364
    invoke-static {v4}, Lcom/wen/fluorescence/util/CRC16;->GetCRC16([B)I

    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v17, v16

    .line 365
    .local v17, "crcCal":I
    move-object/from16 v18, v2

    move/from16 v6, v17

    shr-int/lit8 v2, v6, 0x8

    .line 365
    .end local v2    # "names":[Ljava/lang/String;
    .end local v17    # "crcCal":I
    .local v6, "crcCal":I
    .restart local v18    # "names":[Ljava/lang/String;
    int-to-byte v2, v2

    .line 366
    .local v2, "crcHight":B
    move-object/from16 v19, v3

    int-to-byte v3, v6

    .line 367
    .local v3, "crcLow":B
    .local v19, "in":Ljava/io/InputStream;
    move-object/from16 v20, v5

    const/16 v16, 0x0

    :try_start_5
    aget-byte v5, v9, v16

    .line 367
    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v20    # "fileName":Ljava/lang/String;
    if-ne v2, v5, :cond_9

    const/4 v5, 0x1

    aget-byte v5, v9, v5

    if-eq v3, v5, :cond_8

    .line 368
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v6

    move-object/from16 v24, v7

    goto/16 :goto_5

    .line 372
    :cond_8
    const-string v5, "V"

    .line 373
    .local v5, "strFirmWareVersion":Ljava/lang/String;
    move/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 373
    .end local v2    # "crcHight":B
    .local v21, "crcHight":B
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v3

    shr-int/lit8 v3, v15, 0x18

    .line 373
    .end local v3    # "crcLow":B
    .local v22, "crcLow":B
    int-to-byte v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .end local v5    # "strFirmWareVersion":Ljava/lang/String;
    .local v2, "strFirmWareVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v15, 0x10

    int-to-byte v5, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v15, 0x8

    int-to-byte v5, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v5, v15

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 377
    new-instance v3, Lcom/wen/fluorescence/bean/Version;

    invoke-direct {v3}, Lcom/wen/fluorescence/bean/Version;-><init>()V

    .line 378
    .local v3, "version":Lcom/wen/fluorescence/bean/Version;
    invoke-virtual {v3, v2}, Lcom/wen/fluorescence/bean/Version;->setFirmVersion(Ljava/lang/String;)V

    .line 379
    shr-int/lit8 v5, v15, 0x18

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/Version;->setV1(B)V

    .line 380
    shr-int/lit8 v5, v15, 0x10

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/Version;->setV2(B)V

    .line 381
    shr-int/lit8 v5, v15, 0x8

    int-to-byte v5, v5

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/Version;->setV3(B)V

    .line 382
    int-to-byte v5, v15

    invoke-virtual {v3, v5}, Lcom/wen/fluorescence/bean/Version;->setV4(B)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move/from16 v23, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 384
    .end local v6    # "crcCal":I
    .local v23, "crcCal":I
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v7

    const v7, 0x7f0c01b5

    .line 384
    .end local v7    # "file":Ljava/io/File;
    .local v24, "file":Ljava/io/File;
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0c01ca

    .line 385
    invoke-virtual {v1, v7}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;

    invoke-direct {v7, v1, v4, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$7;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;[BLcom/wen/fluorescence/bean/Version;)V

    .line 384
    invoke-static {v5, v6, v7}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 400
    .end local v2    # "strFirmWareVersion":Ljava/lang/String;
    .end local v3    # "version":Lcom/wen/fluorescence/bean/Version;
    .end local v4    # "fileData":[B
    .end local v8    # "tempInt":[B
    .end local v9    # "fileCRC":[B
    .end local v10    # "c":I
    .end local v11    # "h":I
    .end local v12    # "y":I
    .end local v13    # "l":I
    .end local v14    # "iLen":I
    .end local v15    # "iV":I
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v21    # "crcHight":B
    .end local v22    # "crcLow":B
    .end local v23    # "crcCal":I
    .end local v24    # "file":Ljava/io/File;
    goto :goto_8

    .line 368
    .local v2, "crcHight":B
    .local v3, "crcLow":B
    .restart local v4    # "fileData":[B
    .restart local v6    # "crcCal":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "tempInt":[B
    .restart local v9    # "fileCRC":[B
    .restart local v10    # "c":I
    .restart local v11    # "h":I
    .restart local v12    # "y":I
    .restart local v13    # "l":I
    .restart local v14    # "iLen":I
    .restart local v15    # "iV":I
    .restart local v19    # "in":Ljava/io/InputStream;
    :cond_9
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 368
    .end local v2    # "crcHight":B
    .end local v3    # "crcLow":B
    .end local v6    # "crcCal":I
    .end local v7    # "file":Ljava/io/File;
    .restart local v21    # "crcHight":B
    .restart local v22    # "crcLow":B
    .restart local v23    # "crcCal":I
    .restart local v24    # "file":Ljava/io/File;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "CRC16 Error!"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 369
    return-void

    .line 347
    .end local v4    # "fileData":[B
    .end local v9    # "fileCRC":[B
    .end local v14    # "iLen":I
    .end local v15    # "iV":I
    .end local v18    # "names":[Ljava/lang/String;
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v21    # "crcHight":B
    .end local v22    # "crcLow":B
    .end local v23    # "crcCal":I
    .end local v24    # "file":Ljava/io/File;
    .local v2, "names":[Ljava/lang/String;
    .local v3, "in":Ljava/io/InputStream;
    .local v5, "fileName":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v24, v7

    .line 347
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .restart local v18    # "names":[Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v20    # "fileName":Ljava/lang/String;
    .restart local v24    # "file":Ljava/io/File;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 348
    return-void

    .line 398
    .end local v8    # "tempInt":[B
    .end local v10    # "c":I
    .end local v11    # "h":I
    .end local v12    # "y":I
    .end local v13    # "l":I
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v24    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 398
    .end local v18    # "names":[Ljava/lang/String;
    .end local v20    # "fileName":Ljava/lang/String;
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v20, v5

    move-object v2, v0

    .line 399
    .end local v5    # "fileName":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v18    # "names":[Ljava/lang/String;
    .restart local v20    # "fileName":Ljava/lang/String;
    :goto_7
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 401
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method private setSoftWareUpgrading()V
    .locals 12

    .line 414
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/PublicFuction;->getUDiskFileList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    const v2, 0x7f0c0165

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 417
    return-void

    .line 419
    :cond_0
    const-string v3, ""

    .line 420
    .local v3, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    .line 421
    .local v7, "s":Ljava/lang/String;
    const-string v8, "Easy11_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "CHF200_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 422
    .local v8, "a":Z
    :goto_2
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v9

    .line 423
    .local v9, "b":Z
    const-string v10, ".apk"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 424
    .local v10, "c":Z
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 425
    move-object v3, v7

    .line 426
    const-string v4, "as"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "......fileName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    goto :goto_3

    .line 420
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "a":Z
    .end local v9    # "b":Z
    .end local v10    # "c":Z
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 431
    :cond_4
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 432
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 433
    return-void

    .line 436
    :cond_5
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/wen/fluorescence/util/PublicFuction;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 438
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 439
    return-void

    .line 442
    :cond_6
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c01b6

    .line 443
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;

    invoke-direct {v5, p0, v4}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$8;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Ljava/io/File;)V

    .line 442
    invoke-static {v1, v2, v5}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 455
    return-void
.end method

.method private setViewIncident()V
    .locals 12

    .line 91
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "login_user"

    const-string v2, ""

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "loginUser":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->queryUserModeByName(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "userMode":I
    const-string v2, "Tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7528\u6237\u6743\u9650:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnLogout:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    .line 103
    .local v2, "guestType":I
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    const/4 v4, 0x6

    if-le v2, v4, :cond_1

    :cond_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSure:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSure:Landroid/widget/Button;

    const v5, 0x7f0c0063

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 109
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 112
    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "mApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 117
    .local v7, "pkg":Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 118
    .local v8, "cls":Ljava/lang/String;
    const-string v9, "AA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    cls:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->Path_Setting:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 120
    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetPKG:Ljava/lang/String;

    .line 121
    iput-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appSetCLS:Ljava/lang/String;

    .line 123
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->Path_Ethernet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 124
    iput-object v7, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetPKG:Ljava/lang/String;

    .line 125
    iput-object v8, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->appEthernetCLS:Ljava/lang/String;

    .line 127
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "cls":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 129
    :cond_4
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSoftUpdate:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnFirmUpdate:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnSure:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnEthernetSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnNetUpdate:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnLogout:Landroid/widget/Button;

    iget-object v6, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->btnEthernetSettings:Landroid/widget/Button;

    new-instance v6, Lcom/wen/fluorescence/ViewUtil/MYonTouchListener;

    invoke-direct {v6}, Lcom/wen/fluorescence/ViewUtil/MYonTouchListener;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    return-void
.end method

.method private showPasswordDialog(Lcom/wen/fluorescence/util/MyDialogInterface;)V
    .locals 7
    .param p1, "dialogInterface"    # Lcom/wen/fluorescence/util/MyDialogInterface;

    .line 195
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0045

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 198
    .local v1, "budiler":Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 200
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 204
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x26c

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    const/16 v3, 0x15e

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 207
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 208
    .local v3, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 209
    .local v4, "btnCancel":Landroid/widget/Button;
    nop

    .line 210
    const v5, 0x7f0800de

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 211
    .local v5, "etPassword":Landroid/widget/EditText;
    new-instance v6, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v6, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;

    invoke-direct {v6, p0, v5, p1, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/widget/EditText;Lcom/wen/fluorescence/util/MyDialogInterface;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private showYRGoodsDialog()V
    .locals 13

    .line 234
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0067

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 237
    .local v1, "budiler":Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 239
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 241
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 243
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x26c

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 244
    const/16 v3, 0x15e

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 246
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 247
    .local v3, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 248
    .local v4, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f080195

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 249
    .local v5, "rgSwitch":Landroid/widget/RadioGroup;
    const v6, 0x7f0800c7

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 250
    .local v6, "etCode":Landroid/widget/EditText;
    const v7, 0x7f080171

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 251
    .local v8, "rbOn":Landroid/widget/RadioButton;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v9

    const-string v10, "SP_YR_PREVENT_GOODS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 252
    .local v9, "isOn":Z
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v10

    const-string v11, "SP_YR_PREVENT_GOODS_VALUE"

    const/16 v12, 0x23

    invoke-virtual {v10, v11, v12}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getIntData(Ljava/lang/String;I)I

    move-result v10

    .line 254
    .local v10, "value":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7f080170

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 256
    new-instance v7, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$4;

    invoke-direct {v7, p0, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v7, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;

    invoke-direct {v7, p0, v6, v8, v1}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 73
    const v0, 0x7f0a003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->initView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;->setViewIncident()V

    .line 76
    return-object v0
.end method
