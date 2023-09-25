.class public Lcom/wen/fluorescence/ViewUtil/DatePickerListener;
.super Lcom/wen/fluorescence/util/MyOnClickListener;
.source "DatePickerListener.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/wen/fluorescence/util/MyOnClickListener;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private selectDate(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 36
    new-instance v1, Lcom/wen/fluorescence/util/MyDateSelector;

    invoke-direct {v1}, Lcom/wen/fluorescence/util/MyDateSelector;-><init>()V

    .line 37
    .local v1, "selector":Lcom/wen/fluorescence/util/MyDateSelector;
    iget-object v2, p0, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/wen/fluorescence/ViewUtil/DatePickerListener$1;

    invoke-direct {v3, p0, p1}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener$1;-><init>(Lcom/wen/fluorescence/ViewUtil/DatePickerListener;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/MyDateSelector;->show(Landroid/content/Context;Lcom/wen/fluorescence/util/MyDateSelector$DateTimeCallBack;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .line 28
    invoke-super {p0, p1}, Lcom/wen/fluorescence/util/MyOnClickListener;->onClick(Landroid/view/View;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/ViewUtil/DatePickerListener;->selectDate(Landroid/view/View;)V

    .line 30
    return-void
.end method
