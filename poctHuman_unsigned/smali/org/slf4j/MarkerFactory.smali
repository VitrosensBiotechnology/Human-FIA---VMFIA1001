.class public Lorg/slf4j/MarkerFactory;
.super Ljava/lang/Object;
.source "MarkerFactory.java"


# static fields
.field static markerFactory:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    move-result-object v0

    sput-object v0, Lorg/slf4j/MarkerFactory;->markerFactory:Lorg/slf4j/IMarkerFactory;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unexpected failure while binding MarkerFactory"

    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Lorg/slf4j/helpers/BasicMarkerFactory;

    invoke-direct {v1}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    sput-object v1, Lorg/slf4j/MarkerFactory;->markerFactory:Lorg/slf4j/IMarkerFactory;

    .line 59
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    nop

    .line 60
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lorg/slf4j/MarkerFactory;->markerFactory:Lorg/slf4j/IMarkerFactory;

    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object v0

    return-object v0
.end method

.method public static getIMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 93
    sget-object v0, Lorg/slf4j/MarkerFactory;->markerFactory:Lorg/slf4j/IMarkerFactory;

    return-object v0
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lorg/slf4j/MarkerFactory;->markerFactory:Lorg/slf4j/IMarkerFactory;

    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    move-result-object v0

    return-object v0
.end method
