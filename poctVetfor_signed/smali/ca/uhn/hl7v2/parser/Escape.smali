.class public final Lca/uhn/hl7v2/parser/Escape;
.super Ljava/lang/Object;
.source "Escape.java"


# static fields
.field private static final DEFAULT:Lca/uhn/hl7v2/parser/Escaping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lca/uhn/hl7v2/parser/DefaultEscaping;

    invoke-direct {v0}, Lca/uhn/hl7v2/parser/DefaultEscaping;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/parser/Escape;->DEFAULT:Lca/uhn/hl7v2/parser/Escaping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 48
    sget-object v0, Lca/uhn/hl7v2/parser/Escape;->DEFAULT:Lca/uhn/hl7v2/parser/Escaping;

    invoke-interface {v0, p0, p1}, Lca/uhn/hl7v2/parser/Escaping;->escape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encChars"    # Lca/uhn/hl7v2/parser/EncodingCharacters;

    .line 57
    sget-object v0, Lca/uhn/hl7v2/parser/Escape;->DEFAULT:Lca/uhn/hl7v2/parser/Escaping;

    invoke-interface {v0, p0, p1}, Lca/uhn/hl7v2/parser/Escaping;->unescape(Ljava/lang/String;Lca/uhn/hl7v2/parser/EncodingCharacters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
