.class public Lca/uhn/hl7v2/validation/impl/TrimTrailingWhitespace;
.super Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;
.source "TrimTrailingWhitespace.java"


# static fields
.field private static final TRAILING_WHITESPACE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "\\s+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lca/uhn/hl7v2/validation/impl/TrimTrailingWhitespace;->TRAILING_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lca/uhn/hl7v2/validation/impl/AbstractPrimitiveTypeRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lca/uhn/hl7v2/validation/impl/TrimTrailingWhitespace;->apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)[Lca/uhn/hl7v2/validation/ValidationException;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lca/uhn/hl7v2/validation/impl/TrimTrailingWhitespace;->passed()[Lca/uhn/hl7v2/validation/ValidationException;

    move-result-object v0

    return-object v0
.end method

.method public correct(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 52
    if-eqz p1, :cond_0

    sget-object v0, Lca/uhn/hl7v2/validation/impl/TrimTrailingWhitespace;->TRAILING_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "Trailing whitespace removed"

    return-object v0
.end method
