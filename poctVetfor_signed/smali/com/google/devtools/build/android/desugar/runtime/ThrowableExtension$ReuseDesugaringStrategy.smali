.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;
.super Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReuseDesugaringStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "suppressed"    # Ljava/lang/Throwable;

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "stream"    # Ljava/io/PrintStream;

    .line 213
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 214
    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 219
    return-void
.end method
