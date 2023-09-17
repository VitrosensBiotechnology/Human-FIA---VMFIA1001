.class public Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingWifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;
    }
.end annotation


# instance fields
.field private btnConnect:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private btnPrevious:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private listWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/bean/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field listener:Landroid/view/View$OnClickListener;

.field private mainWifi:Landroid/net/wifi/WifiManager;

.field private pageUtils:Lcom/wen/fluorescence/util/PageUtils;

.field private rbWifiOff:Landroid/widget/RadioButton;

.field private rbWifiOn:Landroid/widget/RadioButton;

.field private rbWifiSwitch:Landroid/widget/RadioGroup;

.field private receiverWifi:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;

.field private row:I

.field public scanResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private scanRet:Landroid/net/wifi/ScanResult;

.field private tableLayout:Landroid/widget/TableLayout;

.field private tvIpAddress:Landroid/widget/TextView;

.field private tvPage:Landroid/widget/TextView;

.field private wifycon:Lcom/wen/fluorescence/lis/WifiConnector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->row:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/wen/fluorescence/util/PageUtils;

    invoke-direct {v0}, Lcom/wen/fluorescence/util/PageUtils;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->scanResultList:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->handler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/lis/WifiConnector;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->wifycon:Lcom/wen/fluorescence/lis/WifiConnector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->clearnBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->showPasswordDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Lcom/wen/fluorescence/util/PageUtils;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;
    .param p1, "x1"    # Z

    .line 49
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->updateData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->goPrevPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->goNextPage()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingWifiFragment;

    .line 49
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOff:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private clearnBackground()V
    .locals 7

    .line 237
    const/4 v0, 0x0

    .line 237
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "children":Landroid/view/View;
    const v2, 0x7f080218

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 240
    .local v2, "tvMac":Landroid/widget/TextView;
    const v3, 0x7f08021e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .local v3, "tvNetWorkName":Landroid/widget/TextView;
    const v4, 0x7f080246

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 242
    .local v4, "tvStatus":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f050066

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 243
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 244
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 237
    .end local v1    # "children":Landroid/view/View;
    .end local v2    # "tvMac":Landroid/widget/TextView;
    .end local v3    # "tvNetWorkName":Landroid/widget/TextView;
    .end local v4    # "tvStatus":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private goNextPage()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->updateData(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method private goPrevPage()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->isHasPrev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->updateData(Z)V

    .line 316
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 133
    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    .line 134
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnConnect:Landroid/widget/Button;

    .line 135
    const v0, 0x7f080221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tvPage:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f080063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnNext:Landroid/widget/Button;

    .line 137
    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnPrevious:Landroid/widget/Button;

    .line 138
    const v0, 0x7f080188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiSwitch:Landroid/widget/RadioGroup;

    .line 139
    const v0, 0x7f080204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tvIpAddress:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f080186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOn:Landroid/widget/RadioButton;

    .line 141
    const v0, 0x7f080185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOff:Landroid/widget/RadioButton;

    .line 144
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 146
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->receiverWifi:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;

    .line 148
    new-instance v0, Lcom/wen/fluorescence/lis/WifiConnector;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->mainWifi:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/wen/fluorescence/lis/WifiConnector;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->wifycon:Lcom/wen/fluorescence/lis/WifiConnector;

    .line 150
    return-void
.end method

