.class Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicPatternConverter"
.end annotation


# instance fields
.field type:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "type"    # I

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 387
    iput p2, p0, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;->type:I

    .line 388
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 392
    iget v0, p0, Lorg/apache/log4j/helpers/PatternParser$BasicPatternConverter;->type:I

    packed-switch v0, :pswitch_data_0

    .line 404
    const/4 v0, 0x0

    return-object v0

    .line 402
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 398
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :pswitch_4
    iget-wide v0, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-static {}, Lorg/apache/log4j/spi/LoggingEvent;->getStartTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
