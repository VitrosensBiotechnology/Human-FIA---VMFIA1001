.class public final Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _calendar:Ljava/util/Calendar;

.field private transient _date:Ljava/util/Date;

.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay$1;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 90
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    .line 114
    iput p2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    .line 115
    iput p3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;-><init>(III)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    nop

    .line 99
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 100
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 101
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    .line 98
    invoke-direct {p0, v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;-><init>(III)V

    .line 103
    return-void
.end method

.method public static from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-direct {v0, p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;-><init>(III)V

    return-object v0
.end method

.method public static from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 2
    .param p0, "date"    # J

    .line 63
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "instance":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    return-object v1
.end method

.method public static from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    nop

    .line 50
    invoke-static {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 51
    invoke-static {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 52
    invoke-static {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    .line 49
    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(III)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method private static hashCode(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 253
    mul-int/lit16 v0, p0, 0x2710

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static today()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 23
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 183
    return-void
.end method

.method copyToMonthOnly(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 174
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 234
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 235
    return v0

    .line 237
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 243
    .local v2, "that":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    iget v4, v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v4, v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v4, v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 238
    .end local v2    # "that":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    .line 167
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 248
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->hashCode(III)I

    move-result v0

    return v0
.end method

.method public isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 226
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    if-le v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :goto_1
    return v2

    .line 228
    :cond_3
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    if-le v0, v1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2
.end method

.method public isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 208
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    if-ge v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :goto_1
    return v2

    .line 210
    :cond_3
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    if-ge v0, v1, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2
.end method

.method public isInRange(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z
    .locals 1
    .param p1, "minDate"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "maxDate"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 194
    invoke-virtual {p2, p0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 193
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarDay{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 276
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    return-void
.end method
