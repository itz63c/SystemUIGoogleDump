.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ElmyraFilters.java"


# instance fields
.field public coefficients:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 52
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 53
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 55
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 70
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 77
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 79
    new-array v4, v0, [F

    if-eqz v3, :cond_3

    .line 81
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 89
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 95
    div-int/lit8 v0, v0, 0x4

    .line 96
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    if-nez v3, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 97
    new-array v5, v0, [F

    if-eqz v4, :cond_7

    .line 99
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v4, v0, :cond_8

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 104
    :cond_8
    iput-object v5, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    .line 105
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;

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

    .line 41
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;->coefficients:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 43
    aget v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
