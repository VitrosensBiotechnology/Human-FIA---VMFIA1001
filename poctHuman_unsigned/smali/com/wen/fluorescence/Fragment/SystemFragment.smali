.class public Lcom/wen/fluorescence/Fragment/SystemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SystemFragment.java"

# interfaces
.implements Lcom/wen/fluorescence/Fragment/SystemMaintainFragment$EnterCallback;


# instance fields
.field private advancedFragment:Landroid/support/v4/app/Fragment;

.field private callBack:Lcom/wen/fluorescence/util/FragmentCallback;

.field private checkOutFragment:Landroid/support/v4/app/Fragment;

.field private currentID:I

.field private idChipFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private maintainFragment:Landroid/support/v4/app/Fragment;

.field private rbAdvanced:Landroid/widget/RadioButton;

.field private rbCheckOut:Landroid/widget/RadioButton;

.field private rbIDChipSystem:Landroid/widget/RadioButton;

.field private rbMaintainSystem:Landroid/widget/RadioButton;

.field private rbRD:Landroid/widget/RadioButton;

.field private rbReagentSystem:Landroid/widget/RadioButton;

.field private rbSelfTestSystem:Landroid/widget/RadioButton;

.field private rbVersionSystem:Landroid/widget/RadioButton;

.field private rdFragment:Landroid/support/v4/app/Fragment;

.field private reagentFragment:Landroid/support/v4/app/Fragment;

.field private rgSystem:Landroid/widget/RadioGroup;

.field private selfTestFragment:Landroid/support/v4/app/Fragment;

.field private versionFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Lcom/wen/fluorescence/Fragment/SystemFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SystemFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SystemFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SystemFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->currentID:I

    return v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->selfTestFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->checkOutFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SystemFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rdFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SystemFragment;)Lcom/wen/fluorescence/util/FragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;

    .line 36
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SystemFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SystemFragment;
    .param p1, "x1"    # I

    .line 36
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SystemFragment;->switchFragment(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->initAVGHandler(Landroid/os/Handler;)V

    .line 397
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 398
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 294
    const v0, 0x7f080196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    .line 295
    const v0, 0x7f080184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    .line 296
    const v0, 0x7f08016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    .line 297
    const v0, 0x7f080164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    .line 298
    const v0, 0x7f08017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    .line 299
    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    .line 300
    const v0, 0x7f08017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    .line 301
    const v0, 0x7f080157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    .line 302
    const v0, 0x7f080179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    .line 303
    return-void
.end method

.method private setUserVisible()V
    .locals 6

    .line 317
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "login_user"

    const-string v2, ""

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "loginUser":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->queryUserModeByName(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "userMode":I
    const-string v2, "Tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User rights:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const v2, 0x7f080184

    const/16 v3, 0x8

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 356
    :pswitch_0
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 357
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 358
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 359
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 360
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 361
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 362
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 363
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 364
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_0

    .line 345
    :pswitch_1
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 347
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 348
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 350
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 351
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 352
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 353
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 354
    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 335
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 336
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 337
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 338
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 339
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v5, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 340
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 341
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 342
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 343
    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 324
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 325
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 326
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 327
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 328
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 329
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 330
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 331
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 332
    nop

    .line 367
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setViewIncident()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SystemFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SystemFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 313
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->setUserVisible()V

    .line 314
    return-void
.end method

.method private switchFragment(I)V
    .locals 4
    .param p1, "rbID"    # I

    .line 401
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->currentID:I

    if-ne p1, v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 405
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 406
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 407
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 408
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 409
    :cond_1
    const v2, 0x7f0800ac

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 411
    :sswitch_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->versionFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_2

    .line 412
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemVersionFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemVersionFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->versionFragment:Landroid/support/v4/app/Fragment;

    .line 413
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->versionFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->versionFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 417
    goto/16 :goto_1

    .line 427
    :sswitch_1
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->selfTestFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    .line 428
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemSelfTestFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->selfTestFragment:Landroid/support/v4/app/Fragment;

    .line 429
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->selfTestFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->selfTestFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 433
    goto/16 :goto_1

    .line 419
    :sswitch_2
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->reagentFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_4

    .line 420
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemReagentFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->reagentFragment:Landroid/support/v4/app/Fragment;

    .line 421
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->reagentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 423
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->reagentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 425
    goto/16 :goto_1

    .line 459
    :sswitch_3
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rdFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5

    .line 460
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemRDFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemRDFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rdFragment:Landroid/support/v4/app/Fragment;

    .line 461
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rdFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 463
    :cond_5
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rdFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 465
    goto :goto_1

    .line 435
    :sswitch_4
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->maintainFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 436
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemMaintainFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->maintainFragment:Landroid/support/v4/app/Fragment;

    .line 437
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->maintainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 439
    :cond_6
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->maintainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 441
    goto :goto_1

    .line 443
    :sswitch_5
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->idChipFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_7

    .line 444
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemIDChipFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->idChipFragment:Landroid/support/v4/app/Fragment;

    .line 445
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->idChipFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 447
    :cond_7
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->idChipFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 449
    goto :goto_1

    .line 467
    :sswitch_6
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->checkOutFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_8

    .line 468
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemCheckOutFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->checkOutFragment:Landroid/support/v4/app/Fragment;

    .line 469
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->checkOutFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 471
    :cond_8
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->checkOutFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 473
    goto :goto_1

    .line 451
    :sswitch_7
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_9

    .line 452
    new-instance v3, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    .line 453
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 455
    :cond_9
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 457
    nop

    .line 478
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 479
    iput p1, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->currentID:I

    .line 480
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080156 -> :sswitch_7
        0x7f080157 -> :sswitch_6
        0x7f080164 -> :sswitch_5
        0x7f08016d -> :sswitch_4
        0x7f080179 -> :sswitch_3
        0x7f08017a -> :sswitch_2
        0x7f08017c -> :sswitch_1
        0x7f080184 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 280
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/util/FragmentCallback;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    .line 281
    return-void
.end method

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

    .line 264
    const v0, 0x7f0a005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->initView(Landroid/view/View;)V

    .line 266
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->setViewIncident()V

    .line 267
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->init()V

    .line 268
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 285
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 286
    if-eqz p1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SystemFragment;->init()V

    .line 291
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 273
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 275
    return-void
.end method

.method public setEnvTemp(D)V
    .locals 1
    .param p1, "dEnvTemp"    # D

    .line 503
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->advancedFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;

    invoke-virtual {v0, p1, p2}, Lcom/wen/fluorescence/Fragment/SystemAdvancedFragment;->setEnvTemp(D)V

    .line 506
    :cond_0
    return-void
.end method

.method public setTabEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 385
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbVersionSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbReagentSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbSelfTestSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbMaintainSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 393
    return-void
.end method

.method public setUpAdvanced()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 487
    return-void
.end method

.method public setUpRD()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbRD:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbCheckOut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbAdvanced:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rbIDChipSystem:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SystemFragment;->rgSystem:Landroid/widget/RadioGroup;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 496
    return-void
.end method
