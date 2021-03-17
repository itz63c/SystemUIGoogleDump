.class public final Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChassisProtos.java"


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;


# instance fields
.field public filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

.field public gain:I

.field public sensitivity:F

.field public source:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    .line 18
    sput-object v1, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    .line 43
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    .line 45
    invoke-static {}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 77
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 79
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 83
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_1
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 86
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    .line 87
    iget v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    .line 88
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 92
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 95
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 112
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 131
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 133
    new-array v4, v0, [Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v3, :cond_3

    .line 136
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 139
    new-instance v1, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    invoke-direct {v1}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;-><init>()V

    aput-object v1, v4, v3

    .line 140
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_4
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;-><init>()V

    aput-object v0, v4, v3

    .line 145
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 146
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    goto :goto_0

    .line 122
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    goto :goto_0

    .line 118
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    goto :goto_0

    :cond_8
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
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

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

    .line 53
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 60
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 61
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->filters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 65
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 67
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
