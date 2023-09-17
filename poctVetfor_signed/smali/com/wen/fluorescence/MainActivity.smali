.class public Lcom/wen/fluorescence/MainActivity;
.super Lcom/wen/fluorescence/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/wen/fluorescence/util/FragmentCallback;


# instance fields
.field private final DalayTime:I

.field private final MSG_DATE_TIME:I

.field private final MSG_GET_SYSTEM_CONFIG:I

.field private final MSG_NETWORKCONNECTED:I

.field private final MSG_NETWORKDISCONNECTED:I

.field private btnAccount:Landroid/widget/Button;

.field private btnHistory:Landroid/widget/Button;

.field private btnHome:Landroid/widget/Button;

.field private btnQC:Landroid/widget/Button;

.field private btnSetting:Landroid/widget/Button;

.field private btnSystem:Landroid/widget/Button;

.field private btnTemp:Landroid/widget/Button;

.field private currentID:I

.field private dTemp:D

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private ivServer:Landroid/widget/ImageView;

.field private ivWifi:Landroid/widget/ImageView;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private m_accountFragment:Landroid/support/v4/app/Fragment;

.field private m_currentFragment:Landroid/support/v4/app/Fragment;

.field private m_fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private m_historyFragment:Landroid/support/v4/app/Fragment;

.field private m_homeFragment:Landroid/support/v4/app/Fragment;

.field private m_qcFragment:Landroid/support/v4/app/Fragment;

.field private m_settingFragment:Landroid/support/v4/app/Fragment;

.field private m_systemFragment:Landroid/support/v4/app/Fragment;

.field runnable:Ljava/lang/Runnable;

.field private tvDate:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTittle:Landroid/widget/TextView;

.field private tvUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/BaseActivity;-><init>()V

    .line 68
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/wen/fluorescence/MainActivity;->DalayTime:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/MainActivity;->MSG_NETWORKDISCONNECTED:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/MainActivity;->MSG_NETWORKCONNECTED:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/MainActivity;->MSG_DATE_TIME:I

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/MainActivity;->MSG_GET_SYSTEM_CONFIG:I

    .line 87
    new-instance v0, Lcom/wen/fluorescence/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/MainActivity$1;-><init>(Lcom/wen/fluorescence/MainActivity;)V

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/wen/fluorescence/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/MainActivity$2;-><init>(Lcom/wen/fluorescence/MainActivity;)V

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->runnable:Ljava/lang/Runnable;

    .line 323
    new-instance v0, Lcom/wen/fluorescence/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/MainActivity$4;-><init>(Lcom/wen/fluorescence/MainActivity;)V

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method private GetTime()V
    .locals 3

    .line 441
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "strDateTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 443
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivServer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->GetTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;

    .line 54
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/MainActivity;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/MainActivity;->setTabSelect(I)V

    return-void
.end method

.method private determineTime()V
    .locals 3

    .line 155
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcom/wen/fluorescence/util/DateUtils;->getSysemDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "strTime":Ljava/lang/String;
    const-string v1, "1970"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wen/fluorescence/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/wen/fluorescence/MainActivity$3;-><init>(Lcom/wen/fluorescence/MainActivity;)V

    invoke-static {p0, v1, v2}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 170
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->m_fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 282
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->mutilLanguageDeal()V

    .line 286
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    invoke-static {p0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 222
    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvTittle:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnTemp:Landroid/widget/Button;

    .line 224
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    .line 225
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    .line 226
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    .line 227
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    .line 228
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    .line 229
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    .line 230
    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvDate:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvTime:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    .line 233
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivServer:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvUserName:Landroid/widget/TextView;

    .line 235
    return-void
.end method

.method private mutilLanguageDeal()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->isLanguageFileExit()Z

    move-result v0

    .line 178
    .local v0, "bFirstEnterAPP":Z
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/wen/fluorescence/util/PublicFuction;->makeLanguageFile()V

    .line 180
    new-instance v1, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v1}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    .line 181
    .local v1, "printer":Lcom/wen/fluorescence/printer/Printer;
    invoke-virtual {v1}, Lcom/wen/fluorescence/printer/Printer;->openMutilLanguage()V

    .line 183
    .end local v1    # "printer":Lcom/wen/fluorescence/printer/Printer;
    :cond_0
    return-void
.end method

