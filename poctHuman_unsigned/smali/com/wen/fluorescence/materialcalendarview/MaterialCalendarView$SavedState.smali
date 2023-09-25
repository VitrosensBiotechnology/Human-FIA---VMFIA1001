.class public Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowClickDaysOutsideCurrentMonth:Z

.field cacheCurrentPosition:Z

.field calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field color:I

.field currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field dateTextAppearance:I

.field dynamicHeightEnabled:Z

.field firstDayOfWeek:I

.field maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field orientation:I

.field selectedDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field selectionMode:I

.field showOtherDates:I

.field showWeekDays:Z

.field tileHeightPx:I

.field tileWidthPx:I

.field topbarVisible:Z

.field weekDayTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1229
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState$1;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1241
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1182
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1183
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1184
    const/4 v1, 0x4

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1187
    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1189
    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1190
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1191
    const/4 v3, -0x1

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1192
    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1193
    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1194
    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1195
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1196
    sget-object v3, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1197
    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1246
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1247
    const-class v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1248
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1249
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1250
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    sget-object v4, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_3

    sget-object v3, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    :goto_3
    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1259
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    iput-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    nop

    :cond_5
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showWeekDays:Z

    .line 1262
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;

    .line 1179
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 1202
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1182
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1183
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1184
    const/4 v1, 0x4

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1187
    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1189
    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1190
    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1191
    const/4 v3, -0x1

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1192
    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1193
    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1194
    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1195
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1196
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1197
    iput-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1203
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 1207
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1208
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1213
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1214
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1215
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1216
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v2, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1225
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1226
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showWeekDays:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1227
    return-void
.end method
