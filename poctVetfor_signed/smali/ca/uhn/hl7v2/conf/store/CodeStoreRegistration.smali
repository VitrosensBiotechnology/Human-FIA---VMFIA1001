.class Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;
.super Ljava/lang/Object;
.source "CodeStoreRegistration.java"


# instance fields
.field private codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lca/uhn/hl7v2/conf/store/CodeStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "codeStore"    # Lca/uhn/hl7v2/conf/store/CodeStore;
    .param p2, "regex"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    .line 43
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->pattern:Ljava/util/regex/Pattern;

    .line 44
    return-void
.end method


# virtual methods
.method public matchingCodeStore(Ljava/lang/String;Ljava/lang/String;)Lca/uhn/hl7v2/conf/store/CodeStore;
    .locals 1
    .param p1, "codeSystem"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    invoke-interface {v0, p1}, Lca/uhn/hl7v2/conf/store/CodeStore;->knowsCodes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/CodeStoreRegistration;->codeStore:Lca/uhn/hl7v2/conf/store/CodeStore;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0
.end method
