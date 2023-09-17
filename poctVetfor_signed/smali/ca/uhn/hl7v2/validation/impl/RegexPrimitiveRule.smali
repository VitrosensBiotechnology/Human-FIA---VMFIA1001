.class public Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;
.super Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;
.source "RegexPrimitiveRule.java"


# instance fields
.field private final myPattern:Ljava/util/regex/Pattern;

.field private final mySectionReference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "theRegex"    # Ljava/lang/String;
    .param p2, "theSectionReference"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->myPattern:Ljava/util/regex/Pattern;

    .line 53
    iput-object p2, p0, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->mySectionReference:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 60
    if-eqz p1, :cond_1

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->myPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {p0, v1, p1}, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->result(ZLjava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->passed()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%s does not match the regular expression "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->myPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionReference()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lca/uhn/hl7v2/validation/impl/RegexPrimitiveRule;->mySectionReference:Ljava/lang/String;

    return-object v0
.end method
