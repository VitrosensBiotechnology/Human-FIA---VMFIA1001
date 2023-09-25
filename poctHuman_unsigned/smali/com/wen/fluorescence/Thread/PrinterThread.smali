.class public Lcom/wen/fluorescence/Thread/PrinterThread;
.super Ljava/lang/Object;
.source "PrinterThread.java"


# static fields
.field private static printerThread:Lcom/wen/fluorescence/Thread/PrinterThread;


# instance fields
.field private final PRINTER_SLEEP:I

.field private isPrinterStart:Z

.field private mContext:Landroid/content/Context;

.field private pResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private printer:Lcom/wen/fluorescence/printer/Printer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1388

    iput v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->PRINTER_SLEEP:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->pResult:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->isPrinterStart:Z

    .line 33
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/wen/fluorescence/Thread/PrinterThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/PrinterThread;

    .line 21
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wen/fluorescence/Thread/PrinterThread;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/PrinterThread;

    .line 21
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->pResult:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wen/fluorescence/Thread/PrinterThread;)Lcom/wen/fluorescence/printer/Printer;
    .locals 1
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/PrinterThread;

    .line 21
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wen/fluorescence/Thread/PrinterThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wen/fluorescence/Thread/PrinterThread;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->isPrinterStart:Z

    return p1
.end method

.method public static getPrinterThread(Landroid/content/Context;)Lcom/wen/fluorescence/Thread/PrinterThread;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/wen/fluorescence/Thread/PrinterThread;->printerThread:Lcom/wen/fluorescence/Thread/PrinterThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/wen/fluorescence/Thread/PrinterThread;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Thread/PrinterThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wen/fluorescence/Thread/PrinterThread;->printerThread:Lcom/wen/fluorescence/Thread/PrinterThread;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/PrinterThread;->printerThread:Lcom/wen/fluorescence/Thread/PrinterThread;

    iput-object p0, v0, Lcom/wen/fluorescence/Thread/PrinterThread;->mContext:Landroid/content/Context;

    .line 42
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/Thread/PrinterThread;->printerThread:Lcom/wen/fluorescence/Thread/PrinterThread;

    return-object v0
.end method

.method private setPrinterStart()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 66
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wen/fluorescence/util/Global;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    goto :goto_0

    .line 80
    :pswitch_0
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterRussian;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterRussian;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 81
    goto :goto_0

    .line 77
    :pswitch_1
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterItaly;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterItaly;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 78
    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterPortugal;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterPortugal;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 72
    goto :goto_0

    .line 68
    :pswitch_3
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterSpanish;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterSpanish;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 69
    goto :goto_0

    .line 83
    :pswitch_4
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterFrench;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterFrench;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 84
    goto :goto_0

    .line 74
    :pswitch_5
    new-instance v0, Lcom/wen/fluorescence/printer/PrinterGerman;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/PrinterGerman;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 75
    nop

    .line 89
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->isPrinterStart:Z

    .line 90
    new-instance v0, Lcom/wen/fluorescence/Thread/PrinterThread$1;

    invoke-direct {v0, p0}, Lcom/wen/fluorescence/Thread/PrinterThread$1;-><init>(Lcom/wen/fluorescence/Thread/PrinterThread;)V

    .line 135
    invoke-virtual {v0}, Lcom/wen/fluorescence/Thread/PrinterThread$1;->start()V

    .line 136
    return-void

    :pswitch_data_0
    .packed-switch 0x1a00003
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPrinter(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 2
    .param p1, "result"    # Lcom/wen/fluorescence/database/TestResult;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->pResult:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wen/fluorescence/database/TestResult;->clone()Lcom/wen/fluorescence/database/TestResult;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-boolean v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->isPrinterStart:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/PrinterThread;->setPrinterStart()V

    .line 62
    :cond_0
    return-void
.end method

.method public setPrinterStop()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->isPrinterStart:Z

    .line 53
    return-void
.end method

.method public testPrinter()V
    .locals 1

    .line 46
    new-instance v0, Lcom/wen/fluorescence/printer/Printer;

    invoke-direct {v0}, Lcom/wen/fluorescence/printer/Printer;-><init>()V

    iput-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    .line 47
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/PrinterThread;->printer:Lcom/wen/fluorescence/printer/Printer;

    invoke-virtual {v0}, Lcom/wen/fluorescence/printer/Printer;->printerTest()V

    .line 48
    return-void
.end method
