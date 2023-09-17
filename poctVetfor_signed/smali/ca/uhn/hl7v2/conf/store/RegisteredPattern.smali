.class Lca/uhn/hl7v2/conf/store/RegisteredPattern;
.super Ljava/lang/Object;
.source "RegisteredPattern.java"


# instance fields
.field private regex:Ljava/util/regex/Pattern;

.field private registration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "registration"    # Ljava/lang/String;
    .param p2, "r"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lca/uhn/hl7v2/conf/store/RegisteredPattern;->registration:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/conf/store/RegisteredPattern;->regex:Ljava/util/regex/Pattern;

    .line 38
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "registration"    # Ljava/lang/String;
    .param p2, "matchValue"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/RegisteredPattern;->registration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lca/uhn/hl7v2/conf/store/RegisteredPattern;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
