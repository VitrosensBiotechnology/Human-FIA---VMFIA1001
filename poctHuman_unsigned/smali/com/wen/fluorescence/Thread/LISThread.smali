.class public Lcom/wen/fluorescence/Thread/LISThread;
.super Ljava/lang/Thread;
.source "LISThread.java"


# static fields
.field public static final MSG_LIS_OFF:I = 0x704

.field public static final MSG_LIS_ON:I = 0x703

.field private static lisThread:Lcom/wen/fluorescence/Thread/LISThread;


# instance fields
.field private final LIS_SLEEP:I

.field private bStop:Z

.field private context:Landroid/content/Context;

.field private volatile count:I

.field private handler:Landroid/os/Handler;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wen/fluorescence/database/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private sendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpDataGram:Lcom/wen/fluorescence/lis/TCPDataGram;

.field private tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/16 v0, 0x12c

    iput v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->LIS_SLEEP:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->bStop:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->handler:Landroid/os/Handler;

    .line 39
    new-instance v2, Lcom/wen/fluorescence/lis/TCPDataGram;

    invoke-direct {v2}, Lcom/wen/fluorescence/lis/TCPDataGram;-><init>()V

    iput-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpDataGram:Lcom/wen/fluorescence/lis/TCPDataGram;

    .line 41
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 120
    iput v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->count:I

    .line 54
    iput-object p1, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/wen/fluorescence/Thread/LISThread;->handler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Lcom/wen/fluorescence/Thread/LISThread;->start()V

    .line 57
    return-void
.end method

.method private closeLis()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->close()V

    .line 198
    iput-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 200
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    if-eqz v0, :cond_1

    .line 201
    sput-object v1, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    .line 203
    :cond_1
    return-void
.end method

.method private connectTronHoTCPServer()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->getRun()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->setHandler(Landroid/os/Handler;)V

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "IP_LIS"

    const-string v2, "192.168.0.66"

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "ip":Ljava/lang/String;
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v1

    const-string v2, "IP_port"

    const-string v3, "50000"

    invoke-virtual {v1, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "port":Ljava/lang/String;
    new-instance v2, Lcom/wen/fluorescence/lis/TCPTronHoClient;

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->handler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/wen/fluorescence/lis/TCPTronHoClient;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    .line 79
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v2}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->connect()V

    .line 80
    const-string v2, "LIS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectTronHoTCPServer: IP\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   Port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/wen/fluorescence/Thread/LISThread;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 44
    sget-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/wen/fluorescence/Thread/LISThread;

    invoke-direct {v0, p0, p1}, Lcom/wen/fluorescence/Thread/LISThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    iput-object p0, v0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    iput-object p1, v0, Lcom/wen/fluorescence/Thread/LISThread;->handler:Landroid/os/Handler;

    .line 50
    :goto_0
    sget-object v0, Lcom/wen/fluorescence/Thread/LISThread;->lisThread:Lcom/wen/fluorescence/Thread/LISThread;

    return-object v0
.end method

