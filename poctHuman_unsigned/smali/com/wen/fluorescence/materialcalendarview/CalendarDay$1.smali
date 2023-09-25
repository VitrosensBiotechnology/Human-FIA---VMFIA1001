.class final Lcom/wen/fluorescence/materialcalendarview/CalendarDay$1;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 283
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p1, "size"    # I

    .line 287
    new-array v0, p1, [Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay$1;->newArray(I)[Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object p1

    return-object p1
.end method
