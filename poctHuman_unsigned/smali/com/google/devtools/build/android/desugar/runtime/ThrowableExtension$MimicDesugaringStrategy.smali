.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;
.super Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MimicDesugaringStrategy"
.end annotation


# static fields
.field static final SUPPRESSED_PREFIX:Ljava/lang/String; = "Suppressed: "


# instance fields
.field private final map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    .line 226
    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    return-void
.end method


# virtual methods
.method public addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "suppressed"    # Ljava/lang/Throwable;

    .line 234
    if-ne p2, p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self suppression is not allowed."

    invoke-direct {v0, v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 237
    :cond_0
    if-nez p2, :cond_1

    .line 238
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The suppressed exception cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .line 246
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    sget-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1

    .line 248
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    return-object v1
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    monitor-enter v0

    .line 268
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 269
    .local v2, "suppressed":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Suppressed: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    .end local v2    # "suppressed":Ljava/lang/Throwable;
    goto :goto_0

    .line 272
    :cond_1
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "stream"    # Ljava/io/PrintStream;

    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 278
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    monitor-enter v0

    .line 283
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 284
    .local v2, "suppressed":Ljava/lang/Throwable;
    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 286
    .end local v2    # "suppressed":Ljava/lang/Throwable;
    goto :goto_0

    .line 287
    :cond_1
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 293
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    monitor-enter v0

    .line 298
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 299
    .local v2, "suppressed":Ljava/lang/Throwable;
    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 301
    .end local v2    # "suppressed":Ljava/lang/Throwable;
    goto :goto_0

    .line 302
    :cond_1
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
