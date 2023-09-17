.class public Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
.super Landroid/view/ViewGroup;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;,
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;,
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;,
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;,
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$ShowOtherDates;,
        Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SelectionMode;
    }
.end annotation


# static fields
.field private static final DAY_NAMES_ROW:I = 0x1

.field private static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_MAX_WEEKS:I = 0x6

.field public static final DEFAULT_TILE_SIZE_DP:I = 0x2c

.field private static final DEFAULT_TITLE_FORMATTER:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

.field public static final HORIZONTAL:I = 0x1

.field public static final INVALID_TILE_DIMENSION:I = -0xa

.field public static final SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final SELECTION_MODE_NONE:I = 0x0

.field public static final SELECTION_MODE_RANGE:I = 0x3

.field public static final SELECTION_MODE_SINGLE:I = 0x1

.field public static final SHOW_ALL:I = 0x7

.field public static final SHOW_DECORATED_DISABLED:I = 0x4

.field public static final SHOW_DEFAULTS:I = 0x4

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OTHER_MONTHS:I = 0x1

.field public static final SHOW_OUT_OF_RANGE:I = 0x2

.field public static final VERTICAL:I


# instance fields
.field private accentColor:I

.field private adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private allowClickDaysOutsideCurrentMonth:Z

.field private arrowColor:I

.field private final buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

.field private final buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

.field calendarContentDescription:Ljava/lang/CharSequence;

.field private calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

.field private currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private final dayViewDecorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private leftArrowMask:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;

.field private longClickListener:Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;

.field private mDynamicHeightEnabled:Z

.field private maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private monthListener:Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

.field private rangeListener:Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;

.field private rightArrowMask:Landroid/graphics/drawable/Drawable;

.field private selectionMode:I

.field private showWeekDays:Z

.field private state:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

.field private tileHeight:I

.field private tileWidth:I

.field private final title:Landroid/widget/TextView;

.field private final titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