.method private setTabSelect(I)V
    .locals 4
    .param p1, "id"    # I

    .line 336
    iget v0, p0, Lcom/wen/fluorescence/MainActivity;->currentID:I

    if-ne p1, v0, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 340
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 342
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 344
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 345
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 346
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 347
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 348
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 349
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 350
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->m_fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 353
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    :cond_1
    const v1, 0x7f05001f

    const v2, 0x7f0800ac

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_6

    .line 402
    :sswitch_0
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_2

    .line 403
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    .line 404
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 408
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    const v3, 0x7f0700bc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 409
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 410
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    .line 411
    goto/16 :goto_6

    .line 391
    :sswitch_1
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_settingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    .line 392
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_settingFragment:Landroid/support/v4/app/Fragment;

    .line 393
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_settingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 395
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_settingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 397
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    const v3, 0x7f0700b9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 398
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 399
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_settingFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    .line 400
    goto/16 :goto_6

    .line 413
    :sswitch_2
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_qcFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_4

    .line 414
    new-instance v3, Lcom/wen/fluorescence/Fragment/QCFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/QCFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_qcFragment:Landroid/support/v4/app/Fragment;

    .line 415
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_qcFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_qcFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 419
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    const v3, 0x7f0700be

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 420
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 421
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_qcFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    goto/16 :goto_6

    .line 358
    :sswitch_3
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_homeFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5

    .line 359
    new-instance v3, Lcom/wen/fluorescence/Fragment/HomeFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/HomeFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_homeFragment:Landroid/support/v4/app/Fragment;

    .line 360
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_homeFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    .line 362
    :cond_5
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_homeFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 364
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    const v3, 0x7f0700b3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 365
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 366
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_homeFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    .line 367
    goto :goto_6

    .line 369
    :sswitch_4
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_historyFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 370
    new-instance v3, Lcom/wen/fluorescence/Fragment/HistoryFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/HistoryFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_historyFragment:Landroid/support/v4/app/Fragment;

    .line 371
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_historyFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    .line 373
    :cond_6
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_historyFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 375
    :goto_4
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 376
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 377
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_historyFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    .line 378
    goto :goto_6

    .line 380
    :sswitch_5
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_accountFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_7

    .line 381
    new-instance v3, Lcom/wen/fluorescence/Fragment/AccountFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/AccountFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_accountFragment:Landroid/support/v4/app/Fragment;

    .line 382
    iget-object v3, p0, Lcom/wen/fluorescence/MainActivity;->m_accountFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_5

    .line 384
    :cond_7
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->m_accountFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 386
    :goto_5
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    const v3, 0x7f0700b7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 387
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 388
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_accountFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/wen/fluorescence/MainActivity;->m_currentFragment:Landroid/support/v4/app/Fragment;

    .line 389
    nop

    .line 424
    :goto_6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 425
    iput p1, p0, Lcom/wen/fluorescence/MainActivity;->currentID:I

    .line 426
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080032 -> :sswitch_5
        0x7f080058 -> :sswitch_4
        0x7f080059 -> :sswitch_3
        0x7f08006b -> :sswitch_2
        0x7f08007c -> :sswitch_1
        0x7f08008a -> :sswitch_0
    .end sparse-switch
.end method

