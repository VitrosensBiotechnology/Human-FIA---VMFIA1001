.class public Lcom/wen/fluorescence/util/MyDateTimeSelector;
.super Ljava/lang/Object;
.source "MyDateTimeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;
    }
.end annotation


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

.field private btnSubDay:Landroid/widget/Button;

.field private btnSubHour:Landroid/widget/Button;

.field private btnSubMinute:Landroid/widget/Button;

.field private btnSubMonth:Landroid/widget/Button;

.field private btnSubYear:Landroid/widget/Button;

.field private context:Landroid/content/Context;

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_ADD_YEAR:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_ADD_MONTH:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_ADD_DAY:I

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_ADD_HOUR:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_ADD_MINUTE:I

    .line 92
    const/4 v0, 0x6

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_SUB_YEAR:I

    .line 93
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_SUB_MONTH:I

    .line 94
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_SUB_DAY:I

    .line 95
    const/16 v0, 0x9

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_SUB_HOUR:I

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->MSG_SUB_MINUTE:I

    .line 99
    new-instance v0, Lcom/wen/fluorescence/util/MyDateTimeSelector$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector$3;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/wen/fluorescence/util/MyDateTimeSelector$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector$4;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    .line 221
    new-instance v0, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector$5;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    .line 261
    new-instance v0, Lcom/wen/fluorescence/util/MyDateTimeSelector$6;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector$6;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/util/MyDateTimeSelector;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;
    .param p1, "x1"    # Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

    .line 25
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->sureToSet(Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addYear()V

    return-void
.end method

.method static synthetic access$1000(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subMinture()V

    return-void
.end method

.method static synthetic access$1100(Lcom/wen/fluorescence/util/MyDateTimeSelector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addMonth()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addHour()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addMinture()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subYear()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subMonth()V

    return-void
.end method

.method static synthetic access$800(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subDay()V

    return-void
.end method

.method static synthetic access$900(Lcom/wen/fluorescence/util/MyDateTimeSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateTimeSelector;

    .line 25
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subHour()V

    return-void
.end method

.method private addDay()V
    .locals 7

    .line 321
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "temp":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 323
    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 325
    .local v2, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 326
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 327
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

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

    .line 328
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

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

    .line 330
    .end local v2    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :goto_0
    return-void
.end method

.method private addHour()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 338
    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addDay()V

    .line 340
    const/4 v0, 0x0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private addMinture()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 348
    const/16 v1, 0x3b

    if-le v0, v1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addHour()V

    .line 350
    const/4 v0, 0x0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method private addMonth()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 313
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->addYear()V

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method private addYear()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "year":I
    add-int/lit8 v0, v0, 0x1

    .line 307
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method private getDate()Ljava/util/Date;
    .locals 7

    .line 407
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, "month":I
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 410
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

    .line 411
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "strDateTime":Ljava/lang/String;
    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 413
    .local v4, "date":Ljava/util/Date;
    return-object v4
.end method

.method private initDate()V
    .locals 4

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method private initDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 74
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->initView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->setViewIncident()V

    .line 76
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 140
    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddYear:Landroid/widget/Button;

    .line 141
    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMonth:Landroid/widget/Button;

    .line 142
    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddDay:Landroid/widget/Button;

    .line 143
    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddHour:Landroid/widget/Button;

    .line 144
    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMinute:Landroid/widget/Button;

    .line 145
    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubYear:Landroid/widget/Button;

    .line 146
    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMonth:Landroid/widget/Button;

    .line 147
    const v0, 0x7f080083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubDay:Landroid/widget/Button;

    .line 148
    const v0, 0x7f080084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubHour:Landroid/widget/Button;

    .line 149
    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMinute:Landroid/widget/Button;

    .line 150
    const v0, 0x7f0800c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    .line 151
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    .line 152
    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    .line 153
    const v0, 0x7f0800bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    .line 154
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    .line 155
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->initDate()V

    .line 171
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnAddMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubHour:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->btnSubMinute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    return-void
.end method

.method private subDay()V
    .locals 7

    .line 372
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    .local v0, "temp":I
    const/4 v1, -0x1

    add-int/2addr v0, v1

    .line 374
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 376
    .local v3, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 377
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 378
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

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

    .line 379
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

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

    .line 381
    .end local v3    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_0
    return-void
.end method

.method private subHour()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 389
    if-gez v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subDay()V

    .line 391
    const/16 v0, 0x17

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method private subMinture()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 399
    if-gez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subHour()V

    .line 401
    const/16 v0, 0x3b

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method private subMonth()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 364
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 365
    const/16 v0, 0xc

    .line 366
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->subYear()V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method private subYear()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 358
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method

.method private sureToSet(Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V
    .locals 11
    .param p1, "callBack"    # Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

    .line 419
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 421
    .local v7, "month":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 422
    .local v8, "day":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddHour:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 423
    .local v9, "hour":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->etAddMinute:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 424
    .local v10, "minute":I
    const v1, 0x7f0c00c6

    const/16 v2, 0x7b2

    if-lt v0, v2, :cond_a

    const/16 v2, 0x898

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    .line 428
    :cond_0
    const/4 v2, 0x1

    if-lt v7, v2, :cond_9

    const/16 v3, 0xc

    if-le v7, v3, :cond_1

    goto :goto_2

    .line 432
    :cond_1
    if-lt v8, v2, :cond_8

    const/16 v2, 0x1f

    if-le v8, v2, :cond_2

    goto :goto_1

    .line 436
    :cond_2
    const/16 v2, 0x18

    if-le v9, v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 438
    return-void

    .line 440
    :cond_3
    if-gez v9, :cond_4

    .line 441
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 442
    return-void

    .line 444
    :cond_4
    const/16 v2, 0x3b

    if-gt v10, v2, :cond_7

    if-gez v10, :cond_5

    goto :goto_0

    .line 449
    :cond_5
    if-eqz p1, :cond_6

    .line 451
    move-object v1, p1

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;->receiveDateTime(IIIII)V

    .line 455
    :cond_6
    return-void

    .line 445
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 446
    return-void

    .line 433
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 434
    return-void

    .line 429
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 430
    return-void

    .line 425
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;

    .line 33
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateTimeSelector;->context:Landroid/content/Context;

    .line 34
    const v0, 0x7f0a003d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 37
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 38
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 39
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 42
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 45
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 46
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 47
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 48
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 49
    const/16 v4, 0x271

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    const/16 v4, 0x1ae

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/util/MyDateTimeSelector;->initDialogView(Landroid/view/View;)V

    .line 55
    const v4, 0x7f080089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 56
    .local v4, "btnSure":Landroid/widget/Button;
    const v5, 0x7f08003b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 58
    .local v5, "btnCancel":Landroid/widget/Button;
    new-instance v6, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;

    invoke-direct {v6, p0, p2, v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector$1;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;Lcom/wen/fluorescence/util/MyDateTimeSelector$DateTimeCallBack;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v6, Lcom/wen/fluorescence/util/MyDateTimeSelector$2;

    invoke-direct {v6, p0, v1}, Lcom/wen/fluorescence/util/MyDateTimeSelector$2;-><init>(Lcom/wen/fluorescence/util/MyDateTimeSelector;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