.field private topbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/format/DateFormatTitleFormatter;

    invoke-direct {v0}, Lcom/wen/fluorescence/materialcalendarview/format/DateFormatTitleFormatter;-><init>()V

    sput-object v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$1;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$2;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 221
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 230
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 233
    const/16 v2, -0xa

    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 234
    iput v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 235
    const/4 v3, 0x1

    iput v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 237
    iput-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    .line 250
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 260
    :goto_0
    new-instance v4, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    .line 261
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c011a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v4, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    .line 263
    new-instance v4, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    .line 264
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v4, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    .line 267
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v4, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;-><init>(Landroid/widget/TextView;)V

    iput-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    .line 271
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    sget-object v5, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 273
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 274
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    new-instance v5, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$3;

    invoke-direct {v5, p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$3;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    invoke-virtual {v4, v0, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/wen/fluorescence/R$styleable;->MaterialCalendarView:[I

    .line 283
    invoke-virtual {v4, p2, v5, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 285
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 289
    .local v5, "calendarModeIndex":I
    const/4 v6, -0x1

    const/4 v7, 0x4

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 294
    iget-object v6, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    const/16 v8, 0x10

    .line 295
    invoke-virtual {v4, v8, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 294
    invoke-virtual {v6, v8}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->setOrientation(I)V

    .line 298
    iget v6, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    if-gez v6, :cond_1

    .line 299
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    iput v6, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 302
    :cond_1
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    .line 304
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->newState()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v6

    iget v8, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 305
    invoke-virtual {v6, v8}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v6

    .line 306
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->values()[Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v6, v8}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/wen/fluorescence/materialcalendarview/CalendarMode;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    .line 307
    invoke-virtual {v6, v8}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setShowWeekDays(Z)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v6

    .line 308
    invoke-virtual {v6}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 310
    const/16 v6, 0xa

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectionMode(I)V

    .line 315
    const/16 v6, 0xe

    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 316
    .local v6, "tileSize":I
    if-le v6, v2, :cond_2

    .line 317
    invoke-virtual {p0, v6}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 320
    :cond_2
    const/16 v8, 0xf

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v8

    .line 321
    .local v8, "tileWidth":I
    if-le v8, v2, :cond_3

    .line 322
    invoke-virtual {p0, v8}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 325
    :cond_3
    const/16 v9, 0xd

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 326
    .local v9, "tileHeight":I
    if-le v9, v2, :cond_4

    .line 327
    invoke-virtual {p0, v9}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 330
    :cond_4
    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setArrowColor(I)V

    .line 334
    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 337
    .local v1, "leftMask":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f0700b1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 340
    :cond_5
    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 344
    .local v2, "rightMask":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_6

    .line 345
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700b0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v2, v10

    .line 347
    :cond_6
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setRightArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 349
    const/16 v10, 0x9

    .line 352
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getThemeAccentColor(Landroid/content/Context;)I

    move-result v11

    .line 350
    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 349
    invoke-virtual {p0, v10}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 356
    const/16 v10, 0x11

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 357
    .local v10, "array":[Ljava/lang/CharSequence;
    if-eqz v10, :cond_7

    .line 358
    new-instance v11, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v11, v10}, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 361
    :cond_7
    const/4 v11, 0x7

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    move-object v10, v11

    .line 362
    if-eqz v10, :cond_8

    .line 363
    new-instance v11, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v11, v10}, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 366
    :cond_8
    const/4 v11, 0x5

    const v12, 0x7f0d00f4

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setHeaderTextAppearance(I)V

    .line 370
    const/16 v11, 0x12

    const v12, 0x7f0d00f5

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 374
    const/4 v11, 0x3

    const v12, 0x7f0d00f3

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 379
    const/16 v11, 0xb

    invoke-virtual {v4, v11, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 384
    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v1    # "leftMask":Landroid/graphics/drawable/Drawable;
    .end local v2    # "rightMask":Landroid/graphics/drawable/Drawable;
    .end local v5    # "calendarModeIndex":I
    .end local v6    # "tileSize":I
    .end local v8    # "tileWidth":I
    .end local v9    # "tileHeight":I
    .end local v10    # "array":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 391
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    nop

    .line 395
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 396
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setupChildren()V

    .line 398
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->today()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 399
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 401
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->removeView(Landroid/view/View;)V

    .line 403
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MonthView;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/MonthView;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;IZ)V

    .line 404
    .local v0, "monthView":Lcom/wen/fluorescence/materialcalendarview/MonthView;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->setSelectionColor(I)V

    .line 405
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    .line 406
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    .line 407
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MonthView;->setShowOtherDates(I)V

    .line 408
    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v2, v2, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    .end local v0    # "monthView":Lcom/wen/fluorescence/materialcalendarview/MonthView;
    :cond_9
    return-void

    .line 391
    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/DirectionButton;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPager;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/DirectionButton;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p1, "x1"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 68
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->commit(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;
    .param p1, "x1"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 68
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/TitleChanger;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    .line 68
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method private static clampSize(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "spec"    # I

    .line 1749
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1750
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1751
    .local v1, "specSize":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    .line 1760
    return p0

    .line 1753
    :cond_0
    return v1

    .line 1756
    :cond_1
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private commit(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)V
    .locals 6
    .param p1, "state"    # Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, "calendarDayToShow":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2031
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 2032
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v3

    if-eq v1, v3, :cond_5

    .line 2033
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 2034
    .local v1, "currentlySelectedDate":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v4, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    .line 2036
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 2037
    .local v3, "lastVisibleCalendar":Ljava/util/Calendar;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 2038
    invoke-static {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v4

    .line 2039
    .local v4, "lastVisibleCalendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2040
    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2042
    :cond_0
    move-object v0, v1

    .line 2044
    .end local v3    # "lastVisibleCalendar":Ljava/util/Calendar;
    .end local v4    # "lastVisibleCalendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v4, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->WEEKS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    if-ne v3, v4, :cond_5

    .line 2046
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 2047
    .restart local v3    # "lastVisibleCalendar":Ljava/util/Calendar;
    const/4 v4, 0x7

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2048
    invoke-static {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v4

    .line 2049
    .restart local v4    # "lastVisibleCalendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    if-eqz v1, :cond_4

    .line 2050
    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2051
    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2053
    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 2055
    :cond_4
    move-object v0, v4

    .line 2061
    .end local v1    # "currentlySelectedDate":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .end local v3    # "lastVisibleCalendar":Ljava/util/Calendar;
    .end local v4    # "lastVisibleCalendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    :cond_5
    :goto_0
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->state:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    .line 2063
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 2064
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)I

    move-result v1

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    .line 2065
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 2066
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$1900(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 2067
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$2000(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    .line 2071
    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$4;->$SwitchMap$com$wen$fluorescence$materialcalendarview$CalendarMode:[I

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 2079
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided display mode which is not yet implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2076
    :pswitch_0
    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/materialcalendarview/WeekPagerAdapter;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    .line 2077
    .local v1, "newAdapter":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<*>;"
    goto :goto_1

    .line 2073
    .end local v1    # "newAdapter":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<*>;"
    :pswitch_1
    new-instance v1, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;

    invoke-direct {v1, p0}, Lcom/wen/fluorescence/materialcalendarview/MonthPagerAdapter;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    .line 2074
    .restart local v1    # "newAdapter":Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;, "Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter<*>;"
    nop

    .line 2079
    :goto_1
    nop

    .line 2081
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    if-nez v3, :cond_6

    .line 2082
    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    goto :goto_2

    .line 2084
    :cond_6
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v3, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->migrateStateAndReturn(Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;)Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    .line 2086
    :goto_2
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-boolean v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setShowWeekDays(Z)V

    .line 2087
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v3, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2088
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-direct {p0, v3, v4}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 2091
    iget-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v3, v3, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v3, v2

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v3, v3, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 2092
    .local v3, "tileHeight":I
    :goto_3
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    new-instance v5, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    invoke-direct {v5, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2094
    iget v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-ne v4, v2, :cond_8

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    .line 2095
    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    .line 2096
    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    goto :goto_4

    .line 2097
    :cond_8
    invoke-static {}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->today()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 2094
    :goto_4
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 2099
    if-eqz v0, :cond_9

    .line 2100
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(I)V

    .line 2103
    :cond_9
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    .line 2104
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 2105
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 606
    int-to-float v0, p1

    .line 607
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 606
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static getThemeAccentColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1268
    const v0, 0x1010435

    .line 1268
    .local v0, "colorAttr":I
    goto :goto_0

    .line 1271
    .end local v0    # "colorAttr":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "colorAccent"

    const-string v2, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1273
    .restart local v0    # "colorAttr":I
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1274
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1275
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method private getWeekCountBasedOnMode()I
    .locals 5

    .line 1726
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v0, v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 1727
    .local v0, "weekCount":I
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v2, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1728
    .local v1, "isInMonthsMode":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    if-eqz v2, :cond_0

    .line 1729
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 1730
    .local v2, "cal":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1732
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1735
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1736
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1738
    .end local v2    # "cal":Ljava/util/Calendar;
    :cond_0
    iget-boolean v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method private setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 4
    .param p1, "min"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "max"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1168
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1169
    .local v0, "c":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setRangeDates(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1170
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1171
    if-eqz p1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    :goto_0
    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1174
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v1

    .line 1175
    .local v1, "position":I
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 1176
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1177
    return-void
.end method

.method private setupChildren()V
    .locals 8

    .line 413
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    .line 414
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 415
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 416
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 417
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 420
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    invoke-direct {v4, v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 428
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setId(I)V

    .line 431
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setOffscreenPageLimit(I)V

    .line 432
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v0, v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iget v0, v0, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->visibleWeeksCount:I

    .line 433
    .local v0, "tileHeight":I
    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    new-instance v2, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    invoke-direct {v2, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method public static showDecoratedDisabled(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .line 1607
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showOtherMonths(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .line 1591
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showOutOfRange(I)Z
    .locals 1
    .param p0, "showOtherDates"    # I

    .line 1599
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateUi()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->change(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 438
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 440
    return-void
.end method


# virtual methods
.method public addDecorator(Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .param p1, "decorator"    # Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    .line 1335
    if-nez p1, :cond_0

    .line 1336
    return-void

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1340
    return-void
.end method

.method public addDecorators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .line 1312
    .local p1, "decorators":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;>;"
    if-nez p1, :cond_0

    .line 1313
    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1317
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1318
    return-void
.end method

.method public varargs addDecorators([Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;)V
    .locals 1
    .param p1, "decorators"    # [Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    .line 1326
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->addDecorators(Ljava/util/Collection;)V

    .line 1327
    return-void
.end method

.method public allowClickDaysOutsideCurrentMonth()Z
    .locals 1

    .line 1007
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canGoForward()Z
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1813
    instance-of v0, p1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    return v0
.end method

.method public clearSelection()V
    .locals 4

    .line 806
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 807
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 808
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 809
    .local v2, "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 810
    .end local v2    # "day":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method protected dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "selected"    # Z

    .line 1424
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->listener:Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->listener:Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;->onDateSelected(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1427
    :cond_0
    return-void
.end method

.method protected dispatchOnMonthChanged(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1463
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;->onMonthChanged(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1466
    :cond_0
    return-void
.end method

.method protected dispatchOnRangeSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 7
    .param p1, "firstDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "lastDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1436
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;

    .line 1437
    .local v0, "listener":Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v1, "days":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1440
    .local v2, "counter":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1443
    .local v3, "end":Ljava/util/Calendar;
    invoke-virtual {p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1445
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1452
    :cond_0
    if-eqz v0, :cond_1

    .line 1453
    invoke-interface {v0, p0, v1}, Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;->onRangeSelected(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Ljava/util/List;)V

    .line 1455
    :cond_1
    return-void

    .line 1446
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v4

    .line 1447
    .local v4, "current":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v5, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1448
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    const/4 v5, 0x5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1450
    .end local v4    # "current":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1164
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1165
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1159
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1160
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->generateDefaultLayoutParams()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 2

    .line 1619
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1818
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1800
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public getArrowColor()I
    .locals 1

    .line 667
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->arrowColor:I

    return v0
.end method

.method public getCalendarContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0
.end method

.method public getCalendarMode()Lcom/wen/fluorescence/materialcalendarview/CalendarMode;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    return-object v0
.end method

.method public getCurrentDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getItem(I)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1282
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->firstDayOfWeek:I

    return v0
.end method

.method public getLeftArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaximumDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getRightArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 787
    .local v0, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    const/4 v1, 0x0

    return-object v1

    .line 790
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v1
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->accentColor:I

    return v0
.end method

.method public getSelectionMode()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    return v0
.end method

.method public getShowOtherDates()I
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getShowOtherDates()I

    move-result v0

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    return v0
.end method

.method public getTileSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    .line 584
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    return v0
.end method

.method public getTitleAnimationOrientation()I
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getTopbarVisible()Z
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goToNext()V
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 506
    :cond_0
    return-void
.end method

.method public goToPrevious()V
    .locals 3

    .line 492
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 495
    :cond_0
    return-void
.end method

.method public invalidateDecorators()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->invalidateDecorators()V

    .line 1366
    return-void
.end method

.method public isDynamicHeightEnabled()Z
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    return v0
.end method

.method public isPagingEnabled()Z
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->isPagingEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowWeekDays()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    return v0
.end method

.method public newState()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1

    .line 1878
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;)V

    return-object v0
.end method

.method protected onDateClicked(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 3
    .param p1, "date"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "nowSelected"    # Z

    .line 1476
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1513
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1514
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1515
    invoke-virtual {p0, p1, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    goto :goto_2

    .line 1483
    :pswitch_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    .line 1485
    .local v0, "currentSelection":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1487
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1488
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    goto :goto_1

    .line 1489
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1491
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1492
    .local v1, "firstDaySelected":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1493
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1495
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    goto :goto_0

    .line 1496
    :cond_1
    invoke-virtual {v1, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1498
    invoke-virtual {p0, p1, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1501
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1503
    .end local v1    # "firstDaySelected":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    :goto_0
    goto :goto_1

    .line 1505
    :cond_3
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->clearSelections()V

    .line 1506
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1507
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1510
    .end local v0    # "currentSelection":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    :goto_1
    goto :goto_2

    .line 1478
    :pswitch_1
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1479
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1481
    nop

    .line 1519
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDateClicked(Lcom/wen/fluorescence/materialcalendarview/DayView;)V
    .locals 6
    .param p1, "dayView"    # Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 1544
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getCurrentDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 1545
    .local v0, "currentDate":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 1546
    .local v1, "selectedDate":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    .line 1547
    .local v2, "currentMonth":I
    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    .line 1549
    .local v3, "selectedMonth":I
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    sget-object v5, Lcom/wen/fluorescence/materialcalendarview/CalendarMode;->MONTHS:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    if-eqz v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 1552
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->goToPrevious()V

    goto :goto_0

    .line 1554
    :cond_0
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isBefore(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1555
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->goToNext()V

    .line 1558
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v4

    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->isChecked()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->onDateClicked(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1560
    return-void
.end method

.method protected onDateLongClicked(Lcom/wen/fluorescence/materialcalendarview/DayView;)V
    .locals 2
    .param p1, "dayView"    # Lcom/wen/fluorescence/materialcalendarview/DayView;

    .line 1568
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->longClickListener:Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->longClickListener:Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;

    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;->onDateLongClick(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1571
    :cond_0
    return-void
.end method

.method protected onDateUnselected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1580
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1824
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1825
    const-class v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1826
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1830
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1831
    const-class v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1832
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1770
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result v0

    .line 1772
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v1

    .line 1773
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1775
    .local v2, "parentWidth":I
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v3

    .line 1777
    .local v3, "childTop":I
    const/4 v4, 0x0

    .line 1777
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1778
    move-object v5, p0

    invoke-virtual {v5, v4}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1779
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1780
    goto :goto_1

    .line 1783
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1784
    .local v7, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1786
    .local v8, "height":I
    sub-int v9, v2, v7

    div-int/lit8 v9, v9, 0x2

    .line 1787
    .local v9, "delta":I
    add-int v10, v1, v9

    .line 1789
    .local v10, "childLeft":I
    add-int v11, v10, v7

    add-int v12, v3, v8

    invoke-virtual {v6, v10, v3, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1791
    add-int/2addr v3, v8

    .line 1777
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "delta":I
    .end local v10    # "childLeft":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1793
    .end local v4    # "i":I
    :cond_1
    move-object v5, p0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 1627
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1628
    .local v1, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1629
    .local v2, "specWidthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1630
    .local v3, "specHeightSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1633
    .local v4, "specHeightMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1634
    .local v5, "desiredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1636
    .local v6, "desiredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getWeekCountBasedOnMode()I

    move-result v7

    .line 1638
    .local v7, "weekCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v7, 0x1

    goto :goto_0

    :cond_0
    move v8, v7

    .line 1641
    .local v8, "viewTileHeight":I
    :goto_0
    div-int/lit8 v9, v5, 0x7

    .line 1642
    .local v9, "desiredTileWidth":I
    div-int v10, v6, v8

    .line 1644
    .local v10, "desiredTileHeight":I
    const/4 v11, -0x1

    .line 1645
    .local v11, "measureTileSize":I
    const/4 v12, -0x1

    .line 1646
    .local v12, "measureTileWidth":I
    const/4 v13, -0x1

    .line 1648
    .local v13, "measureTileHeight":I
    iget v14, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    const/16 v15, -0xa

    move/from16 v16, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 1648
    .end local v1    # "specWidthSize":I
    .local v16, "specWidthSize":I
    if-ne v14, v15, :cond_6

    iget v14, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    if-eq v14, v15, :cond_1

    goto :goto_2

    .line 1661
    :cond_1
    if-eq v2, v1, :cond_4

    const/high16 v14, -0x80000000

    if-ne v2, v14, :cond_2

    goto :goto_1

    .line 1669
    :cond_2
    if-eq v4, v1, :cond_3

    if-ne v4, v14, :cond_9

    .line 1671
    :cond_3
    move v11, v10

    goto :goto_4

    .line 1662
    :cond_4
    :goto_1
    if-ne v4, v1, :cond_5

    .line 1664
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_4

    .line 1667
    :cond_5
    move v11, v9

    goto :goto_4

    .line 1649
    :cond_6
    :goto_2
    iget v14, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    if-lez v14, :cond_7

    .line 1651
    iget v12, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    goto :goto_3

    .line 1653
    :cond_7
    move v12, v9

    .line 1655
    :goto_3
    iget v14, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    if-lez v14, :cond_8

    .line 1657
    iget v13, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    goto :goto_4

    .line 1659
    :cond_8
    move v13, v10

    .line 1674
    :cond_9
    :goto_4
    if-lez v11, :cond_a

    .line 1676
    move v13, v11

    .line 1677
    move v12, v11

    goto :goto_5

    .line 1678
    :cond_a
    if-gtz v11, :cond_c

    .line 1679
    const/16 v14, 0x2c

    if-gtz v12, :cond_b

    .line 1681
    invoke-direct {v0, v14}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v12

    .line 1683
    :cond_b
    if-gtz v13, :cond_c

    .line 1685
    invoke-direct {v0, v14}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v13

    .line 1690
    :cond_c
    :goto_5
    mul-int/lit8 v14, v12, 0x7

    .line 1691
    .local v14, "measuredWidth":I
    mul-int v15, v13, v8

    .line 1694
    .local v15, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    add-int v14, v14, v17

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    add-int v15, v15, v17

    .line 1698
    nop

    .line 1700
    move/from16 v1, p1

    move/from16 v19, v2

    invoke-static {v14, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result v2

    .line 1701
    .end local v2    # "specWidthMode":I
    .local v19, "specWidthMode":I
    move/from16 v1, p2

    move/from16 v20, v3

    invoke-static {v15, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clampSize(II)I

    move-result v3

    .line 1698
    .end local v3    # "specHeightSize":I
    .local v20, "specHeightSize":I
    invoke-virtual {v0, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setMeasuredDimension(II)V

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getChildCount()I

    move-result v2

    .line 1706
    .local v2, "count":I
    const/4 v3, 0x0

    .line 1706
    .local v3, "i":I
    :goto_6
    if-ge v3, v2, :cond_d

    .line 1707
    invoke-virtual {v0, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1709
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;

    .line 1711
    .local v0, "p":Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;
    const/16 v17, 0x7

    move/from16 v21, v2

    mul-int v2, v17, v12

    .line 1711
    .end local v2    # "count":I
    .local v21, "count":I
    move/from16 v22, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1716
    .end local v4    # "specHeightMode":I
    .local v2, "childWidthMeasureSpec":I
    .local v22, "specHeightMode":I
    move/from16 v23, v5

    iget v5, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;->height:I

    .line 1716
    .end local v5    # "desiredWidth":I
    .local v23, "desiredWidth":I
    mul-int/2addr v5, v13

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1721
    .local v5, "childHeightMeasureSpec":I
    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1706
    .end local v0    # "p":Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$LayoutParams;
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_6

    .line 1723
    .end local v3    # "i":I
    .end local v21    # "count":I
    .end local v22    # "specHeightMode":I
    .end local v23    # "desiredWidth":I
    .local v2, "count":I
    .restart local v4    # "specHeightMode":I
    .local v5, "desiredWidth":I
    :cond_d
    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v5

    .line 1723
    .end local v2    # "count":I
    .end local v4    # "specHeightMode":I
    .end local v5    # "desiredWidth":I
    .restart local v21    # "count":I
    .restart local v22    # "specHeightMode":I
    .restart local v23    # "desiredWidth":I
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1128
    move-object v0, p1

    check-cast v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    .line 1129
    .local v0, "ss":Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1130
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->newState()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1131
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setFirstDayOfWeek(I)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1132
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setCalendarDisplayMode(Lcom/wen/fluorescence/materialcalendarview/CalendarMode;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1133
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1134
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1135
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->isCacheCalendarPositionEnabled(Z)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showWeekDays:Z

    .line 1136
    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->setShowWeekDays(Z)Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;

    move-result-object v1

    .line 1137
    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$StateBuilder;->commit()V

    .line 1139
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 1140
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 1141
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 1142
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setShowOtherDates(I)V

    .line 1143
    iget-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setAllowClickDaysOutsideCurrentMonth(Z)V

    .line 1144
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1145
    iget-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1146
    .local v2, "calendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 1147
    .end local v2    # "calendarDay":Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    goto :goto_0

    .line 1148
    :cond_0
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTitleAnimationOrientation(I)V

    .line 1149
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 1150
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 1151
    iget-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 1152
    iget v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectionMode(I)V

    .line 1153
    iget-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDynamicHeightEnabled(Z)V

    .line 1154
    iget-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1155
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1103
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1104
    .local v0, "ss":Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 1105
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getDateTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 1106
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 1107
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getShowOtherDates()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:I

    .line 1108
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->allowClickDaysOutsideCurrentMonth:Z

    .line 1109
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getMinimumDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1110
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getMaximumDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1111
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectedDates:Ljava/util/List;

    .line 1112
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 1113
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getTitleAnimationOrientation()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->orientation:I

    .line 1114
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectionMode()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->selectionMode:I

    .line 1115
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getTileWidth()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileWidthPx:I

    .line 1116
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getTileHeight()I

    move-result v1

    iput v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->tileHeightPx:I

    .line 1117
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 1118
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    iput-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->calendarMode:Lcom/wen/fluorescence/materialcalendarview/CalendarMode;

    .line 1119
    iget-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    iput-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->dynamicHeightEnabled:Z

    .line 1120
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    iput-object v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->currentMonth:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1121
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->state:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    invoke-static {v1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->cacheCurrentPosition:Z

    .line 1122
    iget-boolean v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showWeekDays:Z

    iput-boolean v1, v0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$SavedState;->showWeekDays:Z

    .line 1123
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 628
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeDecorator(Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .param p1, "decorator"    # Lcom/wen/fluorescence/materialcalendarview/DayViewDecorator;

    .line 1356
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1357
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1358
    return-void
.end method

.method public removeDecorators()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1347
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1348
    return-void
.end method

.method public selectRange(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "firstDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .param p2, "lastDay"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 1528
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 1529
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1531
    :cond_0
    invoke-virtual {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->isAfter(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    invoke-virtual {p0, p2, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1534
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dispatchOnRangeSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 1536
    :goto_0
    return-void

    .line 1530
    :cond_2
    :goto_1
    return-void
.end method

.method public setAllowClickDaysOutsideCurrentMonth(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 944
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->allowClickDaysOutsideCurrentMonth:Z

    .line 945
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 674
    if-nez p1, :cond_0

    .line 675
    return-void

    .line 677
    :cond_0
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 678
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setColor(I)V

    .line 679
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setColor(I)V

    .line 680
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->invalidate()V

    .line 681
    return-void
.end method

.method public setContentDescriptionArrowFuture(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 698
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 699
    return-void
.end method

.method public setContentDescriptionArrowPast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 689
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 690
    return-void
.end method

.method public setContentDescriptionCalendar(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 707
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->calendarContentDescription:Ljava/lang/CharSequence;

    .line 708
    return-void
.end method

.method public setCurrentDate(J)V
    .locals 1
    .param p1, "date"    # J

    .line 875
    invoke-static {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 876
    return-void
.end method

.method public setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 889
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 890
    return-void
.end method

.method public setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 2
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "useSmoothScroll"    # Z

    .line 897
    if-nez p1, :cond_0

    .line 898
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->getIndexForDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)I

    move-result v0

    .line 901
    .local v0, "index":I
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v1, v0, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setCurrentItem(IZ)V

    .line 902
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 903
    return-void
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 868
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 869
    return-void
.end method

.method public setDateSelected(JZ)V
    .locals 1
    .param p1, "date"    # J
    .param p3, "selected"    # Z

    .line 850
    invoke-static {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 851
    return-void
.end method

.method public setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V
    .locals 1
    .param p1, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .line 858
    if-nez p1, :cond_0

    .line 859
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 862
    return-void
.end method

.method public setDateSelected(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "selected"    # Z

    .line 842
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 843
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 771
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDateTextAppearance(I)V

    .line 772
    return-void
.end method

.method public setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 962
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 963
    return-void
.end method

.method public setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 727
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V

    .line 728
    return-void
.end method

.method public setDynamicHeightEnabled(Z)V
    .locals 0
    .param p1, "useDynamicHeight"    # Z

    .line 1295
    iput-boolean p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->mDynamicHeightEnabled:Z

    .line 1296
    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 764
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 765
    return-void
.end method

.method public setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 741
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    .line 742
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    return-void
.end method

.method public setOnDateChangedListener(Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;

    .line 1378
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->listener:Lcom/wen/fluorescence/materialcalendarview/OnDateSelectedListener;

    .line 1379
    return-void
.end method

.method public setOnDateLongClickListener(Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;)V
    .locals 0
    .param p1, "longClickListener"    # Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;

    .line 1387
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->longClickListener:Lcom/wen/fluorescence/materialcalendarview/OnDateLongClickListener;

    .line 1388
    return-void
.end method

.method public setOnMonthChangedListener(Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;

    .line 1396
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/wen/fluorescence/materialcalendarview/OnMonthChangedListener;

    .line 1397
    return-void
.end method

.method public setOnRangeSelectedListener(Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;

    .line 1405
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->rangeListener:Lcom/wen/fluorescence/materialcalendarview/OnRangeSelectedListener;

    .line 1406
    return-void
.end method

.method public setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1414
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1
    .param p1, "pagingEnabled"    # Z

    .line 1856
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->pager:Lcom/wen/fluorescence/materialcalendarview/CalendarPager;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPager;->setPagingEnabled(Z)V

    .line 1857
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1858
    return-void
.end method

.method public setRightArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 756
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    .line 757
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/wen/fluorescence/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    return-void
.end method

.method public setSelectedDate(J)V
    .locals 1
    .param p1, "date"    # J

    .line 824
    invoke-static {p1, p2}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(J)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 825
    return-void
.end method

.method public setSelectedDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 831
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 832
    if-eqz p1, :cond_0

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setDateSelected(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;Z)V

    .line 835
    :cond_0
    return-void
.end method

.method public setSelectedDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 817
    invoke-static {p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 818
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 651
    if-nez p1, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    const p1, -0x777778

    .line 658
    :cond_1
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 659
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setSelectionColor(I)V

    .line 660
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->invalidate()V

    .line 661
    return-void
.end method

.method public setSelectionMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 456
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 457
    .local v0, "oldMode":I
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 458
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 475
    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    .line 476
    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clearSelection()V

    goto :goto_0

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->clearSelection()V

    .line 461
    goto :goto_0

    .line 463
    :pswitch_1
    goto :goto_0

    .line 465
    :pswitch_2
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v2

    .line 468
    .local v2, "dates":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 471
    .end local v2    # "dates":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/CalendarDay;>;"
    :cond_1
    nop

    .line 483
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->selectionMode:I

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setSelectionEnabled(Z)V

    .line 484
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowOtherDates(I)V
    .locals 1
    .param p1, "showOtherDates"    # I

    .line 932
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setShowOtherDates(I)V

    .line 933
    return-void
.end method

.method public setTileHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 568
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 569
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 570
    return-void
.end method

.method public setTileHeightDp(I)V
    .locals 1
    .param p1, "tileHeightDp"    # I

    .line 577
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileHeight(I)V

    .line 578
    return-void
.end method

.method public setTileSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 542
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 543
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileHeight:I

    .line 544
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 545
    return-void
.end method

.method public setTileSizeDp(I)V
    .locals 1
    .param p1, "tileSizeDp"    # I

    .line 552
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 553
    return-void
.end method

.method public setTileWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 593
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->tileWidth:I

    .line 594
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 595
    return-void
.end method

.method public setTileWidthDp(I)V
    .locals 1
    .param p1, "tileWidthDp"    # I

    .line 602
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTileWidth(I)V

    .line 603
    return-void
.end method

.method public setTitleAnimationOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1061
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->setOrientation(I)V

    .line 1062
    return-void
.end method

.method public setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V
    .locals 1
    .param p1, "titleFormatter"    # Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    .line 1023
    if-nez p1, :cond_0

    .line 1024
    sget-object p1, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/wen/fluorescence/materialcalendarview/TitleChanger;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 1027
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 1028
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 1029
    return-void
.end method

.method public setTitleMonths(I)V
    .locals 1
    .param p1, "arrayRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .line 1052
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTitleMonths([Ljava/lang/CharSequence;)V

    .line 1053
    return-void
.end method

.method public setTitleMonths([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "monthLabels"    # [Ljava/lang/CharSequence;

    .line 1040
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/wen/fluorescence/materialcalendarview/format/TitleFormatter;)V

    .line 1041
    return-void
.end method

.method public setTopbarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1081
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1082
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->requestLayout()V

    .line 1083
    return-void
.end method

.method public setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V
    .locals 2
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    .line 953
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    if-nez p1, :cond_0

    sget-object v1, Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 954
    return-void
.end method

.method public setWeekDayLabels(I)V
    .locals 1
    .param p1, "arrayRes"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .line 986
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setWeekDayLabels([Ljava/lang/CharSequence;)V

    .line 987
    return-void
.end method

.method public setWeekDayLabels([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "weekDayLabels"    # [Ljava/lang/CharSequence;

    .line 974
    new-instance v0, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/WeekDayFormatter;)V

    .line 975
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 778
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->adapter:Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wen/fluorescence/materialcalendarview/CalendarPagerAdapter;->setWeekDayTextAppearance(I)V

    .line 779
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public state()Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->state:Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView$State;

    return-object v0
.end method
