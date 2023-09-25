.class public Lca/uhn/hl7v2/conf/store/ClasspathProfileStore;
.super Lca/uhn/hl7v2/conf/store/URLProfileStore;
.source "ClasspathProfileStore.java"


# static fields
.field public static final DEFAULT_PROFILE_PREFIX:Ljava/lang/String; = "/ca/uhn/hl7v2/conf/store"


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const-string v0, "/ca/uhn/hl7v2/conf/store"

    invoke-direct {p0, v0}, Lca/uhn/hl7v2/conf/store/ClasspathProfileStore;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lca/uhn/hl7v2/conf/store/URLProfileStore;-><init>()V

    .line 50
    iput-object p1, p0, Lca/uhn/hl7v2/conf/store/ClasspathProfileStore;->prefix:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lca/uhn/hl7v2/conf/store/ClasspathProfileStore;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
