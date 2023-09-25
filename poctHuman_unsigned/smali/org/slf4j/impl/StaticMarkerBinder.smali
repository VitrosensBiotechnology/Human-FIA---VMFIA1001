.class public Lorg/slf4j/impl/StaticMarkerBinder;
.super Ljava/lang/Object;
.source "StaticMarkerBinder.java"

# interfaces
.implements Lorg/slf4j/spi/MarkerFactoryBinder;


# static fields
.field public static final SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

.field static synthetic class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;


# instance fields
.field final markerFactory:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/slf4j/impl/StaticMarkerBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticMarkerBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/StaticMarkerBinder;->markerFactory:Lorg/slf4j/IMarkerFactory;

    .line 49
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/slf4j/impl/StaticMarkerBinder;->markerFactory:Lorg/slf4j/IMarkerFactory;

    return-object v0
.end method

.method public getMarkerFactoryClassStr()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.slf4j.helpers.BasicMarkerFactory"

    invoke-static {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->class$org$slf4j$helpers$BasicMarkerFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
