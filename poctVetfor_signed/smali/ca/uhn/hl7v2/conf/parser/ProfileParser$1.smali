.class Lca/uhn/hl7v2/conf/parser/ProfileParser$1;
.super Ljava/lang/Object;
.source "ProfileParser.java"

# interfaces
.implements Lorg/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lca/uhn/hl7v2/conf/parser/ProfileParser;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lca/uhn/hl7v2/conf/parser/ProfileParser;


# direct methods
.method constructor <init>(Lca/uhn/hl7v2/conf/parser/ProfileParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/uhn/hl7v2/conf/parser/ProfileParser$1;->this$0:Lca/uhn/hl7v2/conf/parser/ProfileParser;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .locals 4
    .param p1, "error"    # Lorg/w3c/dom/DOMError;

    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    invoke-static {}, Lca/uhn/hl7v2/conf/parser/ProfileParser;->access$0()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "Warning: {}"

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    nop

    .line 115
    return v1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedException()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
