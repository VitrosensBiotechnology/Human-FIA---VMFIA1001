.class public Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingLanguageFragment.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private rbChinese:Landroid/widget/RadioButton;

.field private rbDeutsch:Landroid/widget/RadioButton;

.field private rbEnglish:Landroid/widget/RadioButton;

.field private rbFrench:Landroid/widget/RadioButton;

.field private rbItalia:Landroid/widget/RadioButton;

.field private rbPortugal:Landroid/widget/RadioButton;

.field private rbRussian:Landroid/widget/RadioButton;

.field private rbSpain:Landroid/widget/RadioButton;

.field private rgLanguage:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    .line 32
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rgLanguage:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->changeLanguage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;

    .line 32
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->init()V

    return-void
.end method

.method private changeLanguage(I)V
    .locals 7
    .param p1, "id"    # I

    .line 148
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 150
    .local v1, "configuration":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 151
    .local v2, "locale":Ljava/util/Locale;
    const v3, 0x1a00002

    .line 152
    .local v3, "Tag":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 162
    :sswitch_0
    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    const-string v6, "ES"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 163
    const v3, 0x1a00005

    .line 164
    goto :goto_0

    .line 166
    :sswitch_1
    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    const-string v6, "RU"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 167
    const v3, 0x1a00008

    .line 168
    goto :goto_0

    .line 174
    :sswitch_2
    new-instance v4, Ljava/util/Locale;

    const-string v5, "pt"

    const-string v6, "PT"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 175
    const v3, 0x1a00006

    .line 176
    goto :goto_0

    .line 178
    :sswitch_3
    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 179
    const v3, 0x1a00007

    .line 180
    goto :goto_0

    .line 182
    :sswitch_4
    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 183
    const v3, 0x1a00004

    goto :goto_0

    .line 158
    :sswitch_5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 159
    const v3, 0x1a00002

    .line 160
    goto :goto_0

    .line 170
    :sswitch_6
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 171
    const v3, 0x1a00003

    .line 172
    goto :goto_0

    .line 154
    :sswitch_7
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 155
    const v3, 0x1a00001

    .line 156
    nop

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/wen/fluorescence/util/SaveLanguaeInfo;->saveLanguage(Landroid/content/Context;I)V

    .line 188
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 191
    :cond_0
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 196
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/wen/fluorescence/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v4, "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080158 -> :sswitch_7
        0x7f08015c -> :sswitch_6
        0x7f08015d -> :sswitch_5
        0x7f080161 -> :sswitch_4
        0x7f080165 -> :sswitch_3
        0x7f080174 -> :sswitch_2
        0x7f08017b -> :sswitch_1
        0x7f08017d -> :sswitch_0
    .end sparse-switch
.end method

.method private init()V
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1a00002

    invoke-static {v0, v1}, Lcom/wen/fluorescence/util/SaveLanguaeInfo;->getLanguage(Landroid/content/Context;I)I

    move-result v0

    .line 59
    .local v0, "curLanguage":I
    const-string v1, "A"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language init:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_RUSSIAN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbRussian:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    goto :goto_0

    .line 86
    :pswitch_1
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_ITALY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbItalia:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    goto :goto_0

    .line 82
    :pswitch_2
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_PORTUGUESE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbPortugal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    goto :goto_0

    .line 70
    :pswitch_3
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_SPANISH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbSpain:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    goto :goto_0

    .line 90
    :pswitch_4
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_FRENCH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbFrench:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 78
    :pswitch_5
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_GERMAN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbDeutsch:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    goto :goto_0

    .line 66
    :pswitch_6
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_ENGLISH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbEnglish:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    goto :goto_0

    .line 62
    :pswitch_7
    const-string v2, "A"

    const-string v3, "Language LANGUAGE_CHINESE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbChinese:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    nop

    .line 94
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a00001
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 97
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->btnSure:Landroid/widget/Button;

    .line 98
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->btnCancel:Landroid/widget/Button;

    .line 99
    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rgLanguage:Lcom/wen/fluorescence/ViewUtil/MultiLineRadioGroup;

    .line 100
    const v0, 0x7f080158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbChinese:Landroid/widget/RadioButton;

    .line 101
    const v0, 0x7f08015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbEnglish:Landroid/widget/RadioButton;

    .line 102
    const v0, 0x7f08017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbSpain:Landroid/widget/RadioButton;

    .line 103
    const v0, 0x7f08017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbRussian:Landroid/widget/RadioButton;

    .line 104
    const v0, 0x7f08015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbDeutsch:Landroid/widget/RadioButton;

    .line 105
    const v0, 0x7f080174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbPortugal:Landroid/widget/RadioButton;

    .line 106
    const v0, 0x7f080165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbItalia:Landroid/widget/RadioButton;

    .line 107
    const v0, 0x7f080161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbFrench:Landroid/widget/RadioButton;

    .line 108
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbSpain:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbRussian:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbDeutsch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbPortugal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbItalia:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbFrench:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getSoftType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbDeutsch:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbPortugal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->rbItalia:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->btnSure:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$2;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
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

    .line 43
    const v0, 0x7f0a0038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->initView(Landroid/view/View;)V

    .line 45
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->setViewIncident()V

    .line 46
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->init()V

    .line 47
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 54
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingLanguageFragment;->init()V

    .line 55
    return-void
.end method