.method private sendLISForTronHo(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 4
    .param p1, "result"    # Lcom/wen/fluorescence/database/TestResult;

    .line 168
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/LISThread;->connectTronHoTCPServer()V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v0}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->getRun()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "LIS_HL7_MODE"

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 173
    .local v0, "bHL7":Z
    const-string v1, "as"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLISForTronHoHL7:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpDataGram:Lcom/wen/fluorescence/lis/TCPDataGram;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/wen/fluorescence/lis/TCPDataGram;->encodeHL7DataGram(Lcom/wen/fluorescence/database/TestResult;Landroid/content/Context;)[B

    move-result-object v1

    .line 176
    .local v1, "mTX":[B
    :goto_0
    goto :goto_1

    .line 178
    .end local v1    # "mTX":[B
    :cond_0
    invoke-static {}, Lcom/wen/fluorescence/util/Global;->getInstance()Lcom/wen/fluorescence/util/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wen/fluorescence/util/Global;->getGuestType()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpDataGram:Lcom/wen/fluorescence/lis/TCPDataGram;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/wen/fluorescence/lis/TCPDataGram;->encodeTronHoTCPDataGramTCP(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpDataGram:Lcom/wen/fluorescence/lis/TCPDataGram;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/wen/fluorescence/lis/TCPDataGram;->encodeTronHoTCPDataGram(Landroid/content/Context;Lcom/wen/fluorescence/database/TestResult;)[B

    move-result-object v1

    .line 184
    .restart local v1    # "mTX":[B
    :goto_1
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v2, v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->writeData([B)V

    .line 185
    .end local v0    # "bHL7":Z
    .end local v1    # "mTX":[B
    goto :goto_2

    .line 186
    :cond_2
    const-string v0, "LIS"

    const-string v1, "sendLisForTCP:No Run."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_2
    goto :goto_3

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 190
    const-string v1, "LIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLisForTCP:Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public addSendData(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    const v3, 0x7f0c00fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v2, "LIS_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 90
    .local v0, "bSwitch":Z
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v2

    const-string v3, "LIS_HL7_MODE"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 91
    .local v2, "mode":Z
    if-nez v0, :cond_1

    .line 93
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    const v5, 0x7f0c00e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 94
    return-void

    .line 96
    :cond_1
    if-nez v2, :cond_2

    .line 98
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    const v5, 0x7f0c0196

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/wen/fluorescence/util/MyDialog;->show(Landroid/content/Context;Ljava/lang/String;Lcom/wen/fluorescence/util/MyDialogInterface;)V

    .line 99
    return-void

    .line 101
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    const-string v1, "ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendList.add:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    return-void
.end method

.method public addTestResult(Lcom/wen/fluorescence/database/TestResult;)V
    .locals 4
    .param p1, "result"    # Lcom/wen/fluorescence/database/TestResult;

    .line 108
    iget-object v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getInstance(Landroid/content/Context;)Lcom/wen/fluorescence/util/SharedPreferencesUtils;

    move-result-object v0

    const-string v1, "LIS_SWITCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wen/fluorescence/util/SharedPreferencesUtils;->getBooleanData(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 109
    .local v0, "bSwitch":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, "Tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLisResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 124
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->bStop:Z

    .line 126
    :goto_0
    iget-boolean v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->bStop:Z

    if-nez v1, :cond_4

    .line 128
    iget v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->count:I

    .line 129
    iget v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->count:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->sendBeep()V

    .line 131
    iput v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->count:I

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string v1, "LIS"

    const-string v2, "\u5f00\u59cb\u53d1\u9001\u6d4b\u8bd5\u7ed3\u679c."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wen/fluorescence/database/TestResult;

    .line 137
    .local v1, "result":Lcom/wen/fluorescence/database/TestResult;
    invoke-direct {p0, v1}, Lcom/wen/fluorescence/Thread/LISThread;->sendLISForTronHo(Lcom/wen/fluorescence/database/TestResult;)V

    .line 139
    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wen/fluorescence/database/TestResult;

    invoke-virtual {v2}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "serialNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 141
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wen/fluorescence/database/TestResult;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wen/fluorescence/database/TestResult;

    .line 143
    .local v4, "testResult":Lcom/wen/fluorescence/database/TestResult;
    invoke-virtual {v4}, Lcom/wen/fluorescence/database/TestResult;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 146
    .end local v4    # "testResult":Lcom/wen/fluorescence/database/TestResult;
    :cond_1
    goto :goto_1

    .line 149
    .end local v1    # "result":Lcom/wen/fluorescence/database/TestResult;
    .end local v2    # "serialNumber":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wen/fluorescence/database/TestResult;>;"
    :cond_2
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wen/fluorescence/util/NetUtil;->isNetworkConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/LISThread;->connectTronHoTCPServer()V

    .line 152
    :try_start_0
    const-string v1, "LIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u8bf7\u6c42\u6837\u672c\u4fe1\u606f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    iget-object v2, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->writeData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_2

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "ee":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 157
    .end local v1    # "ee":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->sendList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    :cond_3
    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_3
    goto/16 :goto_0

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 162
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 165
    :cond_4
    return-void
.end method

.method public setThreadStop()V
    .locals 1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wen/fluorescence/Thread/LISThread;->bStop:Z

    .line 117
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/LISThread;->closeLis()V

    .line 118
    return-void
.end method

.method public testConnection()Z
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/wen/fluorescence/Thread/LISThread;->connectTronHoTCPServer()V

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "isConnect":Z
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/wen/fluorescence/Thread/LISThread;->tcpTronHoClient:Lcom/wen/fluorescence/lis/TCPTronHoClient;

    invoke-virtual {v1}, Lcom/wen/fluorescence/lis/TCPTronHoClient;->getRun()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    :cond_0
    return v0
.end method
