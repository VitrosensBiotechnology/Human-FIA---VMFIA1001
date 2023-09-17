.class public Lcom/wen/fluorescence/Fragment/SettingTimeFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingTimeFragment.java"


# instance fields
.field private final MSG_ADD_DAY:I

.field private final MSG_ADD_HOUR:I

.field private final MSG_ADD_MINUTE:I

.field private final MSG_ADD_MONTH:I

.field private final MSG_ADD_YEAR:I

.field private final MSG_SUB_DAY:I

.field private final MSG_SUB_HOUR:I

.field private final MSG_SUB_MINUTE:I

.field private final MSG_SUB_MONTH:I

.field private final MSG_SUB_YEAR:I

.field private btnAddDay:Landroid/widget/Button;

.field private btnAddHour:Landroid/widget/Button;

.field private btnAddMinute:Landroid/widget/Button;

.field private btnAddMonth:Landroid/widget/Button;

.field private btnAddYear:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private btnSubDay:Landroid/widget/Button;

.field private btnSubHour:Landroid/widget/Button;

.field private btnSubMinute:Landroid/widget/Button;

.field private btnSubMonth:Landroid/widget/Button;

.field private btnSubYear:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private etAddDay:Landroid/widget/EditText;

.field private etAddHour:Landroid/widget/EditText;

.field private etAddMinute:Landroid/widget/EditText;

.field private etAddMonth:Landroid/widget/EditText;

.field private etAddYear:Landroid/widget/EditText;

.field private listener:Landroid/view/View$OnClickListener;

.field private longListener:Landroid/view/View$OnLongClickListener;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_ADD_YEAR:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_ADD_MONTH:I

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_ADD_DAY:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_ADD_HOUR:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_ADD_MINUTE:I

    .line 40
    const/4 v0, 0x6

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_SUB_YEAR:I

    .line 41
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_SUB_MONTH:I

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_SUB_DAY:I

    .line 43
    const/16 v0, 0x9

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_SUB_HOUR:I

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->MSG_SUB_MINUTE:I

    .line 47
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$1;-><init>(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$2;-><init>(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    .line 191
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$3;-><init>(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    .line 231
    new-instance v0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment$4;-><init>(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addYear()V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addMonth()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->sureToSet()V

    return-void
.end method

.method static synthetic access$1200(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->initDate()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addDay()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addHour()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addMinture()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subYear()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subMonth()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subDay()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subHour()V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/Fragment/SettingTimeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Fragment/SettingTimeFragment;

    .line 27
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subMinture()V

    return-void
.end method

.method private addDay()V
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "temp":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 299
    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 301
    .local v2, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 302
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 303
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .end local v2    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return-void
.end method

.method private addHour()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 314
    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addDay()V

    .line 316
    const/4 v0, 0x0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method private addMinture()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 324
    const/16 v1, 0x3b

    if-le v0, v1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addHour()V

    .line 326
    const/4 v0, 0x0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method private addMonth()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 289
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->addYear()V

    .line 291
    const/4 v0, 0x1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method private addYear()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "year":I
    add-int/lit8 v0, v0, 0x1

    .line 283
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method private getDate()Ljava/util/Date;
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 385
    .local v1, "month":I
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 386
    .local v2, "day":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 387
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "strDateTime":Ljava/lang/String;
    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 389
    .local v4, "date":Ljava/util/Date;
    return-object v4
.end method

.method private initDate()V
    .locals 4

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 106
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSure:Landroid/widget/Button;

    .line 107
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnCancel:Landroid/widget/Button;

    .line 108
    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddYear:Landroid/widget/Button;

    .line 109
    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMonth:Landroid/widget/Button;

    .line 110
    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddDay:Landroid/widget/Button;

    .line 111
    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddHour:Landroid/widget/Button;

    .line 112
    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMinute:Landroid/widget/Button;

    .line 113
    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubYear:Landroid/widget/Button;

    .line 114
    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMonth:Landroid/widget/Button;

    .line 115
    const v0, 0x7f080083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubDay:Landroid/widget/Button;

    .line 116
    const v0, 0x7f080084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubHour:Landroid/widget/Button;

    .line 117
    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMinute:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0800c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    .line 121
    const v0, 0x7f0800bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    .line 123
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->initDate()V

    .line 139
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSure:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    return-void
.end method

.method private subDay()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "temp":I
    const/4 v1, -0x1

    add-int/2addr v0, v1

    .line 350
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 352
    .local v3, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 353
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 354
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .end local v3    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    return-void
.end method

.method private subHour()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 365
    if-gez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subDay()V

    .line 367
    const/16 v0, 0x17

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private subMinture()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 375
    if-gez v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subHour()V

    .line 377
    const/16 v0, 0x3b

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method private subMonth()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 340
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 341
    const/16 v0, 0xc

    .line 342
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->subYear()V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method private subYear()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 334
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method private sureToSet()V
    .locals 15

    .line 395
    iget-object v0, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "month":I
    iget-object v2, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "day":I
    iget-object v3, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "hour":I
    iget-object v4, p0, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 400
    .local v4, "minute":I
    const v5, 0x7f0c00c6

    const/16 v6, 0x7b2

    if-lt v0, v6, :cond_b

    const/16 v6, 0x898

    if-le v0, v6, :cond_0

    goto/16 :goto_3

    .line 404
    :cond_0
    const/4 v6, 0x1

    if-lt v1, v6, :cond_a

    const/16 v7, 0xc

    if-le v1, v7, :cond_1

    goto/16 :goto_2

    .line 408
    :cond_1
    if-lt v2, v6, :cond_9

    const/16 v8, 0x1f

    if-le v2, v8, :cond_2

    goto/16 :goto_1

    .line 412
    :cond_2
    const/16 v8, 0x18

    if-le v3, v8, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 414
    return-void

    .line 416
    :cond_3
    if-gez v3, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 418
    return-void

    .line 420
    :cond_4
    const/16 v8, 0x3b

    if-gt v4, v8, :cond_8

    if-gez v4, :cond_5

    goto :goto_0

    .line 425
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 426
    .local v5, "c":Ljava/util/Calendar;
    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/4 v6, 0x2

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 428
    const/4 v6, 0x5

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 430
    invoke-virtual {v5, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 433
    .local v6, "when":J
    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    const-wide/32 v12, 0x7fffffff

    cmp-long v14, v10, v12

    if-gez v14, :cond_6

    .line 434
    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 436
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 437
    .local v10, "now":J
    sub-long v12, v10, v6

    cmp-long v14, v12, v8

    if-lez v14, :cond_7

    .line 438
    const-string v8, "as"

    const-string v9, "=====failed to set Time."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_7
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->initDate()V

    .line 442
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0c00a2

    invoke-virtual {p0, v9}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v8, v9, v12}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 444
    return-void

    .line 421
    .end local v5    # "c":Ljava/util/Calendar;
    .end local v6    # "when":J
    .end local v10    # "now":J
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 422
    return-void

    .line 409
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 410
    return-void

    .line 405
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 406
    return-void

    .line 401
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 402
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

    .line 91
    const v0, 0x7f0a0061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->initView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->setViewIncident()V

    .line 94
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/wen/fluorescence/Fragment/SettingTimeFragment;->initDate()V

    .line 103
    :cond_0
    return-void
.end method
