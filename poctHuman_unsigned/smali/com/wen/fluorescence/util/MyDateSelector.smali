.class public Lcom/wen/fluorescence/util/MyDateSelector;
.super Ljava/lang/Object;
.source "MyDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;
    }
.end annotation


# instance fields
.field private final MSG_ADD_DAY:I

.field private final MSG_ADD_MONTH:I

.field private final MSG_ADD_YEAR:I

.field private final MSG_SUB_DAY:I

.field private final MSG_SUB_MONTH:I

.field private final MSG_SUB_YEAR:I

.field private btnAddDay:Landroid/widget/Button;

.field private btnAddMonth:Landroid/widget/Button;

.field private btnAddYear:Landroid/widget/Button;

.field private btnSubDay:Landroid/widget/Button;

.field private btnSubMonth:Landroid/widget/Button;

.field private btnSubYear:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private etAddDay:Landroid/widget/EditText;

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_ADD_YEAR:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_ADD_MONTH:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_ADD_DAY:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_SUB_YEAR:I

    .line 87
    const/4 v0, 0x7

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_SUB_MONTH:I

    .line 88
    const/16 v0, 0x8

    iput v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->MSG_SUB_DAY:I

    .line 91
    new-instance v0, Lcom/wen/fluorescence/util/MyDateSelector$3;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateSelector$3;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/wen/fluorescence/util/MyDateSelector$4;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateSelector$4;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    .line 183
    new-instance v0, Lcom/wen/fluorescence/util/MyDateSelector$5;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateSelector$5;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    .line 211
    new-instance v0, Lcom/wen/fluorescence/util/MyDateSelector$6;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/util/MyDateSelector$6;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/util/MyDateSelector;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;
    .param p1, "x1"    # Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

    .line 23
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/util/MyDateSelector;->sureToSet(Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->addYear()V

    return-void
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->addMonth()V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->addDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->subYear()V

    return-void
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->subMonth()V

    return-void
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/util/MyDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->subDay()V

    return-void
.end method

.method static synthetic access$700(Lcom/wen/fluorescence/util/MyDateSelector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/util/MyDateSelector;

    .line 23
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addDay()V
    .locals 7

    .line 265
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "temp":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 267
    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 269
    .local v2, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 270
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 271
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

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

    .line 272
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

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

    .line 274
    .end local v2    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    return-void
.end method

.method private addMonth()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 257
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->addYear()V

    .line 259
    const/4 v0, 0x1

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method private addYear()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, "year":I
    add-int/lit8 v0, v0, 0x1

    .line 251
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method private getDate()Ljava/util/Date;
    .locals 7

    .line 312
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 314
    .local v1, "month":I
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 315
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

    .line 316
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "strDateTime":Ljava/lang/String;
    const-string v4, "yyyy-MM-dd"

    invoke-static {v3, v4}, Lcom/wen/fluorescence/util/DateUtils;->string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 318
    .local v4, "date":Ljava/util/Date;
    return-object v4
.end method

.method private initDate()V
    .locals 4

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method private initDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 72
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/util/MyDateSelector;->initView(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->setViewIncident()V

    .line 74
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 121
    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddYear:Landroid/widget/Button;

    .line 122
    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddMonth:Landroid/widget/Button;

    .line 123
    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddDay:Landroid/widget/Button;

    .line 124
    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubYear:Landroid/widget/Button;

    .line 125
    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubMonth:Landroid/widget/Button;

    .line 126
    const v0, 0x7f080083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubDay:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0800c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    .line 128
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    .line 129
    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    .line 130
    return-void
.end method

.method private setViewIncident()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->initDate()V

    .line 144
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnAddDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubYear:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubMonth:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->btnSubDay:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    return-void
.end method

.method private subDay()V
    .locals 7

    .line 296
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "temp":I
    const/4 v1, -0x1

    add-int/2addr v0, v1

    .line 298
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 300
    .local v3, "c":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 301
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 302
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

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

    .line 303
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

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

    .line 305
    .end local v3    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_0
    return-void
.end method

.method private subMonth()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 288
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 289
    const/16 v0, 0xc

    .line 290
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyDateSelector;->subYear()V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method private subYear()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "temp":I
    add-int/lit8 v0, v0, -0x1

    .line 282
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method private sureToSet(Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V
    .locals 6
    .param p1, "callBack"    # Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

    .line 324
    iget-object v0, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddYear:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "year":I
    iget-object v1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "month":I
    iget-object v2, p0, Lcom/wen/fluorescence/util/MyDateSelector;->etAddDay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 327
    .local v2, "day":I
    const v3, 0x7f0c00c6

    const/16 v4, 0x7b2

    if-lt v0, v4, :cond_6

    const/16 v4, 0x898

    if-le v0, v4, :cond_0

    goto :goto_2

    .line 331
    :cond_0
    const/4 v4, 0x1

    if-lt v1, v4, :cond_5

    const/16 v5, 0xc

    if-le v1, v5, :cond_1

    goto :goto_1

    .line 335
    :cond_1
    if-lt v2, v4, :cond_4

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2

    goto :goto_0

    .line 340
    :cond_2
    if-eqz p1, :cond_3

    .line 341
    invoke-interface {p1, v0, v1, v2}, Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;->receiveDateTime(III)V

    .line 342
    :cond_3
    return-void

    .line 336
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 337
    return-void

    .line 332
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 333
    return-void

    .line 328
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wen/fluorescence/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;

    .line 31
    iput-object p1, p0, Lcom/wen/fluorescence/util/MyDateSelector;->context:Landroid/content/Context;

    .line 32
    const v0, 0x7f0a003c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 35
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 36
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 37
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 43
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 44
    .local v2, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 45
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 46
    const/4 v4, 0x6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 47
    const/16 v4, 0x249

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    const/16 v4, 0x190

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/wen/fluorescence/util/MyDateSelector;->initDialogView(Landroid/view/View;)V

    .line 53
    const v4, 0x7f080089

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 54
    .local v4, "btnSure":Landroid/widget/Button;
    const v5, 0x7f08003b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 56
    .local v5, "btnCancel":Landroid/widget/Button;
    new-instance v6, Lcom/wen/fluorescence/util/MyDateSelector$1;

    invoke-direct {v6, p0, p2, v1}, Lcom/wen/fluorescence/util/MyDateSelector$1;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v6, Lcom/wen/fluorescence/util/MyDateSelector$2;

    invoke-direct {v6, p0, v1}, Lcom/wen/fluorescence/util/MyDateSelector$2;-><init>(Lcom/wen/fluorescence/util/MyDateSelector;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
