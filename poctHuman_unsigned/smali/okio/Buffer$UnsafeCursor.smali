.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2077
    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2078
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2298
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2302
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2303
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2304
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2305
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2306
    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2307
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2308
    return-void
.end method

.method public final expandBuffer(I)J
    .locals 10
    .param p1, "minByteCount"    # I

    .line 2267
    if-gtz p1, :cond_0

    .line 2268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2270
    :cond_0
    const/16 v0, 0x2000

    if-le p1, v0, :cond_1

    .line 2271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2273
    :cond_1
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v1, :cond_2

    .line 2274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2276
    :cond_2
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v1, :cond_3

    .line 2277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2280
    :cond_3
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->size:J

    .line 2281
    .local v1, "oldSize":J
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v3

    .line 2282
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    rsub-int v4, v4, 0x2000

    .line 2283
    .local v4, "result":I
    iput v0, v3, Lokio/Segment;->limit:I

    .line 2284
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v6, v4

    add-long v8, v1, v6

    iput-wide v8, v5, Lokio/Buffer;->size:J

    .line 2287
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2288
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2289
    iget-object v5, v3, Lokio/Segment;->data:[B

    iput-object v5, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2290
    rsub-int v5, v4, 0x2000

    iput v5, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2291
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2293
    int-to-long v5, v4

    return-wide v5
.end method

.method public final next()I
    .locals 6

    .line 2086
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2087
    :cond_0
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2088
    :cond_1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0
.end method

.method public final resizeBuffer(J)J
    .locals 13
    .param p1, "newSize"    # J

    .line 2186
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 2187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2189
    :cond_0
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-nez v0, :cond_1

    .line 2190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2193
    :cond_1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 2194
    .local v0, "oldSize":J
    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_5

    .line 2195
    cmp-long v2, p1, v3

    if-gez v2, :cond_2

    .line 2196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newSize < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2199
    :cond_2
    sub-long v5, v0, p1

    .line 2199
    .local v5, "bytesToSubtract":J
    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_4

    .line 2200
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 2201
    .local v2, "tail":Lokio/Segment;
    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    .line 2202
    .local v7, "tailSize":I
    int-to-long v8, v7

    cmp-long v10, v8, v5

    if-gtz v10, :cond_3

    .line 2203
    iget-object v8, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 2204
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 2205
    int-to-long v8, v7

    sub-long v10, v5, v8

    .line 2210
    .end local v2    # "tail":Lokio/Segment;
    .end local v5    # "bytesToSubtract":J
    .end local v7    # "tailSize":I
    .local v10, "bytesToSubtract":J
    nop

    .line 2199
    move-wide v5, v10

    goto :goto_0

    .line 2207
    .end local v10    # "bytesToSubtract":J
    .restart local v2    # "tail":Lokio/Segment;
    .restart local v5    # "bytesToSubtract":J
    .restart local v7    # "tailSize":I
    :cond_3
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v3, v3

    sub-long v8, v3, v5

    long-to-int v3, v8

    iput v3, v2, Lokio/Segment;->limit:I

    .line 2208
    nop

    .line 2212
    .end local v2    # "tail":Lokio/Segment;
    .end local v5    # "bytesToSubtract":J
    .end local v7    # "tailSize":I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2213
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2214
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2215
    const/4 v2, -0x1

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2216
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_2

    .line 2217
    :cond_5
    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    .line 2219
    const/4 v2, 0x1

    .line 2220
    .local v2, "needsToSeek":Z
    sub-long v5, p1, v0

    .line 2220
    .local v5, "bytesToAdd":J
    :goto_1
    cmp-long v7, v5, v3

    if-lez v7, :cond_7

    .line 2221
    iget-object v7, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v7

    .line 2222
    .local v7, "tail":Lokio/Segment;
    iget v8, v7, Lokio/Segment;->limit:I

    rsub-int v8, v8, 0x2000

    int-to-long v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 2223
    .local v8, "segmentBytesToAdd":I
    iget v9, v7, Lokio/Segment;->limit:I

    add-int/2addr v9, v8

    iput v9, v7, Lokio/Segment;->limit:I

    .line 2224
    int-to-long v9, v8

    sub-long v11, v5, v9

    .line 2227
    .end local v5    # "bytesToAdd":J
    .local v11, "bytesToAdd":J
    if-eqz v2, :cond_6

    .line 2228
    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2229
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2230
    iget-object v5, v7, Lokio/Segment;->data:[B

    iput-object v5, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2231
    iget v5, v7, Lokio/Segment;->limit:I

    sub-int/2addr v5, v8

    iput v5, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2232
    iget v5, v7, Lokio/Segment;->limit:I

    iput v5, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2233
    const/4 v2, 0x0

    .line 2235
    .end local v7    # "tail":Lokio/Segment;
    .end local v8    # "segmentBytesToAdd":I
    :cond_6
    nop

    .line 2220
    move-wide v5, v11

    goto :goto_1

    .line 2238
    .end local v2    # "needsToSeek":Z
    .end local v11    # "bytesToAdd":J
    :cond_7
    :goto_2
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v2, Lokio/Buffer;->size:J

    .line 2240
    return-wide v0
.end method

.method public final seek(J)I
    .locals 13
    .param p1, "offset"    # J

    .line 2097
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    goto/16 :goto_4

    .line 2102
    :cond_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_8

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 2112
    :cond_1
    const-wide/16 v0, 0x0

    .line 2113
    .local v0, "min":J
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    .line 2114
    .local v2, "max":J
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    .local v4, "head":Lokio/Segment;
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    .line 2116
    .local v5, "tail":Lokio/Segment;
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v6, :cond_3

    .line 2117
    iget-wide v6, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget-object v9, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long v10, v6, v8

    .line 2118
    .local v10, "segmentOffset":J
    cmp-long v6, v10, p1

    if-lez v6, :cond_2

    .line 2120
    move-wide v2, v10

    .line 2121
    iget-object v5, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_0

    .line 2124
    :cond_2
    move-wide v0, v10

    .line 2125
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2131
    .end local v10    # "segmentOffset":J
    :cond_3
    :goto_0
    sub-long v6, v2, p1

    sub-long v8, p1, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 2133
    move-object v6, v4

    .line 2134
    .local v6, "next":Lokio/Segment;
    move-object v8, v6

    move-wide v6, v0

    .line 2135
    .local v6, "nextOffset":J
    .local v8, "next":Lokio/Segment;
    :goto_1
    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long v11, v6, v9

    cmp-long v9, p1, v11

    if-ltz v9, :cond_5

    .line 2136
    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long v11, v6, v9

    .line 2137
    .end local v6    # "nextOffset":J
    .local v11, "nextOffset":J
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 2134
    move-wide v6, v11

    goto :goto_1

    .line 2141
    .end local v8    # "next":Lokio/Segment;
    .end local v11    # "nextOffset":J
    :cond_4
    move-object v6, v5

    .line 2142
    .local v6, "next":Lokio/Segment;
    move-object v8, v6

    move-wide v6, v2

    .line 2143
    .local v6, "nextOffset":J
    .restart local v8    # "next":Lokio/Segment;
    :goto_2
    cmp-long v9, v6, p1

    if-lez v9, :cond_5

    .line 2144
    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 2145
    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v11, v6, v9

    .line 2142
    .end local v6    # "nextOffset":J
    .restart local v11    # "nextOffset":J
    move-wide v6, v11

    goto :goto_2

    .line 2150
    .end local v11    # "nextOffset":J
    .restart local v6    # "nextOffset":J
    :cond_5
    iget-boolean v9, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v9, :cond_7

    iget-boolean v9, v8, Lokio/Segment;->shared:Z

    if-eqz v9, :cond_7

    .line 2151
    invoke-virtual {v8}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v9

    .line 2152
    .local v9, "unsharedNext":Lokio/Segment;
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v10, v8, :cond_6

    .line 2153
    iget-object v10, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v9, v10, Lokio/Buffer;->head:Lokio/Segment;

    .line 2155
    :cond_6
    invoke-virtual {v8, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v8

    .line 2156
    iget-object v10, v8, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2160
    .end local v9    # "unsharedNext":Lokio/Segment;
    :cond_7
    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2161
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2162
    iget-object v9, v8, Lokio/Segment;->data:[B

    iput-object v9, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2163
    iget v9, v8, Lokio/Segment;->pos:I

    sub-long v10, p1, v6

    long-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2164
    iget v9, v8, Lokio/Segment;->limit:I

    iput v9, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2165
    iget v9, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v10, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v9, v10

    return v9

    .line 2103
    .end local v0    # "min":J
    .end local v2    # "max":J
    .end local v4    # "head":Lokio/Segment;
    .end local v5    # "tail":Lokio/Segment;
    .end local v6    # "nextOffset":J
    .end local v8    # "next":Lokio/Segment;
    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2104
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2105
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2106
    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2107
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2108
    return v0

    .line 2098
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset=%s > size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2099
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v4, v4, Lokio/Buffer;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
