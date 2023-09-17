.class public final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;,
        Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    }
.end annotation


# static fields
.field private static final ANDROID_OS_BUILD_VERSION:Ljava/lang/String; = "android.os.Build$VERSION"

.field static final API_LEVEL:I

.field static final STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

.field public static final SYSTEM_PROPERTY_TWR_DISABLE_MIMIC:Ljava/lang/String; = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "apiLevel":Ljava/lang/Integer;
    :try_start_0
    invoke-static {}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->readApiLevelFromBuildVersion()Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 57
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 58
    new-instance v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;

    invoke-direct {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ReuseDesugaringStrategy;-><init>()V

    .line 58
    .local v1, "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    :goto_0
    goto :goto_1

    .line 59
    .end local v1    # "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    :cond_0
    invoke-static {}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->useMimicStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .restart local v1    # "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    :goto_1
    goto :goto_2

    .line 64
    .end local v1    # "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    .line 70
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "will be used. The error is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 73
    new-instance v2, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;

    invoke-direct {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$NullDesugaringStrategy;-><init>()V

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 75
    .local v1, "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    :goto_2
    sput-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    .line 76
    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    sput v2, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->API_LEVEL:I

    .line 77
    .end local v0    # "apiLevel":Ljava/lang/Integer;
    .end local v1    # "strategy":Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Throwable;
    .param p1, "suppressed"    # Ljava/lang/Throwable;

    .line 84
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public static closeResource(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "resource"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    if-nez p1, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    :try_start_0
    sget v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->API_LEVEL:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 109
    move-object v0, p1

    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_2

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "close"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 128
    .end local v0    # "method":Ljava/lang/reflect/Method;
    nop

    .line 138
    :goto_0
    nop

    .line 139
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 127
    .local v1, "cause":Ljava/lang/Throwable;
    throw v1

    .line 119
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to call close() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a close() method."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz p0, :cond_3

    .line 133
    invoke-static {p0, v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 134
    throw p0

    .line 136
    :cond_3
    throw v0
.end method

.method public static getStrategy()Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
    .locals 1

    .line 80
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    return-object v0
.end method

.method public static getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Throwable;

    .line 88
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Throwable;

    .line 92
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 100
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 101
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "receiver"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 96
    sget-object v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->STRATEGY:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;

    invoke-virtual {v0, p0, p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 97
    return-void
.end method

.method private static readApiLevelFromBuildVersion()Ljava/lang/Integer;
    .locals 4

    .line 161
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 162
    .local v1, "buildVersionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 163
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 164
    .end local v1    # "buildVersionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 170
    return-object v0
.end method

.method private static useMimicStrategy()Z
    .locals 1

    .line 142
    const-string v0, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