.method private setViewIncident()V
    .locals 5

    .line 154
    const/4 v0, 0x0

    move v1, v0

    .line 154
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->row:I

    if-ge v1, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0056

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, "tableRow":Landroid/view/View;
    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 154
    .end local v2    # "tableRow":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->row:I

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageSize(I)V

    .line 195
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 196
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnConnect:Landroid/widget/Button;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnPrevious:Landroid/widget/Button;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->btnNext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiSwitch:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;

    invoke-direct {v3, p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v3, "WIFI_KEY"

    invoke-virtual {v1, v3, v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 230
    :goto_1
    return-void
.end method

.method private showPasswordDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0069

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 273
    .local v1, "budiler":Landroid/app/AlertDialog;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 274
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 275
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 277
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 279
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x26c

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 280
    const/16 v3, 0x15e

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 281
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 282
    const v3, 0x7f080089

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 283
    .local v3, "btnSure":Landroid/widget/Button;
    const v4, 0x7f08003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 284
    .local v4, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f08021d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 285
    .local v5, "tvName":Landroid/widget/TextView;
    nop

    .line 286
    const v6, 0x7f0800de

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 287
    .local v6, "etPassword":Landroid/widget/EditText;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v7, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$5;

    invoke-direct {v7, p0, v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v7, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;

    invoke-direct {v7, p0, v6, p1, v1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SettingWifiFragment;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method private updateData(Z)V
    .locals 14
    .param p1, "isCloseWifi"    # Z

    .line 331
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v2}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v2

    mul-int/2addr v0, v2

    .line 332
    .local v0, "offset":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v2, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/WifiInfo;>;"
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/util/PageUtils;->setTotalSize(I)V

    .line 335
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/util/PageUtils;->setPageNow(I)V

    .line 336
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->updateData(Z)V

    goto/16 :goto_5

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->clearnBackground()V

    .line 339
    if-ltz v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 341
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v3}, Lcom/wen/fluorescence/util/PageUtils;->getPageSize()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 346
    .end local v2    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/WifiInfo;>;"
    .local v1, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/WifiInfo;>;"
    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 343
    .end local v1    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/WifiInfo;>;"
    .restart local v2    # "listData":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/bean/WifiInfo;>;"
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->listWifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v1

    if-ltz v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tvPage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageNow()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->pageUtils:Lcom/wen/fluorescence/util/PageUtils;

    invoke-virtual {v4}, Lcom/wen/fluorescence/util/PageUtils;->getPageTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tvIpAddress:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const/4 v1, 0x0

    move v3, v1

    .line 350
    .local v3, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const v5, -0xeccbb9

    const v6, 0x7f080246

    const v7, 0x7f08021e

    const v8, 0x7f080110

    const v9, 0x7f080218

    if-ge v3, v4, :cond_5

    .line 351
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 352
    .local v4, "children":Landroid/view/View;
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 353
    .local v9, "tvMac":Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 354
    .local v8, "ivSignalLevel":Landroid/widget/ImageView;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 355
    .local v7, "tvNetWorkName":Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 356
    .local v6, "tvStatus":Landroid/widget/TextView;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/bean/WifiInfo;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/WifiInfo;->getMac()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 357
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/wen/fluorescence/bean/WifiInfo;

    invoke-virtual {v10}, Lcom/wen/fluorescence/bean/WifiInfo;->getSignalStrengthLevel()I

    move-result v10

    .line 358
    .local v10, "sLev":I
    const v11, 0x7f070114

    packed-switch v10, :pswitch_data_0

    .line 369
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 366
    :pswitch_0
    const v11, 0x7f070112

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    goto :goto_3

    .line 363
    :pswitch_1
    const v11, 0x7f070113

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    goto :goto_3

    .line 360
    :pswitch_2
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    nop

    .line 372
    :goto_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 373
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wen/fluorescence/bean/WifiInfo;

    invoke-virtual {v11}, Lcom/wen/fluorescence/bean/WifiInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const v11, 0x7f0c01b0

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wen/fluorescence/bean/WifiInfo;

    invoke-virtual {v5}, Lcom/wen/fluorescence/bean/WifiInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 378
    const v5, 0x7f0c0082

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/high16 v5, -0x10000

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tvIpAddress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/wen/fluorescence/lis/WifiConnector;->getIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .end local v4    # "children":Landroid/view/View;
    .end local v6    # "tvStatus":Landroid/widget/TextView;
    .end local v7    # "tvNetWorkName":Landroid/widget/TextView;
    .end local v8    # "ivSignalLevel":Landroid/widget/ImageView;
    .end local v9    # "tvMac":Landroid/widget/TextView;
    .end local v10    # "sLev":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 384
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 385
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 385
    .local v1, "i":I
    :goto_4
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 386
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, "children":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 388
    .local v4, "tvMac":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 389
    .local v10, "ivSignalLevel":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 390
    .local v11, "tvNetWorkName":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 391
    .local v12, "tvStatus":Landroid/widget/TextView;
    const-string v13, ""

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v13, ""

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    .end local v3    # "children":Landroid/view/View;
    .end local v4    # "tvMac":Landroid/widget/TextView;
    .end local v10    # "ivSignalLevel":Landroid/widget/ImageView;
    .end local v11    # "tvNetWorkName":Landroid/widget/TextView;
    .end local v12    # "tvStatus":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 400
    .end local v1    # "i":I
    :cond_6
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 101
    const v0, 0x7f0a0055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->initView(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->setViewIncident()V

    .line 105
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->receiverWifi:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 129
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->receiverWifi:Lcom/wen/fluorescence/Fragment/SettingWifiFragment$WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 113
    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "Ta"

    const-string v1, "NetUtil.isWifiEnable..........."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->setCloseWifi()V

    .line 119
    :cond_0
    return-void
.end method

.method public setCloseWifi()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingWifiFragment;->rbWifiOff:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    return-void
.end method
