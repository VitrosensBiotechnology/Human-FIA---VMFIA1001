.class public Lca/uhn/hl7v2/Location;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/Location$GroupLocation;
    }
.end annotation


# static fields
.field public static final UNKNOWN:Lca/uhn/hl7v2/Location;


# instance fields
.field private component:I

.field private componentLevel:Z

.field private field:I

.field private fieldRepetition:I

.field private groups:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lca/uhn/hl7v2/Location$GroupLocation;",
            ">;"
        }
    .end annotation
.end field

.field private segmentName:Ljava/lang/String;

.field private segmentRepetition:I

.field private subcomponent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lca/uhn/hl7v2/Location;

    invoke-direct {v0}, Lca/uhn/hl7v2/Location;-><init>()V

    sput-object v0, Lca/uhn/hl7v2/Location;->UNKNOWN:Lca/uhn/hl7v2/Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lca/uhn/hl7v2/Location;->field:I

    .line 41
    iput v0, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    .line 42
    iput v1, p0, Lca/uhn/hl7v2/Location;->component:I

    .line 43
    iput v1, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lca/uhn/hl7v2/Location;)V
    .locals 2
    .param p1, "l"    # Lca/uhn/hl7v2/Location;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lca/uhn/hl7v2/Location;->field:I

    .line 41
    iput v0, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    .line 42
    iput v1, p0, Lca/uhn/hl7v2/Location;->component:I

    .line 43
    iput v1, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    .line 54
    iget-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    iget-object v1, p1, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v0, p1, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    iput-object v0, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    .line 56
    iget v0, p1, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    iput v0, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    .line 57
    iget v0, p1, Lca/uhn/hl7v2/Location;->field:I

    iput v0, p0, Lca/uhn/hl7v2/Location;->field:I

    .line 58
    iget v0, p1, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    iput v0, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    .line 59
    iget v0, p1, Lca/uhn/hl7v2/Location;->component:I

    iput v0, p0, Lca/uhn/hl7v2/Location;->component:I

    .line 60
    iget v0, p1, Lca/uhn/hl7v2/Location;->subcomponent:I

    iput v0, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    .line 61
    return-void
.end method


# virtual methods
.method public atComponentLevel(Z)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "componentLevel"    # Z

    .line 96
    iput-boolean p1, p0, Lca/uhn/hl7v2/Location;->componentLevel:Z

    .line 97
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 215
    return v0

    .line 216
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 217
    return v1

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 219
    return v1

    .line 220
    :cond_2
    move-object v2, p1

    check-cast v2, Lca/uhn/hl7v2/Location;

    .line 221
    .local v2, "other":Lca/uhn/hl7v2/Location;
    iget-object v3, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    if-nez v3, :cond_3

    .line 222
    iget-object v3, v2, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    if-eqz v3, :cond_4

    .line 223
    return v1

    .line 224
    :cond_3
    iget-object v3, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    iget-object v4, v2, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 225
    return v1

    .line 226
    :cond_4
    iget v3, p0, Lca/uhn/hl7v2/Location;->component:I

    iget v4, v2, Lca/uhn/hl7v2/Location;->component:I

    if-eq v3, v4, :cond_5

    .line 227
    return v1

    .line 228
    :cond_5
    iget v3, p0, Lca/uhn/hl7v2/Location;->field:I

    iget v4, v2, Lca/uhn/hl7v2/Location;->field:I

    if-eq v3, v4, :cond_6

    .line 229
    return v1

    .line 230
    :cond_6
    iget v3, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    iget v4, v2, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    if-eq v3, v4, :cond_7

    .line 231
    return v1

    .line 232
    :cond_7
    iget-object v3, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 233
    iget-object v3, v2, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 234
    return v1

    .line 235
    :cond_8
    iget-object v3, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    iget-object v4, v2, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 236
    return v1

    .line 237
    :cond_9
    iget v3, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    iget v4, v2, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    if-eq v3, v4, :cond_a

    .line 238
    return v1

    .line 239
    :cond_a
    iget v3, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    iget v4, v2, Lca/uhn/hl7v2/Location;->subcomponent:I

    if-eq v3, v4, :cond_b

    .line 240
    return v1

    .line 241
    :cond_b
    return v0
.end method

.method public getComponent()I
    .locals 1

    .line 128
    iget v0, p0, Lca/uhn/hl7v2/Location;->component:I

    return v0
.end method

.method public getField()I
    .locals 1

    .line 110
    iget v0, p0, Lca/uhn/hl7v2/Location;->field:I

    return v0
