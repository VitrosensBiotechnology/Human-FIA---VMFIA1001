.class Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;
.super Ljava/lang/Thread;
.source "LogcatFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wen/fluorescence/util/LogcatFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/wen/fluorescence/util/LogcatFileManager;


# direct methods
.method public constructor <init>(Lcom/wen/fluorescence/util/LogcatFileManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->this$0:Lcom/wen/fluorescence/util/LogcatFileManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mRunning:Z

    .line 75
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 80
    iput-object p2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mPID:Ljava/lang/String;

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/wen/fluorescence/util/LogcatFileManager;->access$000(Lcom/wen/fluorescence/util/LogcatFileManager;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    .local p1, "e":Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 99
    .end local p1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logcat *:e *:i | grep \"("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 110
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 111
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 112
    move-object v1, v0

    .line 113
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mRunning:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_3

    .line 114
    iget-boolean v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mRunning:Z

    if-nez v2, :cond_1

    .line 115
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->this$0:Lcom/wen/fluorescence/util/LogcatFileManager;

    invoke-static {v4}, Lcom/wen/fluorescence/util/LogcatFileManager;->access$100(Lcom/wen/fluorescence/util/LogcatFileManager;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GBK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 130
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_5

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    goto :goto_2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_8

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 143
    :catch_1
    move-exception v1

    goto :goto_5

    .line 128
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 125
    :catch_2
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 130
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_7

    .line 134
    :try_start_4
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 135
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    goto :goto_3

    .line 136
    :catch_3
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_8

    .line 142
    :try_start_5
    iget-object v1, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 145
    :goto_4
    goto :goto_6

    .line 143
    :catch_4
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 151
    :cond_8
    return-void

    .line 128
    :goto_7
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_9

    .line 129
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 130
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 132
    :cond_9
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_a

    .line 134
    :try_start_6
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 135
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 138
    goto :goto_8

    .line 136
    :catch_5
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    :goto_8
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_b

    .line 142
    :try_start_7
    iget-object v2, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 145
    goto :goto_9

    .line 143
    :catch_6
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    :goto_9
    iput-object v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_b
    throw v1
.end method

.method public stopLogs()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wen/fluorescence/util/LogcatFileManager$LogDumper;->mRunning:Z

    .line 105
    return-void
.end method
