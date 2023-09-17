.class public Lcom/wen/fluorescence/database/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "wenfia.db"

.field private static final DATABASE_VERSION:I = 0x8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const-string v0, "wenfia.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "newColumnArr"    # [Ljava/lang/String;
    .param p3, "oldTableName"    # Ljava/lang/String;

    .line 207
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    array-length v1, p2

    if-lt v1, v0, :cond_9

    .line 208
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 215
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 217
    return-void

    .line 220
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "oldColumnNames":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_temp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "tempTableName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alter table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    array-length v4, v2

    if-ge v4, v0, :cond_2

    .line 230
    return-void

    .line 234
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v4, "createNewTableStr":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create table if not exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/4 v5, 0x0

    move v6, v5

    .line 237
    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    .line 238
    if-nez v6, :cond_3

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " integer primary key autoincrement,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 242
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    .end local v6    # "i":I
    :cond_4
    move v6, v5

    .line 246
    .restart local v6    # "i":I
    :goto_2
    array-length v7, p2

    if-ge v6, v7, :cond_6

    .line 247
    array-length v7, p2

    sub-int/2addr v7, v0

    if-ne v6, v7, :cond_5

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 252
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 256
    .end local v6    # "i":I
    :cond_6
    const-string v6, "createNewTableStr"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v6, "copySQLStr":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " select *,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    nop

    .line 263
    .local v5, "i":I
    :goto_4
    array-length v7, p2

    if-ge v5, v7, :cond_8

    .line 264
    array-length v7, p2

    sub-int/2addr v7, v0

    if-ne v5, v7, :cond_7

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\' \' from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 269
    :cond_7
    const-string v7, "\' \',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 273
    .end local v5    # "i":I
    :cond_8
    const-string v0, "copySQLStr"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop table "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 281
    return-void

    .line 210
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "oldColumnNames":[Ljava/lang/String;
    .end local v3    # "tempTableName":Ljava/lang/String;
    .end local v4    # "createNewTableStr":Ljava/lang/StringBuffer;
    .end local v6    # "copySQLStr":Ljava/lang/StringBuffer;
    :cond_9
    :goto_6
    return-void
.end method

.method private createEquationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 177
    const-string v0, "create table if not exists "

    .line 179
    .local v0, "sql_creat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Equation (id integer primary key autoincrement,ItemIndex integer,flag integer,m_barCode text,customerCode integer,childCustomerCode integer,E1_1 integer,E1_2 integer,E1_3 integer,E1_4 integer,E1_5 integer,E1_6 integer,E2_1 integer,E2_2 integer,E2_3 integer,E2_4 integer,E2_5 integer,E2_6 integer);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private createIDChipTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 142
    const-string v0, "create table if not exists "

    .line 144
    .local v0, "sql_creat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IDChipInfoN(id integer primary key autoincrement,FileFlag integer,FileVersion integer,m_barCode text,new_barCode text,new_logNo text,m_ItemCount integer,m_countdowntime integer,s_countdowntime integer,m_title text,isVisibleResult integer,isVisibleConclusion integer,lastYear integer,lastMonth integer,lastDay integer,T1_start integer,T2_start integer,C_start integer,T1_end integer,T2_end integer,C_end integer,X1_start integer,X2_start integer,X3_start integer,X4_start integer,X1_end integer,X2_end integer,X3_end integer,X4_end integer,m_T1Pos integer,m_T2Pos integer,m_CPos integer,m_X1Pos integer,m_X2Pos integer,m_X3Pos integer,m_X4Pos integer,m_NumberT1 integer,m_NumberT2 integer,m_NumberC integer,m_NumberX1 integer,m_NumberX2 integer,m_NumberX3 integer,m_NumberX4 integer,isRushTop integer,isAddSample integer,RushTopName integer,AddSampleName integer,addSample integer,rushTop integer,qualitativeFlag integer,cutBackgroundFlag integer,cardsCounts integer,toCalcApex integer);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IDChipInfoExN(id integer primary key autoincrement,ItemIndex integer,m_projectName text,FileFlag integer,FileVersion integer,AlgorithmType integer,m_barCode text,m_calcMethod integer,m_t integer,m_c integer,m_projectCount integer,m_unit text,m_decimalDigits integer,sampleCoefficientArrays text,m_projectStart integer,m_printData text,m_testBound text,thresholdValue integer,thresholdValueResult text,conclusionCounts integer,intervalDensity text,resultOfDensity text,cc text,tc text,l_count integer,m_unlog integer,x_isOtherAlglog integer,y_isOtherAlglog integer,m_dimension integer,m_divisionIndex integer,m_dimen text)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private createUserTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    const-string v0, "create table if not exists "

    .line 171
    .local v0, "sql_creat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User (id integer primary key autoincrement,userName text,password text,mode integer);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/wen/fluorescence/database/DBHelper;->initUser(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    return-void
.end method

.method private isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "result":Z
    const/4 v1, 0x0

    move-object v2, v1

    .line 296
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIMIT 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v2, v1

    .line 298
    if-eqz v2, :cond_0

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 302
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkColumnExists1..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    :goto_2
    return v0

    .line 302
    :goto_3
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 303
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public initUser(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    const-string v0, "insert into User(userName,password,mode) values(\'guest\',\'\',2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "insert into User(userName,password,mode) values(\'admin\',\'123456\',1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "insert into User(userName,password,mode) values(\'super\',\'2019\',0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "insert into User(userName,password,mode) values(\'factory\',\'666666\',-1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    const-string v0, "create table if not exists "

    .line 32
    .local v0, "sql_creat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ItemParas(id integer primary key autoincrement,name text,code text,Type text,mMin text,mMax text,unit text, k text, b text, oriTemplate text, oriPrintMode integer, tarUnit1 text, tarK1 text, tarB1 text, tarTemplate1 text, tarPrintMode1 integer, tarUnit2 text, tarK2 text, tarB2 text, tarTemplate2 text, tarPrintMode2 integer, holder1 text, holder2 text);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ItemParasEXT(id integer primary key autoincrement,name text,code text,Type text,ManMin text,ManMax text,WLPMin text,WLPMax text,WPLMin text,WPLMax text,WHTMin text,WHTMax text,WJJMin text,WJJMax text,WEXT1Min text, WEXT1Max text,WEXT2Min text, WEXT2Max text,unit text);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TestResult(id integer primary key autoincrement ,serialNumber text,name text,sampleNumber text,logNO text,bedNumber text,patientNumber text,doctorNumber text,itemTitle text,simpleType text,submittingDivision text,submittingDoctor text,submittingTime text,inspectingDoctor text,inspectingTime text,reviewer text,note text,sex INTEGER,age INTEGER,testtime text, result text,item text,unit text,testTemp text,testMode INTEGER,qualitativeFlag INTEGER,qualitativeVerdict text,itemcount text,level INTEGER,holder1 text,holder2 text,holder3 text,holder4 text,holder5 text, user text, appId text, uploadStatus integer, reItem text, reResult text, holder6 text);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "QCResult(id integer primary key autoincrement ,serialNumber text,sampleNumber text,logNO text,testtime text, result text,item text,unit text,testTemp text,testMode INTEGER,qualitativeFlag INTEGER,qualitativeVerdict text,itemcount text,level INTEGER,holder1 text,holder2 text,holder3 text);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OriResult(id integer primary key autoincrement ,T1 text, T2 text, T3 text, C text, TC1 text, TC2 text, TC3 text, value1 text, value2 text, value3 text,time text,number text,barCode text,item text,serialNumber text,calTemp text,startTemp text,endTemp text,ID_Type INTEGER,testMode INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RawData(id integer primary key,serialNumber text,data text,time text);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/database/DBHelper;->createIDChipTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/database/DBHelper;->createUserTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/wen/fluorescence/database/DBHelper;->createEquationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 76
    move/from16 v3, p3

    const-string v4, "\u6570\u636e\u5e93"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 78
    invoke-direct/range {p0 .. p1}, Lcom/wen/fluorescence/database/DBHelper;->createIDChipTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    :cond_0
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v2, v5, :cond_2

    .line 82
    const-string v4, "TestResult"

    const-string v5, "user"

    invoke-direct {v0, v1, v4, v5}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    invoke-direct/range {p0 .. p1}, Lcom/wen/fluorescence/database/DBHelper;->createUserTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "user text"

    aput-object v5, v4, v6

    .line 85
    .local v4, "newColumn":[Ljava/lang/String;
    const-string v5, "TestResult"

    invoke-direct {v0, v1, v4, v5}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v4    # "newColumn":[Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/wen/fluorescence/database/DBHelper;->createEquationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 88
    :cond_2
    const/16 v12, 0x9

    const/16 v13, 0x10

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x2

    if-ne v2, v5, :cond_6

    .line 90
    if-ne v3, v8, :cond_a

    .line 92
    const-string v10, "Equation"

    const-string v11, "childCustomerCode"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 93
    new-array v10, v7, [Ljava/lang/String;

    const-string v11, "childCustomerCode integer"

    aput-object v11, v10, v6

    .line 94
    .local v10, "newColumn":[Ljava/lang/String;
    const-string v11, "Equation"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v10    # "newColumn":[Ljava/lang/String;
    :cond_3
    const-string v10, "ItemParas"

    const-string v11, "k"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 98
    new-array v10, v13, [Ljava/lang/String;

    const-string v11, "k text"

    aput-object v11, v10, v6

    const-string v11, "b text"

    aput-object v11, v10, v7

    const-string v11, "oriTemplate text"

    aput-object v11, v10, v9

    const-string v11, "oriPrintMode integer"

    aput-object v11, v10, v4

    const-string v11, "tarUnit1 text"

    aput-object v11, v10, v16

    const-string v11, "tarK1 text"

    aput-object v11, v10, v5

    const-string v11, "tarB1 text"

    aput-object v11, v10, v15

    const-string v11, "tarTemplate1 text"

    aput-object v11, v10, v14

    const-string v11, "tarPrintMode1 integer"

    aput-object v11, v10, v8

    const-string v8, "tarUnit2 text"

    aput-object v8, v10, v12

    const-string v8, "tarK2 text"

    const/16 v11, 0xa

    aput-object v8, v10, v11

    const-string v8, "tarB2 text"

    const/16 v11, 0xb

    aput-object v8, v10, v11

    const-string v8, "tarTemplate2 text"

    const/16 v11, 0xc

    aput-object v8, v10, v11

    const-string v8, "tarPrintMode2 integer"

    const/16 v11, 0xd

    aput-object v8, v10, v11

    const/16 v8, 0xe

    const-string v11, "holder1 text"

    aput-object v11, v10, v8

    const/16 v8, 0xf

    const-string v11, "holder2 text"

    aput-object v11, v10, v8

    move-object v8, v10

    .line 101
    .local v8, "newColumn":[Ljava/lang/String;
    const-string v10, "ItemParas"

    invoke-direct {v0, v1, v8, v10}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v8    # "newColumn":[Ljava/lang/String;
    :cond_4
    const-string v8, "TestResult"

    const-string v10, "appId"

    invoke-direct {v0, v1, v8, v10}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "TestResult"

    const-string v10, "uploadStatus"

    invoke-direct {v0, v1, v8, v10}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 105
    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "appId text"

    aput-object v8, v5, v6

    const-string v6, "uploadStatus integer"

    aput-object v6, v5, v7

    const-string v6, "reItem text"

    aput-object v6, v5, v9

    const-string v6, "reResult text"

    aput-object v6, v5, v4

    const-string v4, "holder6 text"

    aput-object v4, v5, v16

    move-object v4, v5

    .line 106
    .restart local v4    # "newColumn":[Ljava/lang/String;
    const-string v5, "TestResult"

    invoke-direct {v0, v1, v4, v5}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v4    # "newColumn":[Ljava/lang/String;
    goto/16 :goto_0

    :cond_5
    const-string v5, "TestResult"

    const-string v8, "reItem"

    invoke-direct {v0, v1, v5, v8}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 108
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "reItem text"

    aput-object v5, v4, v6

    const-string v5, "reResult text"

    aput-object v5, v4, v7

    const-string v5, "holder6 text"

    aput-object v5, v4, v9

    .line 109
    .restart local v4    # "newColumn":[Ljava/lang/String;
    const-string v5, "TestResult"

    invoke-direct {v0, v1, v4, v5}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v4    # "newColumn":[Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    :cond_6
    if-ge v2, v15, :cond_7

    .line 114
    const-string v10, "TestResult"

    const-string v11, "appId"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "TestResult"

    const-string v11, "uploadStatus"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 115
    new-array v10, v9, [Ljava/lang/String;

    const-string v11, "appId text"

    aput-object v11, v10, v6

    const-string v11, "uploadStatus integer"

    aput-object v11, v10, v7

    .line 116
    .restart local v10    # "newColumn":[Ljava/lang/String;
    const-string v11, "TestResult"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v10    # "newColumn":[Ljava/lang/String;
    :cond_7
    if-ge v2, v14, :cond_8

    .line 120
    const-string v10, "Equation"

    const-string v11, "childCustomerCode"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 121
    new-array v10, v7, [Ljava/lang/String;

    const-string v11, "childCustomerCode integer"

    aput-object v11, v10, v6

    .line 122
    .restart local v10    # "newColumn":[Ljava/lang/String;
    const-string v11, "Equation"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v10    # "newColumn":[Ljava/lang/String;
    :cond_8
    if-ge v2, v8, :cond_a

    .line 126
    const-string v10, "ItemParas"

    const-string v11, "k"

    invoke-direct {v0, v1, v10, v11}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 127
    new-array v10, v13, [Ljava/lang/String;

    const-string v11, "k text"

    aput-object v11, v10, v6

    const-string v11, "b text"

    aput-object v11, v10, v7

    const-string v11, "oriTemplate text"

    aput-object v11, v10, v9

    const-string v11, "oriPrintMode integer"

    aput-object v11, v10, v4

    const-string v11, "tarUnit1 text"

    aput-object v11, v10, v16

    const-string v11, "tarK1 text"

    aput-object v11, v10, v5

    const-string v5, "tarB1 text"

    aput-object v5, v10, v15

    const-string v5, "tarTemplate1 text"

    aput-object v5, v10, v14

    const-string v5, "tarPrintMode1 integer"

    aput-object v5, v10, v8

    const-string v5, "tarUnit2 text"

    aput-object v5, v10, v12

    const-string v5, "tarK2 text"

    const/16 v8, 0xa

    aput-object v5, v10, v8

    const-string v5, "tarB2 text"

    const/16 v8, 0xb

    aput-object v5, v10, v8

    const-string v5, "tarTemplate2 text"

    const/16 v8, 0xc

    aput-object v5, v10, v8

    const-string v5, "tarPrintMode2 integer"

    const/16 v8, 0xd

    aput-object v5, v10, v8

    const/16 v5, 0xe

    const-string v8, "holder1 text"

    aput-object v8, v10, v5

    const/16 v5, 0xf

    const-string v8, "holder2 text"

    aput-object v8, v10, v5

    move-object v5, v10

    .line 130
    .local v5, "newColumn":[Ljava/lang/String;
    const-string v8, "ItemParas"

    invoke-direct {v0, v1, v5, v8}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v5    # "newColumn":[Ljava/lang/String;
    :cond_9
    const-string v5, "TestResult"

    const-string v8, "reItem"

    invoke-direct {v0, v1, v5, v8}, Lcom/wen/fluorescence/database/DBHelper;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 134
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "reItem text"

    aput-object v5, v4, v6

    const-string v5, "reResult text"

    aput-object v5, v4, v7

    const-string v5, "holder6 text"

    aput-object v5, v4, v9

    .line 135
    .restart local v4    # "newColumn":[Ljava/lang/String;
    const-string v5, "TestResult"

    invoke-direct {v0, v1, v4, v5}, Lcom/wen/fluorescence/database/DBHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v4    # "newColumn":[Ljava/lang/String;
    :cond_a
    :goto_0
    return-void
.end method
