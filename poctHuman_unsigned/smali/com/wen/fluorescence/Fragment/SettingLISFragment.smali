.class public Lcom/wen/fluorescence/Fragment/SettingLISFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingLISFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private btnTestConnection:Landroid/widget/Button;

.field private etIP1:Landroid/widget/EditText;

.field private etIP2:Landroid/widget/EditText;

.field private etIP3:Landroid/widget/EditText;

.field private etIP4:Landroid/widget/EditText;

.field private etPort:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private rbHL7:Landroid/widget/RadioButton;

.field private rbOff:Landroid/widget/RadioButton;

.field private rbOn:Landroid/widget/RadioButton;

.field private rbTCP:Landroid/widget/RadioButton;

.field private rgLISMode:Landroid/widget/RadioGroup;

.field private rgSwitch:Landroid/widget/RadioGroup;

.field private tvMAC:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnTestConnection:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP4:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbHL7:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->initData()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLISFragment;

    .line 38
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getEthertMacAddress()Ljava/lang/String;
    .locals 12

    .line 154
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 156
    .local v3, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eth0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 158
    .restart local v3    # "nif":Ljava/net/NetworkInterface;
    :cond_0
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 159
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 160
    return-object v0

    .line 163
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v4, "res1":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

    aget-byte v9, v2, v7

    .line 165
    .local v9, "b":B
    const-string v10, "%02X:"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v9    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 171
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 175
    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v2    # "macBytes":[B
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    .end local v4    # "res1":Ljava/lang/StringBuilder;
    :cond_4
    goto :goto_2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 176
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private getWIFIMacAddress()Ljava/lang/String;
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 183
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 184
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initData()V
    .locals 9

    .line 113
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "IP_LIS"

    const-string v2, "192.168.0.66"

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "ips":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "IP_port"

    const-string v3, "50000"

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "port":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "LIS_HL7_MODE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 116
    .local v2, "bMode":Z
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v3

    const-string v5, "LIS_SWITCH"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 117
    .local v3, "bSwitch":Z
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP1:Landroid/widget/EditText;

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP2:Landroid/widget/EditText;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP3:Landroid/widget/EditText;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP4:Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etPort:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    if-eqz v2, :cond_0

    .line 123
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbHL7:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbTCP:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    :goto_0
    if-eqz v3, :cond_1

    .line 128
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbOn:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbOff:Landroid/widget/RadioButton;

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    :goto_1
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getEthertMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "Eth0":Ljava/lang/String;
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getWIFIMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "WLAN0":Ljava/lang/String;
    const-string v6, ""

    .line 135
    .local v6, "mac":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Eth0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    WLAN0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 138
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 139
    move-object v6, v4

    goto :goto_2

    .line 141
    :cond_3
    move-object v6, v5

    .line 144
    :goto_2
    iget-object v7, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->tvMAC:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 90
    const v0, 0x7f0800cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP1:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f0800ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP2:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0800cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP3:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f0800d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etIP4:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->etPort:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f08017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbTCP:Landroid/widget/RadioButton;

    .line 96
    const v0, 0x7f080163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbHL7:Landroid/widget/RadioButton;

    .line 97
    const v0, 0x7f080171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbOn:Landroid/widget/RadioButton;

    .line 98
    const v0, 0x7f080170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rbOff:Landroid/widget/RadioButton;

    .line 99
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnSure:Landroid/widget/Button;

    .line 100
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnCancel:Landroid/widget/Button;

    .line 101
    const v0, 0x7f080195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rgSwitch:Landroid/widget/RadioGroup;

    .line 102
    const v0, 0x7f08018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rgLISMode:Landroid/widget/RadioGroup;

    .line 103
    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnTestConnection:Landroid/widget/Button;

    .line 104
    const v0, 0x7f080217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->tvMAC:Landroid/widget/TextView;

    .line 106
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    const v0, 0x7f080210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0170

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f080245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnSure:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$3;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rgSwitch:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->rgLISMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$5;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$5;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->btnTestConnection:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment$6;-><init>(Lcom/wen/fluorescence/Fragment/SettingLISFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
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

    .line 74
    const v0, 0x7f0a0039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->initView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->setViewIncident()V

    .line 77
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->initData()V

    .line 78
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLISFragment;->initData()V

    .line 87
    :cond_0
    return-void
.end method
