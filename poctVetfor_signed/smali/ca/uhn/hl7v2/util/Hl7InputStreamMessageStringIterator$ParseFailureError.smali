.class public Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator$ParseFailureError;
.super Ljava/lang/RuntimeException;
.source "Hl7InputStreamMessageStringIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/uhn/hl7v2/util/Hl7InputStreamMessageStringIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseFailureError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "theMessage"    # Ljava/lang/String;
    .param p2, "theCause"    # Ljava/lang/Exception;

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    return-void
.end method