.end method

.method public getFieldRepetition()I
    .locals 1

    .line 119
    iget v0, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    return v0
.end method

.method public getGroupLocation()Lca/uhn/hl7v2/Location$GroupLocation;
    .locals 1

    .line 79
    iget-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lca/uhn/hl7v2/Location$GroupLocation;

    return-object v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentRepetition()I
    .locals 1

    .line 101
    iget v0, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    return v0
.end method

.method public getSubcomponent()I
    .locals 1

    .line 137
    iget v0, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 200
    const/16 v0, 0x1f

    .line 201
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 202
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 203
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Lca/uhn/hl7v2/Location;->component:I

    add-int/2addr v1, v4

    .line 204
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget v4, p0, Lca/uhn/hl7v2/Location;->field:I

    add-int/2addr v3, v4

    .line 205
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget v4, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    add-int/2addr v1, v4

    .line 206
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v3, v5

    .line 207
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget v4, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    add-int/2addr v1, v4

    .line 208
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget v3, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    add-int/2addr v2, v3

    .line 209
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isComponentLevel()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lca/uhn/hl7v2/Location;->componentLevel:Z

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 66
    sget-object v0, Lca/uhn/hl7v2/Location;->UNKNOWN:Lca/uhn/hl7v2/Location;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public popGroup()V
    .locals 1

    .line 75
    iget-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public pushGroup(Ljava/lang/String;I)Lca/uhn/hl7v2/Location;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rep"    # I

    .line 70
    iget-object v0, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    new-instance v1, Lca/uhn/hl7v2/Location$GroupLocation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lca/uhn/hl7v2/Location$GroupLocation;-><init>(Ljava/lang/String;ILca/uhn/hl7v2/Location$GroupLocation;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lca/uhn/hl7v2/Location;->groups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/uhn/hl7v2/Location$GroupLocation;

    .line 166
    .local v2, "gl":Lca/uhn/hl7v2/Location$GroupLocation;
    iget-object v3, v2, Lca/uhn/hl7v2/Location$GroupLocation;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v3, v2, Lca/uhn/hl7v2/Location$GroupLocation;->repetition:I

    if-ltz v3, :cond_1

    .line 168
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget v3, v2, Lca/uhn/hl7v2/Location$GroupLocation;->repetition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .end local v2    # "gl":Lca/uhn/hl7v2/Location$GroupLocation;
    goto :goto_0

    .line 175
    :cond_2
    :goto_1
    iget-object v1, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    if-lez v1, :cond_3

    .line 178
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_3
    iget v1, p0, Lca/uhn/hl7v2/Location;->field:I

    if-lez v1, :cond_6

    .line 181
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/Location;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    if-ltz v1, :cond_4

    .line 183
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_4
    iget v1, p0, Lca/uhn/hl7v2/Location;->component:I

    if-lez v1, :cond_6

    .line 186
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/Location;->component:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    if-lez v1, :cond_6

    .line 188
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "unknown location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withComponent(I)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "component"    # I

    .line 132
    iput p1, p0, Lca/uhn/hl7v2/Location;->component:I

    .line 133
    return-object p0
.end method

.method public withField(I)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "field"    # I

    .line 114
    iput p1, p0, Lca/uhn/hl7v2/Location;->field:I

    .line 115
    return-object p0
.end method

.method public withFieldIndizes([I)Lca/uhn/hl7v2/Location;
    .locals 1
    .param p1, "indices"    # [I

    .line 151
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lca/uhn/hl7v2/Location;->field:I

    .line 152
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    .line 153
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lca/uhn/hl7v2/Location;->component:I

    .line 154
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    .line 155
    return-object p0
.end method

.method public withFieldRepetition(I)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "fieldRepetition"    # I

    .line 123
    iput p1, p0, Lca/uhn/hl7v2/Location;->fieldRepetition:I

    .line 124
    return-object p0
.end method

.method public withSegmentName(Ljava/lang/String;)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "segmentName"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lca/uhn/hl7v2/Location;->segmentName:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public withSegmentRepetition(I)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "segmentRepetition"    # I

    .line 105
    iput p1, p0, Lca/uhn/hl7v2/Location;->segmentRepetition:I

    .line 106
    return-object p0
.end method

.method public withSubcomponent(I)Lca/uhn/hl7v2/Location;
    .locals 0
    .param p1, "subcomponent"    # I

    .line 141
    iput p1, p0, Lca/uhn/hl7v2/Location;->subcomponent:I

    .line 142
    return-object p0
.end method
