.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ElmyraFilters.java"


# instance fields
.field public cutoff:F

.field public rate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    .line 256
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 277
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 278
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 279
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    .line 280
    iget v3, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    .line 281
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 284
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    .line 285
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    .line 286
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 301
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 265
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 266
    iget v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->cutoff:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 269
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 270
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;->rate:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 272
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
