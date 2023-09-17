.class Lcom/wen/fluorescence/materialcalendarview/DayView;
.super Landroid/support/v7/widget/AppCompatCheckedTextView;
.source "DayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final circleDrawableRect:Landroid/graphics/Rect;

.field private contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

.field private customBackground:Landroid/graphics/drawable/Drawable;

.field private date:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

.field private final fadeTime:I

.field private formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

.field private isDecoratedDisabled:Z

.field private isInMonth:Z

.field private isInRange:Z

.field private mCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private selectionColor:I

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private showOtherDates:I

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, -0x777778

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionColor:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 46
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    .line 49
    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->showOtherDates:I

    .line 187
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    .line 188
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->fadeTime:I

    .line 59
    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionColor:I

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setSelectionColor(I)V

    .line 61
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setGravity(I)V

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setTextAlignment(I)V

    .line 67
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V

    .line 68
    return-void
.end method

.method private calculateBounds(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 286
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 287
    .local v0, "radius":I
    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 290
    .local v1, "offset":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    div-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 292
    .local v2, "circleOffset":I
    :goto_0
    const/4 v3, 0x0

    if-lt p1, p2, :cond_1

    .line 293
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v5, v0, v1

    invoke-virtual {v4, v1, v3, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int v5, v0, v2

    invoke-virtual {v4, v2, v3, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    add-int v5, v0, v1

    invoke-virtual {v4, v3, v1, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object v4, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    add-int v5, v0, v2

    invoke-virtual {v4, v3, v2, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    :goto_1
    return-void
.end method

.method private static generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "color"    # I
    .param p1, "fadeTime"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 213
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 214
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 215
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a0

    aput v4, v2, v3

    invoke-static {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x10100a7

    const/16 v5, 0x15

    if-lt v2, v5, :cond_0

    .line 217
    new-array v1, v1, [I

    aput v4, v1, v3

    invoke-static {p0, p2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 219
    :cond_0
    new-array v1, v1, [I

    aput v4, v1, v3

    invoke-static {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 222
    :goto_0
    new-array v1, v3, [I

    invoke-static {v3}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    return-object v0
.end method

.method private static generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "color"    # I

    .line 228
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 229
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    return-object v0
.end method

.method private static generateRippleDrawable(ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "color"    # I
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 235
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 236
    .local v0, "list":Landroid/content/res/ColorStateList;
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateCircleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    .local v1, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    .local v2, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    .line 240
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/RippleDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 244
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_1

    .line 245
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 246
    .local v3, "center":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 249
    .end local v3    # "center":I
    :cond_1
    return-object v2
.end method

.method private regenerateBackground()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 207
    :cond_0
    iget v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionColor:I

    iget v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->fadeTime:I

    iget-object v2, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->generateBackground(IILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :goto_0
    return-void
.end method

.method private setEnabled()V
    .locals 9

    .line 152
    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 153
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-super {p0, v3}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setEnabled(Z)V

    .line 155
    iget v3, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v3}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showOtherMonths(I)Z

    move-result v3

    .line 156
    .local v3, "showOtherMonths":Z
    iget v4, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v4}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showOutOfRange(I)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    .line 157
    .local v4, "showOutOfRange":Z
    :goto_3
    iget v5, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->showOtherDates:I

    invoke-static {v5}, Lcom/wen/fluorescence/materialcalendarview/MaterialCalendarView;->showDecoratedDisabled(I)Z

    move-result v5

    .line 159
    .local v5, "showDecoratedDisabled":Z
    move v6, v0

    .line 161
    .local v6, "shouldBeVisible":Z
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 162
    const/4 v6, 0x1

    .line 165
    :cond_4
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    if-nez v7, :cond_5

    if-eqz v4, :cond_5

    .line 166
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    or-int/2addr v6, v7

    .line 169
    :cond_5
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isDecoratedDisabled:Z

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    .line 170
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    if-eqz v7, :cond_6

    move v7, v1

    goto :goto_4

    :cond_6
    move v7, v2

    :goto_4
    or-int/2addr v6, v7

    .line 173
    :cond_7
    iget-boolean v7, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    if-nez v7, :cond_8

    if-eqz v6, :cond_8

    .line 174
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    new-array v1, v1, [I

    const v8, -0x101009e

    aput v8, v1, v2

    const v8, -0x777778

    invoke-virtual {v7, v1, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setTextColor(I)V

    .line 177
    :cond_8
    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x4

    :goto_5
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setVisibility(I)V

    .line 178
    return-void
.end method


# virtual methods
.method applyFacade(Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;)V
    .locals 9
    .param p1, "facade"    # Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;

    .line 256
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->areDaysDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isDecoratedDisabled:Z

    .line 257
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setEnabled()V

    .line 259
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->getSelectionDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {p1}, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade;->getSpans()Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "label":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 267
    .local v2, "formattedLabel":Landroid/text/SpannableString;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;

    .line 268
    .local v4, "span":Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;
    iget-object v5, v4, Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;->span:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 269
    .end local v4    # "span":Lcom/wen/fluorescence/materialcalendarview/DayViewFacade$Span;
    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "formattedLabel":Landroid/text/SpannableString;
    goto :goto_1

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_1
    return-void
.end method

.method public getContentDescriptionLabel()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    :goto_0
    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->date:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-interface {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->format(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public getDate()Lcom/wen/fluorescence/materialcalendarview/CalendarDay;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->date:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->date:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    invoke-interface {v0, v1}, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->format(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 192
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 195
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->circleDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatCheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 280
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatCheckedTextView;->onLayout(ZIIII)V

    .line 281
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/wen/fluorescence/materialcalendarview/DayView;->calculateBounds(II)V

    .line 282
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->regenerateBackground()V

    .line 283
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 139
    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->customBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->invalidate()V

    .line 145
    return-void
.end method

.method public setDay(Lcom/wen/fluorescence/materialcalendarview/CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 71
    iput-object p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->date:Lcom/wen/fluorescence/materialcalendarview/CalendarDay;

    .line 72
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setDayFormatter(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 9
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 81
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    iget-object v1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    :goto_0
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 83
    if-nez p1, :cond_1

    sget-object v0, Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 84
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    .local v0, "currentLabel":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 86
    .local v1, "spans":[Ljava/lang/Object;
    instance-of v2, v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 87
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 89
    :cond_2
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v2, "newLabel":Landroid/text/SpannableString;
    if-eqz v1, :cond_3

    .line 91
    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 92
    .local v6, "span":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    .end local v6    # "span":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p0, v2}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setDayFormatterContentDescription(Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 104
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->formatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->contentDescriptionFormatter:Lcom/wen/fluorescence/materialcalendarview/format/DayFormatter;

    .line 105
    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getContentDescriptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 119
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionColor:I

    .line 120
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->regenerateBackground()V

    .line 121
    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->regenerateBackground()V

    .line 133
    return-void
.end method

.method protected setupSelection(IZZ)V
    .locals 0
    .param p1, "showOtherDates"    # I
    .param p2, "inRange"    # Z
    .param p3, "inMonth"    # Z

    .line 181
    iput p1, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->showOtherDates:I

    .line 182
    iput-boolean p3, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInMonth:Z

    .line 183
    iput-boolean p2, p0, Lcom/wen/fluorescence/materialcalendarview/DayView;->isInRange:Z

    .line 184
    invoke-direct {p0}, Lcom/wen/fluorescence/materialcalendarview/DayView;->setEnabled()V

    .line 185
    return-void
.end method
