.class public Lcom/wen/fluorescence/Fragment/SettingFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingFragment.java"


# instance fields
.field private btnLeft:Landroid/widget/Button;

.field private btnRight:Landroid/widget/Button;

.field private callBack:Lcom/wen/fluorescence/util/FragmentCallback;

.field private cloudsFragment:Landroid/support/v4/app/Fragment;

.field private currentID:I

.field private hScrollView:Landroid/widget/HorizontalScrollView;

.field private itemSettingFragment:Landroid/support/v4/app/Fragment;

.field private languageFragment:Landroid/support/v4/app/Fragment;

.field private lisSettingFragment:Landroid/support/v4/app/Fragment;

.field listener:Lcom/wen/fluorescence/util/MyOnClickListener;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private organizationFragment:Landroid/support/v4/app/Fragment;

.field private passWordFragment:Landroid/support/v4/app/Fragment;

.field private rgSetting:Landroid/widget/RadioGroup;

.field private temperatureSettingFragment:Landroid/support/v4/app/Fragment;

.field private timeSettingFragment:Landroid/support/v4/app/Fragment;

.field private userManageFragment:Landroid/support/v4/app/Fragment;

.field private wifiSettingFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingFragment;)Lcom/wen/fluorescence/util/FragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingFragment;

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingFragment;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingFragment;->switchFragment(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingFragment;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingFragment;

    .line 34
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->hScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/CommActivity;->initAVGHandler(Landroid/os/Handler;)V

    .line 134
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/wen/fluorescence/serialport/DoSerialData;->getInstance(Landroid/os/Handler;)Lcom/wen/fluorescence/serialport/DoSerialData;

    .line 135
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 146
    const v0, 0x7f08005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->btnLeft:Landroid/widget/Button;

    .line 147
    const v0, 0x7f080072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->btnRight:Landroid/widget/Button;

    .line 148
    const v0, 0x7f080100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->hScrollView:Landroid/widget/HorizontalScrollView;

    .line 149
    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->rgSetting:Landroid/widget/RadioGroup;

    .line 150
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    const v0, 0x7f080167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f0c0170

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "login_user"

    const-string v2, ""

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "loginUser":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/database/DBManager;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/database/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/database/DBManager;->queryUserModeByName(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "userMode":I
    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    .line 159
    const v2, 0x7f080183

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_1
    const v2, 0x7f080173

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v2

    const/4 v4, 0x7

    const v5, 0x7f080159

    if-ne v2, v4, :cond_2

    .line 165
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_0
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->btnLeft:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->btnRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->listener:Lcom/wen/fluorescence/util/MyOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->rgSetting:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->rgSetting:Landroid/widget/RadioGroup;

    const v1, 0x7f080182

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 183
    return-void
.end method

.method private switchFragment(I)V
    .locals 4
    .param p1, "rbID"    # I

    .line 202
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->currentID:I

    if-ne p1, v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 206
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 207
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

    .line 208
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 209
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 210
    :cond_1
    const v2, 0x7f0800ac

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 236
    :sswitch_0
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_2

    .line 237
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    .line 238
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 242
    goto/16 :goto_1

    .line 276
    :sswitch_1
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->userManageFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    .line 277
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingUserManageFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->userManageFragment:Landroid/support/v4/app/Fragment;

    .line 278
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->userManageFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->userManageFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    goto/16 :goto_1

    .line 212
    :sswitch_2
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->timeSettingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_4

    .line 213
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->timeSettingFragment:Landroid/support/v4/app/Fragment;

    .line 214
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->timeSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->timeSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 218
    goto/16 :goto_1

    .line 244
    :sswitch_3
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->temperatureSettingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5

    .line 245
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->temperatureSettingFragment:Landroid/support/v4/app/Fragment;

    .line 246
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->temperatureSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->temperatureSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 250
    goto/16 :goto_1

    .line 284
    :sswitch_4
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->passWordFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 285
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingPwdFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->passWordFragment:Landroid/support/v4/app/Fragment;

    .line 286
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->passWordFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto/16 :goto_1

    .line 288
    :cond_6
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->passWordFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    goto/16 :goto_1

    .line 260
    :sswitch_5
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->organizationFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_7

    .line 261
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingOrganizationFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->organizationFragment:Landroid/support/v4/app/Fragment;

    .line 262
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->organizationFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 264
    :cond_7
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->organizationFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 266
    goto :goto_1

    .line 268
    :sswitch_6
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->languageFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_8

    .line 269
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->languageFragment:Landroid/support/v4/app/Fragment;

    .line 270
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->languageFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 272
    :cond_8
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->languageFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 274
    goto :goto_1

    .line 228
    :sswitch_7
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->lisSettingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_9

    .line 229
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->lisSettingFragment:Landroid/support/v4/app/Fragment;

    .line 230
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->lisSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 232
    :cond_9
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->lisSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 234
    goto :goto_1

    .line 252
    :sswitch_8
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->itemSettingFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_a

    .line 253
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingItemFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingItemFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->itemSettingFragment:Landroid/support/v4/app/Fragment;

    .line 254
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->itemSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 256
    :cond_a
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->itemSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 258
    goto :goto_1

    .line 220
    :sswitch_9
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->cloudsFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_b

    .line 221
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;

    invoke-direct {v3}, Lcom/wen/fluorescence/Fragment/SettingCloudsFragment;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->cloudsFragment:Landroid/support/v4/app/Fragment;

    .line 222
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->cloudsFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 224
    :cond_b
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->cloudsFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 226
    nop

    .line 295
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 296
    iput p1, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->currentID:I

    .line 297
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080159 -> :sswitch_9
        0x7f080166 -> :sswitch_8
        0x7f080167 -> :sswitch_7
        0x7f080168 -> :sswitch_6
        0x7f080172 -> :sswitch_5
        0x7f080173 -> :sswitch_4
        0x7f080180 -> :sswitch_3
        0x7f080182 -> :sswitch_2
        0x7f080183 -> :sswitch_1
        0x7f080187 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getWifiFragment()Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 141
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/util/FragmentCallback;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->callBack:Lcom/wen/fluorescence/util/FragmentCallback;

    .line 142
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

    .line 108
    const v0, 0x7f0a0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->initView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->setViewIncident()V

    .line 111
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->init()V

    .line 112
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 118
    if-nez p1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->init()V

    .line 120
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->currentID:I

    const v1, 0x7f080180

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->temperatureSettingFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingTemperatureFragment;->init()V

    .line 123
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->currentID:I

    const v1, 0x7f080187

    if-ne v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingFragment;->wifiSettingFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    invoke-virtual {v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->setCloseWifi()V

    .line 129
    :cond_1
    return-void
.end method
