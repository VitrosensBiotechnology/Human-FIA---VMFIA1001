.class public Lca/uhn/hl7v2/util/MessageQuery;
.super Ljava/lang/Object;
.source "MessageQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/uhn/hl7v2/util/MessageQuery$Result;,
        Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClauses(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6
    .param p0, "theQuery"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 180
    .local v0, "clauses":Ljava/util/Properties;
    const-string v1, "where "

    invoke-static {p0, v1}, Lca/uhn/hl7v2/util/MessageQuery;->splitFromEnd(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "split":[Ljava/lang/String;
    const-string v2, "where"

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v0, v2, v4}, Lca/uhn/hl7v2/util/MessageQuery;->setClause(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    aget-object v4, v1, v2

    const-string v5, "loop "

    invoke-static {v4, v5}, Lca/uhn/hl7v2/util/MessageQuery;->splitFromEnd(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v4, "loop"

    aget-object v3, v1, v3

    invoke-static {v0, v4, v3}, Lca/uhn/hl7v2/util/MessageQuery;->setClause(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "select"

    aget-object v2, v1, v2

    invoke-static {v0, v3, v2}, Lca/uhn/hl7v2/util/MessageQuery;->setClause(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "where"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loop "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 189
    const-string v3, "The loop clause must precede the where clause"

    .line 188
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    const-string v2, "select"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 193
    const-string v3, "The query must begin with a select clause"

    .line 192
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_1
    return-object v0
.end method

.method public static query(Lca/uhn/hl7v2/model/Message;Ljava/lang/String;)Lca/uhn/hl7v2/util/MessageQuery$Result;
    .locals 22
    .param p0, "theMessage"    # Lca/uhn/hl7v2/model/Message;
    .param p1, "theQuery"    # Ljava/lang/String;

    .line 107
    invoke-static/range {p1 .. p1}, Lca/uhn/hl7v2/util/MessageQuery;->getClauses(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 110
    .local v0, "clauses":Ljava/util/Properties;
    new-instance v1, Ljava/util/StringTokenizer;

    .line 111
    const-string v2, "select"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    .line 110
    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .local v1, "select":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v2, "fieldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    .local v5, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 128
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, "loop"

    .line 129
    const-string v9, ""

    .line 128
    invoke-virtual {v0, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    const-string v9, ","

    .line 128
    invoke-direct {v6, v8, v9, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v15, v6

    .line 130
    .local v15, "loop":Ljava/util/StringTokenizer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v6

    .line 131
    .local v14, "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v3, v6

    .line 132
    .local v3, "loopPointNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_3

    .line 145
    new-instance v6, Ljava/util/StringTokenizer;

    .line 146
    const-string v8, "where"

    const-string v9, ""

    .line 145
    invoke-virtual {v0, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string v9, ","

    .line 145
    invoke-direct {v6, v8, v9, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v13, v6

    .line 147
    .local v13, "where":Ljava/util/StringTokenizer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v6

    .line 148
    .local v12, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 151
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v11, v6, [Ljava/lang/String;

    .line 152
    .local v11, "filterPaths":[Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v10, v6, [Ljava/lang/String;

    .line 153
    .local v10, "filterPatterns":[Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v9, v6, [Z

    .line 155
    .local v9, "exactFlags":[Z
    const/4 v6, 0x0

    .line 155
    .local v6, "i":I
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_0

    .line 171
    .end local v6    # "i":I
    new-instance v16, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;

    .line 172
    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v14, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, [Ljava/lang/String;

    .line 173
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 174
    nop

    .line 171
    move-object/from16 v6, v16

    move-object/from16 v7, p0

    move-object/from16 v17, v9

    move-object v9, v3

    .line 171
    .end local v9    # "exactFlags":[Z
    .local v17, "exactFlags":[Z
    move-object/from16 v18, v10

    move-object v10, v4

    .line 171
    .end local v10    # "filterPatterns":[Ljava/lang/String;
    .local v18, "filterPatterns":[Ljava/lang/String;
    move-object/from16 v19, v11

    move-object v11, v5

    .line 171
    .end local v11    # "filterPaths":[Ljava/lang/String;
    .local v19, "filterPaths":[Ljava/lang/String;
    move-object v4, v12

    move-object/from16 v12, v19

    .line 171
    .end local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v20, v13

    move-object/from16 v13, v18

    .line 171
    .end local v13    # "where":Ljava/util/StringTokenizer;
    .local v20, "where":Ljava/util/StringTokenizer;
    move-object/from16 v21, v14

    move-object/from16 v14, v17

    .line 171
    .end local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v6 .. v14}, Lca/uhn/hl7v2/util/MessageQuery$ResultImpl;-><init>(Lca/uhn/hl7v2/model/Message;[Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;[Z)V

    return-object v16

    .line 156
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "exactFlags":[Z
    .end local v18    # "filterPatterns":[Ljava/lang/String;
    .end local v19    # "filterPaths":[Ljava/lang/String;
    .end local v20    # "where":Ljava/util/StringTokenizer;
    .end local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v9    # "exactFlags":[Z
    .restart local v10    # "filterPatterns":[Ljava/lang/String;
    .restart local v11    # "filterPaths":[Ljava/lang/String;
    .restart local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "where":Ljava/util/StringTokenizer;
    .restart local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v8, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .line 156
    .end local v9    # "exactFlags":[Z
    .end local v10    # "filterPatterns":[Ljava/lang/String;
    .end local v11    # "filterPaths":[Ljava/lang/String;
    .end local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "where":Ljava/util/StringTokenizer;
    .end local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "exactFlags":[Z
    .restart local v18    # "filterPatterns":[Ljava/lang/String;
    .restart local v19    # "filterPaths":[Ljava/lang/String;
    .restart local v20    # "where":Ljava/util/StringTokenizer;
    .restart local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    aput-boolean v7, v17, v6

    .line 157
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 158
    .local v9, "filter":Ljava/lang/String;
    const-string v10, "="

    invoke-static {v9, v10}, Lca/uhn/hl7v2/util/MessageQuery;->splitFromEnd(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, "parts":[Ljava/lang/String;
    aget-object v11, v10, v7

    if-eqz v11, :cond_1

    .line 160
    aget-object v11, v10, v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 161
    goto :goto_4

    .line 162
    :cond_1
    aput-boolean v4, v17, v6

    .line 163
    const-string v11, "like"

    invoke-static {v9, v11}, Lca/uhn/hl7v2/util/MessageQuery;->splitFromEnd(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 164
    aget-object v11, v10, v7

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 166
    :goto_4
    aget-object v11, v10, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v19, v6

    .line 167
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 168
    aget-object v11, v10, v7

    aget-object v12, v10, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v18, v6

    .line 155
    .end local v9    # "filter":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object v12, v8

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_3

    .line 149
    .end local v6    # "i":I
    .end local v8    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "exactFlags":[Z
    .end local v18    # "filterPatterns":[Ljava/lang/String;
    .end local v19    # "filterPaths":[Ljava/lang/String;
    .end local v20    # "where":Ljava/util/StringTokenizer;
    .end local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "where":Ljava/util/StringTokenizer;
    .restart local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v8, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .line 149
    .end local v12    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "where":Ljava/util/StringTokenizer;
    .end local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "where":Ljava/util/StringTokenizer;
    .restart local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, v20

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 149
    .end local v20    # "where":Ljava/util/StringTokenizer;
    .local v6, "where":Ljava/util/StringTokenizer;
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    move-object v13, v6

    goto/16 :goto_2

    .line 133
    .end local v6    # "where":Ljava/util/StringTokenizer;
    .end local v8    # "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v21, v14

    .line 133
    .end local v14    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "pointDecl":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "="

    invoke-direct {v8, v6, v9, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .local v8, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "path":Ljava/lang/String;
    move-object/from16 v11, v21

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v21    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v6    # "pointDecl":Ljava/lang/String;
    .end local v8    # "tok":Ljava/util/StringTokenizer;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    move-object v14, v11

    goto/16 :goto_1

    .line 115
    .end local v3    # "loopPointNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "loopPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "loop":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "token":Ljava/lang/String;
    const-string v8, "as"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 117
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_5

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 119
    const-string v4, "Keyword \'as\' must be followed by a field label"

    .line 118
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v6    # "token":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static setClause(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "theClauses"    # Ljava/util/Properties;
    .param p1, "theName"    # Ljava/lang/String;
    .param p2, "theClause"    # Ljava/lang/String;

    .line 200
    if-eqz p2, :cond_0

    .line 201
    nop

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    :cond_0
    return-void
.end method

.method private static splitFromEnd(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "theString"    # Ljava/lang/String;
    .param p1, "theMarker"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 208
    .local v0, "result":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "begin":I
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 210
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 211
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 212
    goto :goto_0

    .line 213
    :cond_0
    aput-object p0, v0, v2

    .line 215
    :goto_0
    return-object v0
.end method