.method private setViewIncident()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvTittle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/wen/fluorescence/download/DownloadTool;->GuestTypeName:[Ljava/lang/String;

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/wen/fluorescence/download/DownloadTool;->SoftTypeName:[Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->tvUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {p0}, Lcom/wen/fluorescence/util/PublicFuction;->getLocaleLanguage(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v0, 0x7f080059

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/MainActivity;->setTabSelect(I)V

    .line 251
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const v1, 0x7f0700ed

    const v2, 0x7f080131

    packed-switch v0, :pswitch_data_0

    .line 262
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    nop

    .line 265
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeWifi()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivServer:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getdTemp()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/wen/fluorescence/MainActivity;->dTemp:D

    return-wide v0
.end method

.method public isWifiConnect()Z
    .locals 3

    .line 273
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 275
    .local v1, "mWifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method public onBackPressed()V
    .locals 2

    .line 431
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getTestStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->getTestMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 433
    invoke-static {p0}, Lcom/wen/fluorescence/Thread/TestThread;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/TestThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TestThread;->showCancleDialog()V

    .line 437
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 194
    invoke-super {p0, p1}, Lcom/wen/fluorescence/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 143
    invoke-super {p0, p1}, Lcom/wen/fluorescence/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/MainActivity;->setContentView(I)V

    .line 145
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->initView()V

    .line 146
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->init()V

    .line 147
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->setViewIncident()V

    .line 148
    invoke-direct {p0}, Lcom/wen/fluorescence/MainActivity;->determineTime()V

    .line 149
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LibVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lgiven/tronho/api/TronhoLibApi;->getLibVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 214
    invoke-super {p0}, Lcom/wen/fluorescence/BaseActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 190
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/wen/fluorescence/BaseActivity;->onStart()V

    .line 201
    invoke-static {}, Lcom/wen/fluorescence/Thread/TempTimer;->getInstance()Lcom/wen/fluorescence/Thread/TempTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/TempTimer;->startTempTimer()V

    .line 202
    invoke-virtual {p0}, Lcom/wen/fluorescence/MainActivity;->startUploadDataTimer()V

    .line 203
    return-void
.end method

.method public receiveTemperature(D)V
    .locals 5
    .param p1, "temperature"    # D

    .line 296
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v0

    .line 297
    .local v0, "dT":D
    const-wide v2, 0x4026333333333333L    # 11.1

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 298
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnTemp:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\u2103"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/wen/fluorescence/MainActivity;->btnTemp:Landroid/widget/Button;

    const-string v3, " - - "

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/wen/fluorescence/MainActivity;->setdTemp(D)V

    .line 303
    return-void
.end method

.method public reveiveENVTemperature(D)V
    .locals 3
    .param p1, "temperature"    # D

    .line 307
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->m_systemFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemFragment;

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/wen/fluorescence/util/MathUtils;->reserveDecimals(DI)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/Fragment/SystemFragment;->setEnvTemp(D)V

    .line 310
    :cond_0
    return-void
.end method

.method public setTabEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 315
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHome:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnAccount:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnHistory:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSystem:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnQC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->btnSetting:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 321
    return-void
.end method

.method public setUpLisServer(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 473
    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivServer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivServer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    :goto_0
    return-void
.end method

.method public setUpWifi(ZI)V
    .locals 2
    .param p1, "isOn"    # Z
    .param p2, "level"    # I

    .line 449
    if-nez p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    return-void

    .line 454
    :cond_0
    const v0, 0x7f070114

    packed-switch p2, :pswitch_data_0

    .line 465
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    goto :goto_0

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    goto :goto_0

    .line 456
    :pswitch_2
    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    nop

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/wen/fluorescence/MainActivity;->ivWifi:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setdTemp(D)V
    .locals 1
    .param p1, "dTemp"    # D

    .line 81
    iput-wide p1, p0, Lcom/wen/fluorescence/MainActivity;->dTemp:D

    .line 82
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wen/fluorescence/util/Global;->setdTemp(D)V

    .line 83
    return-void
.end method

.method public startUploadDataTimer()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->getInstance()Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/Thread/UploadDataForCloudsTimer;->setTimerTotalStart(Landroid/os/Handler;)V

    .line 209
    :cond_0
    return-void
.end method

.method public uploadData()V
    .locals 13

    .line 488
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 490
    invoke-static {}, Lcom/wen/fluorescence/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 495
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "user":Ljava/lang/String;
    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "super"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "admin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    :cond_1
    const-string v0, ""

    .line 499
    :cond_2
    invoke-static {p0}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->getNoUploadTestResultData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 501
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 503
    invoke-static {p0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "EASY11_URL"

    const-string v4, "https://covid.testeasy.com.cn/prod-api/api/uploadData"

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 504
    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 505
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    .line 506
    .local v4, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getAppId()Ljava/lang/String;

    move-result-object v12

    .line 508
    .local v12, "appId":Ljava/lang/String;
    const-string v5, "main"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    new-instance v11, Lcom/wen/fluorescence/MainActivity$5;

    invoke-direct {v11, p0, v4}, Lcom/wen/fluorescence/MainActivity$5;-><init>(Lcom/wen/fluorescence/MainActivity;Lcom/wen/fluorescence/database/TestResult;)V

    move-object v6, v2

    move-object v7, v4

    invoke-static/range {v5 .. v11}, Lcom/wen/fluorescence/net/RequestManager;->SendToCloudPlatFormEasy11(Ljava/lang/Object;Ljava/lang/String;Lcom/wen/fluorescence/database/TestResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wen/fluorescence/net/CallBack;)V

    .line 504
    .end local v4    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    .end local v12    # "appId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "user":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/database/TestResult;>;"
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method
