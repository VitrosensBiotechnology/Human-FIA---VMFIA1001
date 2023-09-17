.class public Lorg/apache/log4j/helpers/SyslogWriter;
.super Ljava/io/Writer;
.source "SyslogWriter.java"


# static fields
.field static syslogHost:Ljava/lang/String;


# instance fields
.field final SYSLOG_PORT:I

.field private address:Ljava/net/InetAddress;

.field private ds:Ljava/net/DatagramSocket;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "syslogHost"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x202

    iput v0, p0, Lorg/apache/log4j/helpers/SyslogWriter;->SYSLOG_PORT:I

    .line 60
    sput-object p1, Lorg/apache/log4j/helpers/SyslogWriter;->syslogHost:Ljava/lang/String;

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "syslogHost"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    move-object v0, p1

    .line 66
    .local v0, "host":Ljava/lang/String;
    const/4 v1, -0x1

    .line 72
    .local v1, "urlPort":I
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v4, v2, :cond_4

    .line 74
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 78
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5d

    if-ne v4, v6, :cond_2

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 85
    .end local v2    # "url":Ljava/net/URL;
    :cond_3
    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v4, "Malformed URL: will attempt to interpret as InetAddress."

    invoke-static {v4, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_4
    :goto_0
    if-ne v1, v3, :cond_5

    .line 89
    const/16 v1, 0x202

    .line 91
    :cond_5
    iput v1, p0, Lorg/apache/log4j/helpers/SyslogWriter;->port:I

    .line 94
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/helpers/SyslogWriter;->address:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    goto :goto_1

    .line 96
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ". All logging will FAIL."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_1
    :try_start_2
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/helpers/SyslogWriter;->ds:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    goto :goto_2

    .line 104
    :catch_2
    move-exception v2

    .line 105
    .local v2, "e":Ljava/net/SocketException;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not instantiate DatagramSocket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ". All logging will FAIL."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v2    # "e":Ljava/net/SocketException;
    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/log4j/helpers/SyslogWriter;->ds:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/log4j/helpers/SyslogWriter;->ds:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 144
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0

    .line 138
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/helpers/SyslogWriter;->ds:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/helpers/SyslogWriter;->address:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 126
    .local v0, "bytes":[B
    array-length v1, v0

    .line 127
    .local v1, "bytesLength":I
    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    .line 128
    const/16 v1, 0x400

    .line 130
    :cond_0
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lorg/apache/log4j/helpers/SyslogWriter;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/log4j/helpers/SyslogWriter;->port:I

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 132
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lorg/apache/log4j/helpers/SyslogWriter;->ds:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 135
    .end local v0    # "bytes":[B
    .end local v1    # "bytesLength":I
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :cond_1
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/SyslogWriter;->write(Ljava/lang/String;)V

    .line 116
    return-void
.end method
