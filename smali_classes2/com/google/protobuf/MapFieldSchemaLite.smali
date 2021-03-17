.class Lcom/google/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/google/protobuf/MapFieldSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    check-cast p0, Lcom/google/protobuf/MapFieldLite;

    .line 77
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    .line 78
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapFieldLite;->mergeFrom(Lcom/google/protobuf/MapFieldLite;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 50
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    return-object p1
.end method

.method public forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    .line 45
    check-cast p1, Lcom/google/protobuf/MapEntryLite;

    invoke-virtual {p1}, Lcom/google/protobuf/MapEntryLite;->getMetadata()Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    return-object p0
.end method

.method public forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    return-object p1
.end method

.method public isImmutable(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method public newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    return-object p0
.end method

.method public toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    return-object p1
.end method
